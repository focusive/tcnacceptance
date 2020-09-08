Feature: Check-in then Check-out

    Scenario: Check-in To KhaoYai
        Given Open ThaiChana App At KhaoYai
        When Press Check-in Button
        Then Show เช็คอินแล้ว

    Scenario: Check-out
        Then Press Check-out Button