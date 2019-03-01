var nightwatchCucumberConf = {
    runner: 'nightwatch',
    featureFiles: 'features',
    stepDefinitions: 'step_definitions',
    closeSession: 'afterFeature'
}
module.exports = require('nightwatch-cucumber')({
  cucumberArgs: [
    '--require', 'tests/step-definitions',
       'tests/features',
  ]
});
module.exports = {
  "src_folders": [
  "tests"



  ],
  "output_folder": "reports",
  "custom_commands_path": "",
  "custom_assertions_path": "",
  "page_objects_path": "tests",


  "selenium": {
  "start_process": true,
  "server_path": "bin/selenium-server-standalone-3.141.59.jar",
  "log_path": "",
  "port": 4444,
  "cli_args": {
  "webdriver.chrome.driver": "bin/chromedriver.exe"
  }
},

  "test_settings": {
  "default": {
  "launch_url": "https://accordo-it.github.io/carpark/",
  "selenium_port": 4444,
  "selenium_host": "localhost",
  "silent": true,
  "screenshots": {
  "enabled": true,
  "path": "screenshots"
  },
  "desiredCapabilities": {
  "browserName": "chrome",
  "marionette": true,
  "javascriptEnabled": true,
  "acceptSslCerts": true,
  "chromeOptions": {
      "args": [
      "start-fullscreen"
      ]
    }
  }
  }
}
};