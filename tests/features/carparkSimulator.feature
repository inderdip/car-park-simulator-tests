    Feature:

    Background:
        Given user navigates to carpark simulation application
        When bus is at at X-Position 'X' Y-Position 'Y' facing 'F'

    Scenario Outline: Report on location
        And location is reported
        Then this alert 'Message' is reported
        Examples:
        |X |Y  |Facing |Message|
        |0 |0  |North  |The bus is currently parked at X: 0 and Y: 0, facing north |
        |3 |3  |East   |The bus is currently parked at X: 3 and Y: 3, facing east  |
        |2 |4  |South  |The bus is currently parked at X: 2 and Y: 4, facing south |
        |4 |4  |West   |The bus is currently parked at X: 4 and Y: 4, facing west  |

    Scenario Outline: Move action
        And bus is moved
        And location is reported
        Then this alert 'Message' is reported
        Examples:
        |X |Y  |Facing |Message|
        |0 |0  |South  |You can’t go further south! Please stay in the carpark.    |
        |0 |4  |West   |You can’t go further west! Please stay in the carpark.     |
        |0 |4  |East   |The bus is currently parked at X: 1 and Y: 4, facing east  |
        |3 |4  |South  |The bus is currently parked at X: 3 and Y: 3, facing south  |

    Scenario Outline: Right action
        And bus is turned right
        And location is reported
        Then this alert 'Message' is reported
        Examples:
        |X |Y  |Facing |Message|
        |2 |2  |North  |The bus is currently parked at X: 2 and Y: 2, facing east   |
        |2 |2  |South  |The bus is currently parked at X: 2 and Y: 2, facing west   |
        |2 |2  |East   |The bus is currently parked at X: 2 and Y: 2, facing south  |
        |2 |2  |West   |The bus is currently parked at X: 2 and Y: 2, facing north  |

    Scenario Outline: Left action
        And bus is turned left
        And location is reported
        Then this alert 'Message' is reported
        Examples:
        |X |Y  |Facing |Message|
        |2 |3  |North  |The bus is currently parked at X: 2 and Y: 3, facing west   |
        |2 |3  |South  |The bus is currently parked at X: 2 and Y: 3, facing east   |
        |2 |3  |East   |The bus is currently parked at X: 2 and Y: 2, facing north  |
        |2 |3  |West   |The bus is currently parked at X: 2 and Y: 2, facing south  |

    Scenario Outline: Move and Left action
        And bus is moved
        And bus is turned left
        And location is reported
        Then this alert 'Message' is reported
        Examples:
        |X |Y  |Facing |Message|
        |3 |1  |North  |The bus is currently parked at X: 2 and Y: 2, facing west   |
        |3 |1  |South  |The bus is currently parked at X: 4 and Y: 0, facing east   |
        |3 |1  |East   |The bus is currently parked at X: 4 and Y: 1, facing north  |
        |3 |1  |West   |The bus is currently parked at X: 2 and Y: 1, facing south  |

    Scenario Outline: Move and Right action
        And bus is moved
        And bus is turned right
        And location is reported
        Then this alert 'Message' is reported
        Examples:
        |X |Y  |Facing |Message|
        |1 |2  |North  |The bus is currently parked at X: 1 and Y: 3, facing east  |
        |1 |2  |East   |The bus is currently parked at X: 2 and Y: 2, facing south |
        |1 |2  |West   |The bus is currently parked at X: 0 and Y: 2, facing north |
        |1 |2  |South  |The bus is currently parked at X: 1 and Y: 1, facing west  |

    Scenario Outline: Right and Left action
        And bus is turned right
        And bus is turned left
        And location is reported
        Then this alert 'Message' is reported
        Examples:
        |X |Y  |Facing |Message|
        |2 |3  |North  |The bus is currently parked at X: 2 and Y: 3, facing north  |
        |2 |3  |South  |The bus is currently parked at X: 2 and Y: 3, facing south  |
        |2 |3  |East   |The bus is currently parked at X: 2 and Y: 3, facing east   |
        |2 |3  |West   |The bus is currently parked at X: 2 and Y: 3, facing west   |

    Scenario Outline: Left and Right action
        And bus is turned left
        And bus is turned right
        And location is reported
        Then this alert 'Message' is reported
        Examples:
        |X |Y  |Facing |Message|
        |4 |4  |North  |The bus is currently parked at X: 4 and Y: 4, facing north  |
        |4 |4  |South  |The bus is currently parked at X: 4 and Y: 4, facing south  |
        |4 |4  |East   |The bus is currently parked at X: 4 and Y: 4, facing east   |
        |4 |4  |West   |The bus is currently parked at X: 4 and Y: 4, facing west   |

    Scenario Outline: Move, Left and Right action
        And bus is moved
        And bus is turned left
        And bus is turned right
        And location is reported
        Then this alert 'Message' is reported
        Examples:
        |X |Y  |Facing |Message|
        |4 |2  |North  |The bus is currently parked at X: 4 and Y: 3, facing north  |
        |4 |2  |South  |The bus is currently parked at X: 4 and Y: 1, facing south  |
        |4 |2  |East   |You can’t go further east! Please stay in the carpark.      |
        |4 |2  |West   |The bus is currently parked at X: 3 and Y: 2, facing west   |

    Scenario Outline: Move, Right, Move and Left action
        And bus is moved
        And bus is turned right
        And bus is moved
        And bus is turned left
        And location is reported
        Then this alert 'Message' is reported
        Examples:
        |X |Y  |Facing |Message|
        |0 |0  |North  |The bus is currently parked at X: 1 and Y: 1, facing north  |
        |0 |0  |South  |You can’t go further south! Please stay in the carpark.     |
        |0 |0  |East   |You can’t go further east! Please stay in the carpark.      |
        |0 |0  |West   |The bus is currently parked at X: 3 and Y: 2, facing west   |

    Scenario Outline: Move, Right, Move and Left action
        And bus is moved
        And bus is turned right
        And bus is moved
        And bus is moved
        And bus is turned left
        And location is reported
        Then this alert 'Message' is reported
        Examples:
        |X |Y  |Facing |Message|
        |2 |1  |North  |The bus is currently parked at X: 4 and Y: 2, facing north  |
        |3 |4  |South  |The bus is currently parked at X: 1 and Y: 3, facing south  |
        |0 |0  |East   |You can’t go further east! Please stay in the carpark.      |
