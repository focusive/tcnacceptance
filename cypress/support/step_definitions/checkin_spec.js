import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

Given("Open ThaiChana App At KhaoYai", () => {
    cy.visit("https://thaichana.azurewebsites.net/")
});

When('Press Check-in Button', keyword => {
    // cy.get('button[id="checkin"]').invoke('click')
    cy.wait(1000).contains("เช็คอินร้าน").click({ force: true })
    cy.contains("โปรดระบุเบอร์โทรศัพท์")
    cy.get('input').type('0812345678')
    cy.contains("ยืนยัน").click({ force: true })
    cy.contains("กำลังดำเนินการ")
})

Then('Show เช็คอินแล้ว', expected => {
    cy.contains("เช็คเอาท์")
});

Then('Press Check-out Button', expected => {
    cy.contains("เช็คเอาท์").click({ force: true }).end()
});