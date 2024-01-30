import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor'

Given('As a user in google home page', () => {
  cy.visit('https://www.google.com')
})

When('I search {string}', (searchText: string) => {
  cy.get('[name=q]').type(`${searchText}{enter}`)
})

Then('I should see search results', () => {
  cy.url().should('include', '/search')
})
