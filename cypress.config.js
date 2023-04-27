const { defineConfig } = require("cypress");
const allureWriter = require('@shelex/cypress-allure-plugin/writer');
// import allureWriter from "@shelex/cypress-allure-plugin/writer";
module.exports = defineConfig({
  
"reporterOptions": {
"charts": true,
"overwrite": false,
"html": false,
"json": true,
//"reportDir": "cypress/report/mochawesome-report"
 },
  e2e: {
    setupNodeEvents(on, config) {
      // implement node event listeners here
      
     
      allureWriter(on, config);
      return config;
    },
  },

});
