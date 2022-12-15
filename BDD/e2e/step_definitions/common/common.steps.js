import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Given("I am on {string}", (page) => {
  expect(true).to.be.true;
});

When("I view the page from {string}", async (device) => {
  // const switchDevice = require("@rakesh/lib")[device];
  // switchDevice();
});

When("I visit url {string}", (url) => {
  cy.visit(url);
});

Then(
  "I click on {string} th element of {string} of {string}",
  (nthElement, selectorId, selectorValue) => {
    cy.get(`[${selectorId}=${selectorValue}]`).eq(nthElement).click();
  }
);

And("I type {string} on {string}", (typedValue, selectorId) => {
  cy.get(`[name=${selectorId}]`).type(typedValue);
});
