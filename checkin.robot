*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    String

*** Variable ***
${url_thaichana}        https://thaichanabe.azurewebsites.net

*** Test Cases ***
Scenario: Check-in To KhaoYai
    Given Open ThaiChana App At KhaoYai
    When Press Check-in Button
    Then Show KhaoYai In The List

Scenario: Check-out From KhaoYai
    Given Show KhaoYai In The List
    When Press Check-out Button
    Then Remove KhaoYai Out Of The List

*** Keywords ***
Open ThaiChana App At KhaoYai
    Open Browser    about:blank    chrome
    Go To           ${url_thaichana}
    
Press Check-in Button
    Click Element        ${btn}

Then Show KhaoYai In The List

Press Check-out Button

Remove KhaoYai Out Of The List

