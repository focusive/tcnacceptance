Feature: Check-in

    Scenario: Check-in To KhaoYai
        Given Open ThaiChana App At KhaoYai
        When Press Check-in Button
        Then Show KhaoYai In The List
