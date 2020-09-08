*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    String
Suite Setup    Open Browser    about:blank    chrome
Suite Teardown    Close Browser

*** Variable ***
${url_thaichana}        https://thaichana.azurewebsites.net/

*** Test Cases ***
Scenario: Check-in To KhaoYai
    Given Open ThaiChana App At KhaoYai
    When Press Check-in Button
    Then Show เช็คอินแล้ว

Scenario: Check-out
    Then Press Check-out Button

*** Keywords ***
Open ThaiChana App At KhaoYai
    Go To           ${url_thaichana}
    Sleep    1s
    
Press Check-in Button
    Click Button        checkin
    Wait Until Page Contains    โปรดระบุเบอร์โทรศัพท์
    Input Text    tel    0812345678
    Click Button        confirm
    Wait Until Page Contains    กำลังดำเนินการ

Then Show เช็คอินแล้ว
    Wait Until Page Contains    เข็คอินแล้ว
    Wait Until Page Contains    เช็คเอาท์

Press Check-out Button
    Click Button        checkout
    Page Should Contain    เช็คเอาท์แล้ว

