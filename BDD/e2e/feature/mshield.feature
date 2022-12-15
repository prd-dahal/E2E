 Feature: Mshield Test

  Testing BDD
  Scenario: Visit Mshield 
    When I visit url "https://onboard.mshield-dev.taksure.xyz/en/life-insurance/form"
    Then I click on "1" th element of "data-testid" of "packageCard"  
    And I type "Pradeep" on "fullName"  
    