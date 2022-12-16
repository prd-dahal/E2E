import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";
import { splitDateIntoDayMonthYear } from "../../step_definitions/utils/index.js";

When("I visit url {string}", (url) => {
  cy.visit(url);
});

Then(
  "click on TAG {string} that contains TEXT {string}",
  (TAG, HTMLCONTENT) => {
    cy.get(`${TAG}`).contains(`${HTMLCONTENT}`).click();
  }
);

Then(
  "select TEXT {string} of SELECTORNAME {string} and SELECTORVALUE {string}",
  (TEXT, SELECTORNAME, SELECTORVALUE) => {
    cy.get(`[${SELECTORNAME}=${SELECTORVALUE}]`).select(TEXT);
  }
);

Then(
  "click on TAG {string} SELECTORNAME {string} SELECTORVALUE {string}",
  (TAG, SELECTORNAME, SELECTORVALUE) => {
    cy.get(`${TAG}[${SELECTORNAME}=${SELECTORVALUE}]`).click();
  }
);

Then(
  "click on SELECTORNAME {string} SELECTORVALUE {string}",
  (SELECTORNAME, SELECTORVALUE) => {
    cy.get(`[${SELECTORNAME}="${SELECTORVALUE}"]`).click({ force: true });
  }
);

Then(
  "type TEXT {string} on SELECTORNAME {string} SELECTORVALUE {string}",
  (TEXT, SELECTORNAME, SELECTORVALUE) => {
    cy.get(`[${SELECTORNAME}="${SELECTORVALUE}"]`).type(TEXT);
  }
);

Then("select date {string} on SELECTORNAME {string}", (date, selector) => {
  const splittedDate = splitDateIntoDayMonthYear(date);
  cy.fillDate(splittedDate, selector);
});

Given("FillOTP PHONE_NUMBER {string}", (PHONE_NUMBER) => {
  cy.request("POST", `${Cypress.env("CYPRESS_DASHBOARD_URL")}user/auth`, {
    username: Cypress.env("CYPRESS_DASHBOARD_USERNAME"),
    password: Cypress.env("CYPRESS_DASHBOARD_PASSWORD"),
  }).then((adminAuthResponse) => {
    cy.request({
      method: "GET",
      url: `${Cypress.env(
        "CYPRESS_DASHBOARD_URL"
      )}test/log/?phone_number=${PHONE_NUMBER}&type=otp&limit=1`, // baseUrl is prepend to URL
      headers: {
        Authorization: `Bearer ${adminAuthResponse?.body?.access}`,
      },
    }).then((response) => {
      // response.body is automatically serialized into JSON
      expect(response.status).is.equal(200); // true
      cy.wait(2000);
      const messageArray = response?.body[0].message.split(" ");
      const otp = messageArray[messageArray.length - 1];
      cy.fillOtp(otp);
    });
  });
});
