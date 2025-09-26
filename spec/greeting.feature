Feature: Greeting

    Feature Description
    We start with the user opening a work session and seeing a greeting.

    So that I can start creating requirements
    And so that I can know the agent is ready to work with me
    When I interact with the agent in any way for the first time in a while
    I want there to be some response from the agent.

@1
    Scenario: Generic Greeting
    Given the agent and a person are prepared to interact
    When the person first interacts with the agent
    Then the agent says "Hello! Let's spec!".

@deferred
    Scenario: Work Continuation Greeting
    Given the person has previously interacted with the agent
    And the agent is aware of substantive output from that interaction
    When the person first interacts with the agent
    Then the agent asks if they want to start new or continue the previous work.