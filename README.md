# Cypress with Gherkin

## installation

~~~sh
npm init
npm install cypress --save-dev
npm install cucumber --save-dev
npm install cypress-cucumber-preprocessor --save-dev
npm install selenium-webdriver --save 
~~~

## configuration

edit plugins/index.js

~~~js
const cucumber = require('cypress-cucumber-preprocessor').default
module.exports = (on, config) => {
  on('file:preprocessor', cucumber())
}
~~~

## implementations

new a feature file in integration directory such as
> integration/checkin.feature

write Gherkin syntax for spec

new a spec file in support/step_definitions such as
> support/step_definitions/checkin_spec.js

## run

> cypress open
