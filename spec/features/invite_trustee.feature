Feature: An admin can invite new trustees, and they can accept and become users

  Scenario: Admin invites a new trustee
    Given I am logged in as an admin
    When I invite a new trustee to the "Boston" chapter
    Then that person should get an invitation email
    When they accept the invitation
    Then they should get another email welcoming them
    And the trustee can log in