module.exports = {
  url: 'https://accordo-it.github.io/carpark/',
    elements: {

     xPosition: {
       //selector: '//select[@name="positionX"]',
       //locateStrategy: 'xpath'
      selector: '#positionX'
     },
      yPosition: {
            //selector: '//select[@name="positionY"]',
           // locateStrategy: 'xpath'
       selector: '#positionY'
      },
      face: {
             //selector: '//select[@name="face"]',
             //locateStrategy: 'xpath'
       selector: '#face'
      },
      place: {
       selector: '.btn-block'
      },
      moveBtn: {
       selector: '#move'
      },
      leftBtn: {
       selector: '#rotate-left'
      },
      rightBtn: {
       selector: '#rotate-right'
      },
      reportBtn: {
       selector: '#report'
      },
      alertMsg:  {
        selector: '.alert-success'
      }

   }
 };

