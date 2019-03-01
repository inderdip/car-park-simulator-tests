const {client} = require('nightwatch-cucumber');
const {Given, Then, When} = require('cucumber');

 module.exports = function() {
    Given('user navigates to carpark simulation application', function (){
        const simulationPage = client.page.page_objects()
        return simulationPage.navigate()
    });

    When('bus is at X-Position "([^"]*)" Y-Position "([^"]*)" facing "([^"]*)"', function(x,y,f) {
        const simulationPage = client.page.page_objects()
        return simulationPage
        .setValue(simulationPage.xPosition,x)
        .setValue(simulationPage.yPosition,y)
        .setValue(simulationPage.f)
        .click(simulationPage.place)
    });

    When('location is reported', function () {
        const simulationPage = client.page.page_objects()
        return simulationPage
        .click(simulationPage.report)
    });

    When('bus is moved', function () {
        const simulationPage = client.page.page_objects()
        return simulationPage
        .click(simulationPage.reportBtn)
    });

    When('bus is turned right', function () {
        const simulationPage = client.page.page_objects()
        return simulationPage
        .click(simulationPage.rightBtn)
    });

    When('bus is turned left', function () {
        const simulationPage = client.page.page_objects()
        return simulationPage
        .click(simulationPage.leftBtn)
    });

    Then('this alert "([^"]*)" is reported', function(alert) {
        const simulationPage = client.page.page_objects()
        return simulationPage
        assert.containsText(simulationPage.alertMsg, alert)
    });

 }