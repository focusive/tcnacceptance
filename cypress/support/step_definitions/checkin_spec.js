import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

Given("Open ThaiChana App At KhaoYai", () => {
    cy.visit("https://thaichana.azurewebsites.net/")
});

When('Press Check-in Button', keyword => {
    cy.get('.btn').click()
})

Then('Show KhaoYai In The List', expected => {
    cy.contains("KhaoYai")
});