 Feature:

 Scenario Outline: Place report
 	 Given user navigates to carpark simulation application
	 When user places the car at X-Position 'X' Y-Position 'Y' Facing 'F'
	 #And user enters Y-Position 'Y'
	 #And user enters Facing 'F'
	 #And user clicks Place
	 #And user clicks "Move"
	 And user clicks Report
	 Then user should see the alert 'Message'
	 Examples:
	 |X |Y  |Facing |Message|
	 |0 |0  |North  |The bus is currently parked at X: 0 and Y: 0, facing north |
	 #|3 |3  |East   |The bus is currently parked at X: 3 and Y: 3, facing east  |
	 #|2 |4  |South  |The bus is currently parked at X: 2 and Y: 4, facing south |
	 #|4 |4  |West   |The bus is currently parked at X: 4 and Y: 4, facing west  |


