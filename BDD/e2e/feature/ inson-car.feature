 Feature: Mshield Test

  Testing BDD
  Scenario: Inson Car Normal Flow
    When I visit url "https://onboard.v2.taksure.xyz/en-GB/car-insurance/form"
    Then click on TAG "button" that contains TEXT "Skip to standard quote"
    Then select TEXT "HAVAL" of SELECTORNAME "name" and SELECTORVALUE "make"
    Then select TEXT "H2" of SELECTORNAME "name" and SELECTORVALUE "model"
    Then select TEXT "2022" of SELECTORNAME "name" and SELECTORVALUE "modelYear"
    Then click on TAG "p" that contains TEXT "Standard"
    Then select date "18 Feb 2023" on SELECTORNAME "insuranceStartDate"
    Then click on TAG "span" that contains TEXT "I agree with the "
    Then click on TAG "button" SELECTORNAME "data-testid" SELECTORVALUE "nextBtn"
    Then click on SELECTORNAME "data-testid" SELECTORVALUE "+998"
    Then click on SELECTORNAME "data-testid" SELECTORVALUE "+977"
    Then type TEXT "9849354809" on SELECTORNAME "name" SELECTORVALUE "phoneNumber"
    Then click on TAG "button" SELECTORNAME "data-testid" SELECTORVALUE "nextBtn"
    Then FillOTP PHONE_NUMBER "+9779849354809"
    Then Upload IMAGE "front_id.jpg" on SELECTORNAME "name" SELECTORVALUE "carRegistrationFront"
    Then Upload IMAGE "back_id.jpg" on SELECTORNAME "name" SELECTORVALUE "carRegistrationBack"
    Then Upload IMAGE "passport.jpg" on SELECTORNAME "name" SELECTORVALUE "passportFront"