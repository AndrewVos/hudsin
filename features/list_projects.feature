Feature: List Projects
  In order to find out what projects I have
  As a developer
  I want to see a list of projects

  Scenario: List projects
    Given I have projects named project1, project2, and project3
    When I run hudsin with the parameters "--server", "http://hudson-server.com/hudson", "list"
    Then the output should contain "project1"
    And the output should contain "project2"
    And the output should contain "project3"
