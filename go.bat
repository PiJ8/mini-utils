@ECHO OFF
IF [%1] NEQ [] (GOTO %1) ELSE (GOTO help)

:help
ECHO go ^[^<location^>^|list^]
ECHO.
ECHO 	^<location^>	location that you wanted to travel
ECHO 	list		list of available location
GOTO End

:docs
cd "C:\Users\Documentation"
cls
GOTO End

:command
cd "C:\"
dir
GOTO End

:robot
cd "C:\Users\Robotframework"
cls
GOTO End

:py
cd "C:\Users\Python Home"
cls
GOTO End

:java
cd "C:\Users\java-test-repo"
cls
GOTO End

:secret
cd "C:\Users\Secret"
cls
GOTO End

:journey 
cd "C:\Users\journey-test"
cls
GOTO End

:github
cd "C:\Users\commercial-github"
cls
GOTO End

:list
ECHO robot      robotframework project
ECHO command    list directory and files under C drive
ECHO docs       documentation 
ECHO py         python repository
ECHO java	    java test repository
ECHO journey    Journey test repository
ECHO github	   Commercial GitHub repository 
GOTO End

:End