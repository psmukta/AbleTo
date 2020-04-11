Feature: Employees biweekly salary preview
  
  As an admin user I want to input my employee data so that I can get preview of their pay

  Scenario: Add Employee no Deduction
    Given I am an Admin
    And I am on the Admin Dashboard page
    When I select Add New Employee
    Then I should be able to enter employee details
    And First Name does not begin with “A” or “a”
    And the employee should save
    And I should see the employee in the table
    And the Program Bonus amount is correct
    And the Total Biweekly Pay calculation is correct

  Scenario: Add Employee with Deduction
    Given I am an Admin
    And I am on the Admin Dashboard page
    When I selec t Add New Employee
    Then I should be able to enter employee details
    And First Name begins with “A” or “a”
    And the employee should save
    And I should see the employee in the table with A
    And the Program Bonus amount is correct
    And the employee has a 10% bonus reduction
    And the Total Biweekly Pay calculation is correct

  Scenario: Edit Employee
    Given I am an Admin
    And I am on the Admin Dashboard page
    When I select the Action Edit
    Then I can edit employee details
    And the data should change in the table

  Scenario: Delete Employee
    Given I am an Admin
    And I am on the Admin Dashboard page
    When I click the Action X
    Then the employee should be deleted
