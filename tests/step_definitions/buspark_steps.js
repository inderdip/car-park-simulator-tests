const {client} = require('nightwatch-cucumber');
//const {defineSupportCode} = require('cucumber');
const {Given, Then, When} = require('cucumber');

 module.exports = function() {
      //Given('user navigates to carpark simulation application', function () {
      //Given(/^user navigates to carpark simulation application$/, () =>{
       Given('user navigates to carpark simulation application', function (){
            const simulationPage = client.page.page_objects()
            return simulationPage
            .navigate()
            .waitForElementVisible('body', 1000)

      });
      When('user places the car at X-Position "([^"]*)" Y-Position "([^"]*)" Facing "([^"]*)"', function(x,y,f) {
               	 const simulationPage = client.page.page_objects()
                 return simulationPage
                 .setValue(simulationPage.xPosition,x)
                 .setValue(simulationPage.yPosition,y)
                 .setValue(simulationPage.)
                 .click(simulationPage.place)
      });

            When('user clicks Report', function () {
                 const simulationPage = client.page.page_objects()
                 return simulationPage
                 .click(simulationPage.report)
            });
            Then('user should see the alert "([^"]*)"', function(alert) {
                  const simulationPage = client.page.page_objects()
                  return simulationPage
                  assert.containsText(simulationPage.alertMsg, alert)
            });

 }