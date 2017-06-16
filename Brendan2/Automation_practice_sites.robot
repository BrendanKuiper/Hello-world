*** Settings ***
Library           Selenium2Library
Library           BuiltIn
Library           String

*** Variables ***
${home}           https://bdonline.sqe.com/
&{home}           open browser    https://bdonline.sqe.com/    gc

*** Test Cases ***
Log in
    &{Home}
