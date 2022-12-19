 Feature: Mshield Test

  Testing BDD
  Scenario: Inson Travel Normal Flow
  
    When I visit url "https://onboard.v2.taksure.xyz/en-GB/travel-insurance/form"
    
    Then select TEXT "Afghanistan" of SELECTORNAME "name" and SELECTORVALUE "destinationCountry"
    Then click on TAG "span" that contains TEXT "Single Trip"
    Then select date "18 Feb 2023" on SELECTORNAME "insuranceStartDate"
    Then select date "18 Mar 2023" on SELECTORNAME "insuranceEndDate"
    Then click on TAG "span" that contains TEXT "Tourism"
    Then click on TAG "button" SELECTORNAME "data-testid" SELECTORVALUE "nextBtn"
    
    Then select date "18 Feb 1998" on SELECTORNAME "travellersBirthDate"
    Then click on TAG "button" SELECTORNAME "data-testid" SELECTORVALUE "nextBtn"

    Then click on SELECTORNAME "for" SELECTORVALUE "platinum"
    Then click on TAG "button" SELECTORNAME "type" SELECTORVALUE "submit"

    Then click on SELECTORNAME "data-testid" SELECTORVALUE "+998"
    Then click on SELECTORNAME "data-testid" SELECTORVALUE "+977"
    Then type TEXT "9849354809" on SELECTORNAME "name" SELECTORVALUE "phoneNumber"
    Then click on TAG "button" SELECTORNAME "data-testid" SELECTORVALUE "nextBtn"
    Then FillOTP PHONE_NUMBER "+9779849354809"

    Then Upload IMAGE "passport.jpg" on SELECTORNAME "name" SELECTORVALUE "passportFront"
    Then click on TAG "button" SELECTORNAME "data-testid" SELECTORVALUE "nextBtn"

    Then click on TAG "p" that contains TEXT "Confirm"

    Then click on TAG "label" that contains TEXT "Yes, I have read and agree to the"
    Then click on TAG "p" that contains TEXT "Confirm"

    Then type TEXT "pradeep.dahal@hazesoft.co" on SELECTORNAME "name" SELECTORVALUE "email"
    Then click on TAG "p" that contains TEXT "Confirm"

   