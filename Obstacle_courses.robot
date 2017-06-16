*** Settings ***
Library           Selenium2Library
Library           String
Library           DateTime
Library           XML

*** Test Cases ***
Test
    Open Browser    http://obstaclecourse.tricentis.com/Obstacles/Next?oId=33678&retry=1    firefox
    Click Button    //p[@class='text-center']/button[@id='one']
    Wait Until Element Is Enabled    //p[@class='text-center']/button[@id='two']    25
    Click Button    //p[@class='text-center']/button[@id='two']

60469
    Open Browser    http://obstaclecourse.tricentis.com/Obstacles/Next?oId=60469&retry=1    gc
    Drag And Drop    id=toscabot    xpath=//div[@class='panel panel-primary']/div[@id='to']

51130
    Open Browser    http://obstaclecourse.tricentis.com/Obstacles/Next?oId=51130&retry=1    gc
    Click Element    id=button
    Select Window    url= https://twitter.com/Tricentis
    Close Window

41038
    Open Browser    http://obstaclecourse.tricentis.com/Obstacles/Next?oId=41038&retry=1    gc
    Click Element At Coordinates    id=halfButton    5    0

Log in
    Open Browser    https://www.linkedin.com/    gc
    Input Text    xpath=//form[@class='login-form ']/input[@id='login-email']
    Input Password    xpath=//form[@class='login-form ']/input[@id='login-password']
    Click Button    xpath=//form[@class='login-form ']/input[@id='login-submit']

in between
    ${links}=    Get all links
    Location Should Contain    feed
    ${value}=    Get text    //div[@class='feed-s-identity-module__actor-meta profile-rail-card__actor-meta']/p[@class='identity-headline Sans-13px-black-55% mt1']
    ${title}=    Get title
    ${body}=    get source
    Click Element    css=#dropdown-trigger ember-view

logout
    Click Button    id=nav-settings__dropdown-trigger
    Click Element    xpath=//body[@class='render-mode-BIGPIPE nav-v2 \ \ ember-application icons-loaded boot-complete']/nav[@id='extended-nav']/div[@class='nav-main__content display-flex']/ul[@class='nav-main nav-container']/li[@id='profile-nav-item']/div[@id='nav-settings__dropdown']/ul[@id='nav-settings__dropdown-options']/li[@class='nav-settings__dropdown-options--actions \ nav-settings__no-hover']/ul/li[@class='nav-dropdown__action']
    Close Browser

19875
    open browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=19875&retry=1    gc
    ${datumvandaag}=    Get Current Date
    ${datumtransformeer}=    Add Time To Date    ${datumvandaag}    1 DAYS
    ${datummorgen}=    Convert Date    ${datumtransformeer}    result_format=%d-%m-%y
    Input Text    xpath=//body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-md-8']/div[@class='input-group input-group-lg']/input[@id='datefield']    ${datummorgen}

70310
    Open Browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=70310&retry=1    gc
    ${tablestring}=    Get Table Cell    xpath=//div[@class='col-sm-10']/table[@id='orderTable']    -1    2
    Input Text    xpath=//div[@class='input-group input-group-lg']/input[@id='ordervalue']    ${tablestring}

41039 (table cell probleem)
    [Timeout]
    Open Browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=41039&retry=1    gc
    ${cell1}=    Get Table Cell    xpath=/html[@class=' js csstransitions']/body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-sm-10']/table[@id='randomTable']    1    1
    ${cell2}=    Get Table Cell    xpath=/html[@class=' js csstransitions']/body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-sm-10']/table[@id='randomTable']    1    2
    ${cell3}=    Get Table Cell    xpath=/html[@class=' js csstransitions']/body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-sm-10']/table[@id='randomTable']    1    3
    ${1a}=    Set Variable If    ${cell1} > 15    True
    ${1b}=    Set Variable If    ${cell1} < 5    True
    ${2a}=    Set Variable If    ${cell2} > 15    True
    ${2b}=    Set Variable If    ${cell2} < 5    True
    ${3a}=    Set Variable If    ${cell3} > 15    True
    ${3b}=    Set Variable If    ${cell3} < 5    True
    ${groterdan}=    set variable if    ${1a} = True or ${2a} = True or ${3a} = True    True
    ${kleinerdan}=    set variable if    ${1b} or ${2b} or ${3b}    True

41037
    Open Browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=41037&retry=1    gc
    ${yeahboy}=    Get Table Cell    xpath=//div[@class='col-sm-10']/table[@id='timeTable']    -1    -2
    Input Text    xpath=//div[@class='input-group input-group-lg']/input[@id='resulttext']    ${yeahboy}

64161
    open browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=64161&retry=1    gc
    ${hans}=    Get Webelement    xpath=//div[@class='row'][1]/div[@class='col-md-4'][2]/a[@id='generate']
    Click Button    ${hans}
    ${1}=    Get Text    xpath=//body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-md-4'][1]/div[@class='row propertyGrid'][3]/div[@class='col-md-4 border']
    ${2}=    Get Text    xpath=//body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-md-4'][1]/div[@class='row propertyGrid'][4]/div[@class='col-md-4 border']
    ${3}=    Get Text    xpath=//body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-md-4'][1]/div[@class='row propertyGrid'][5]/div[@class='col-md-4 border']
    ${4}=    Get Text    xpath=//body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-md-4'][1]/div[@class='row propertyGrid'][6]/div[@class='col-md-4 border']
    ${5}=    Get Text    xpath=//body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-md-4'][1]/div[@class='row propertyGrid'][7]/div[@class='col-md-4 border']
    ${6}=    Get Text    xpath=//body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-md-4'][1]/div[@class='row propertyGrid'][8]/div[@class='col-md-4 border']
    ${7}=    Get Text    xpath=//body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-md-4'][1]/div[@class='row propertyGrid'][9]/div[@class='col-md-4 border']
    ${8}=    Get Text    xpath=//body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-md-4'][1]/div[@class='row propertyGrid'][10]/div[@class='col-md-4 border']
    ${9}=    Get Text    xpath=//body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-md-4'][1]/div[@class='row propertyGrid'][11]/div[@class='col-md-4 border']
    ${10}=    Get Text    xpath=//body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-md-4'][1]/div[@class='row propertyGrid'][12]/div[@class='col-md-4 border']
    ${1a}=    Convert To Number    ${1}
    ${2a}=    Convert To Number    ${2}
    ${3a}=    Convert To Number    ${3}
    ${4a}=    Convert To Number    ${4}
    ${5a}=    Convert To Number    ${5}
    ${6a}=    Convert To Number    ${6}
    ${7a}=    Convert To Number    ${7}
    ${8a}=    Convert To Number    ${8}
    ${9a}=    Convert To Number    ${9}
    ${10a}=    Convert To Number    ${10}
    Run Keyword If    ${1a} >= 10    Input Text    xpath=//input[@id='offerId']    ${1}
    Run Keyword if    ${2a} >= 10    Input Text    xpath=//input[@id='offerId']    ${1}
    Run Keyword If    ${3a} >= 10    Input Text    xpath=//input[@id='offerId']    ${1}
    Run Keyword If    ${4a} >= 10    Input Text    xpath=//input[@id='offerId']    ${1}
    Run Keyword If    ${5a} >= 10    Input Text    xpath=//input[@id='offerId']    ${1}
    Run Keyword If    ${6a} >= 10    Input Text    xpath=//input[@id='offerId']    ${1}
    Run Keyword If    ${7a} >= 10    Input Text    xpath=//input[@id='offerId']    ${1}
    Run Keyword If    ${8a} >= 10    Input Text    xpath=//input[@id='offerId']    ${1}
    Run Keyword If    ${9a} >= 10    Input Text    xpath=//input[@id='offerId']    ${1}
    Run Keyword If    ${10a} >= 10    Input Text    xpath=//input[@id='offerId']    ${1}

66666
    open browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=66666&retry=1    gc
    click element    id=clickthis

57683
    Open Browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=57683&retry=1    gc
    Click Button    id=generate
    ${datdus}=    Get Value    xpath=//div[@class='input-group input-group-lg']/input[@id='dateGenerated']
    ${dusdat}=    Add Time To Date    ${datdus}    60 days    result_format=%Y/%m/%d    exclude_millis=true    date_format=%m/%d/%Y
    ${dattus}=    convert date    ${dusdat}    result_format=%Y/%m
    ${bijna}=    Add Time To Date    ${dattus}    0 day    result_format=%Y-%m-%d    exclude_millis=true    date_format=%Y/%m
    Input Text    xpath=//div[@class='input-group input-group-lg']/input[@id='dateSolution']    ${bijna}
    click button    id=done

12952 (voltooid)
    open browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=12952&retry=1    gc
    sleep    5 seconds
    click button    xpath=//body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@id='thisoneistheright']/p[@class='text-center']/a[@id='id']

45618 (niet voltooid)
    open browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=45618&retry=1    gc
    click element    xpath=//input[@id='generated']
    ${totaal}=    get value    id=generated
    ${totaal}=    Get Regexp Matches    ${totaal}    0123456789

92248
    open browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=92248&retry=1    gc
    ${naam}=    Get text    xpath=//table[@id='persons']/tbody/tr[1]/td[1]
    ${achternaam}=    get text    xpath=//table[@id='persons']/tbody/tr[1]/td[2]
    ${naam2}=    Get text    xpath=//table[@id='persons']/tbody/tr[2]/td[1]
    ${achternaam2}=    get text    xpath=//table[@id='persons']/tbody/tr[2]/td[2]
    ${naam3}=    Get text    xpath=//table[@id='persons']/tbody/tr[3]/td[1]
    ${achternaam3}=    get text    xpath=//table[@id='persons']/tbody/tr[3]/td[2]
    ${naam4}=    Get text    xpath=//table[@id='persons']/tbody/tr[4]/td[1]
    ${achternaam4}=    get text    xpath=//table[@id='persons']/tbody/tr[4]/td[2]
    Run keyword if    '${naam}' == 'John'    Run keyword if    '${achternaam}' == 'Doe'    click element    xpath=//tbody/tr[1]/td[4]/div[@class='btn-group']/button[@class='btn btn-default'][2]
    Run keyword if    '${naam2}' == 'John'    Run keyword if    '${achternaam2}' == 'Doe'    click element    xpath=//tbody/tr[2]/td[4]/div[@class='btn-group']/button[@class='btn btn-default'][2]
    Run keyword if    '${naam3}' == 'John'    Run keyword if    '${achternaam3}' == 'Doe'    click element    xpath=//tbody/tr[3]/td[4]/div[@class='btn-group']/button[@class='btn btn-default'][2]
    Run keyword if    '${naam4}' == 'John'    Run keyword if    '${achternaam4}' == 'Doe'    click element    xpath=//tbody/tr[4]/td[4]/div[@class='btn-group']/button[@class='btn btn-default'][2]

81012
    Open Browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=81012&retry=1    gc
    ${tekst}=    Get Text    //div[@id='alerttext']
    ${str}=    Remove String    ${tekst}    Purchase    completed!    We    charged
    ...    the    total    amount    of    $    to
    ...    your    credit    card!
    ${strip}=    Strip String    ${str}    mode=left
    Input Text    xpath=//input[@id='totalamountText']    ${strip}

41039 (table cell opgelost)
    [Timeout]
    Open Browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=41039&retry=1    gc
    ${cell1}=    Get Table Cell    xpath=/html[@class=' js csstransitions']/body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-sm-10']/table[@id='randomTable']    1    1
    ${cell2}=    Get Table Cell    xpath=/html[@class=' js csstransitions']/body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-sm-10']/table[@id='randomTable']    1    2
    ${cell3}=    Get Table Cell    xpath=/html[@class=' js csstransitions']/body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-sm-10']/table[@id='randomTable']    1    3
    ${a}=    Set Variable If    ${cell1} > 15    True    ${cell2} > 15    True    ${cell3} > 15
    ...    True    False
    ${b}=    Set Variable If    ${cell1} < 5    True    ${cell2} < 5    True    ${cell3} < 5
    ...    True    False
    ${inputtekst}=    Set Variable If    ${a} == ${b}    True
    Input Text    xpath=//div[@class='input-group input-group-lg']/input[@id='resulttext']    ${inputtekst}=
    ${cell1}=    Get Table Cell    xpath=/html[@class=' js csstransitions']/body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-sm-10']/table[@id='randomTable']    2    1
    ${cell2}=    Get Table Cell    xpath=/html[@class=' js csstransitions']/body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-sm-10']/table[@id='randomTable']    2    2
    ${cell3}=    Get Table Cell    xpath=/html[@class=' js csstransitions']/body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-sm-10']/table[@id='randomTable']    2    3
    ${a}=    Set Variable If    ${cell1} > 15    True    ${cell2} > 15    True    ${cell3} > 15
    ...    True    False
    ${b}=    Set Variable If    ${cell1} < 5    True    ${cell2} < 5    True    ${cell3} < 5
    ...    True    False
    ${inputtekst}=    Set Variable If    ${a} == ${b}    True
    Input Text    xpath=//div[@class='input-group input-group-lg']/input[@id='resulttext']    ${inputtekst}=
    ${cell1}=    Get Table Cell    xpath=/html[@class=' js csstransitions']/body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-sm-10']/table[@id='randomTable']    3    1
    ${cell2}=    Get Table Cell    xpath=/html[@class=' js csstransitions']/body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-sm-10']/table[@id='randomTable']    3    2
    ${cell3}=    Get Table Cell    xpath=/html[@class=' js csstransitions']/body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-sm-10']/table[@id='randomTable']    3    3
    ${a}=    Set Variable If    ${cell1} > 15    True    ${cell2} > 15    True    ${cell3} > 15
    ...    True    False
    ${b}=    Set Variable If    ${cell1} < 5    True    ${cell2} < 5    True    ${cell3} < 5
    ...    True    False
    ${inputtekst}=    Set Variable If    ${a} == ${b}    True    False
    Input Text    xpath=//div[@class='input-group input-group-lg']/input[@id='resulttext']    ${inputtekst}=

32403
    open browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=32403&retry=1    gc
    ${random1}=    Get Text    id=no1
    ${rekenteken}=    Get Text    xpath=//label[@id='symbol1']
    ${random2}=    Get Text    id=no2
    ${som}=    Evaluate    ${random1} ${rekenteken} ${random2}
    Input Text    xpath=//input[@id='result']    ${som}

94441
    Open Browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=94441&retry=1    gc
    Select From List    id=multiselect    GUI testing    End2End testing    Functional testing    Exploratory testing

72954
    open browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=72954&retry=1    gc
    Click Element    id=rnd_46576
    Click Element    xpath=//body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-md-4'][2]/p[@class='text-center']

41032
    open browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=41032&retry=1    gc
    ${stringbil}=    get text    xpath=//body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-sm-10']/table[@id='rowCountTable']
    ${stringbil2}=    Get Count    ${stringbil}    Orderdate
    Input Text    xpath=//div[@class='input-group input-group-lg']/input[@id='rowcount']    ${stringbil2}
    click button    xpath=//p[contains(@class,'text-center')]/a[contains(@id,'sample')]

33678
    open browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=33678&retry=1    gc
    Click Button    id=one
    Wait Until Element Is Visible    xpath=//div[@class='col-md-3'][3]/p[@class='text-center']
    click button    id=two

98754
    open browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=41040&retry=1    gc
    click button    id=buttontoclick

87912 (xml)
    open browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=87912&retry=1    gc
    ${webe}=    Get Webelement    xpath=//body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[contains(@class,'col-md-6')]/a[contains(@id,'loadbooks')]
    Click Button    ${webe}
    ${x}=    Get Text    xpath=//textarea[@id='books']
    Create Dictionary    ${x}    C:\Users\brendan.kuiper\voorxml.text

87912 (with sleep and normal xpath)
    open browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=87912&retry=1    gc
    sleep    10 seconds
    Click Button    id=loadbooks

81121
    open browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=81121&retry=1    gc
    ${e}=    Get Webelement    xpath=//p[@class='text-center']/a[@id='button']
    ${b}=    Get text    ${e}
    Run Keyword IF    '${b}' == 'CLICK ME'    click button    ${e}
    sleep    2 seconds
    ${b}=    Get text    ${e}
    Run Keyword IF    '${b}' == 'CLICK ME'    click button    ${e}
    sleep    2 seconds
    ${b}=    Get text    ${e}
    Run Keyword IF    '${b}' == 'CLICK ME'    click button    ${e}
    sleep    2 seconds
    ${b}=    Get text    ${e}
    Run Keyword IF    '${b}' == 'CLICK ME'    click button    ${e}
    sleep    2 seconds
    ${b}=    Get text    ${e}
    Run Keyword IF    '${b}' == 'CLICK ME'    click button    ${e}
    sleep    2 seconds
    ${b}=    Get text    ${e}
    Run Keyword IF    '${b}' == 'CLICK ME'    click button    ${e}
    sleep    2 seconds
    ${b}=    Get text    ${e}
    Run Keyword IF    '${b}' == 'CLICK ME'    click button    ${e}
    sleep    2 seconds
    ${b}=    Get text    ${e}
    Run Keyword IF    '${b}' == 'CLICK ME'    click button    ${e}
    sleep    2 seconds
    ${b}=    Get text    ${e}
    Run Keyword IF    '${b}' == 'CLICK ME'    click button    ${e}
    sleep    2 seconds
    ${b}=    Get text    ${e}
    Run Keyword IF    '${b}' == 'CLICK ME'    click button    ${e}
    sleep    2 seconds
    ${b}=    Get text    ${e}
    Run Keyword IF    '${b}' == 'CLICK ME'    click button    ${e}
    sleep    2 seconds
    ${b}=    Get text    ${e}
    Run Keyword IF    '${b}' == 'CLICK ME'    click button    ${e}
    sleep    2 seconds
    ${b}=    Get text    ${e}
    Run Keyword IF    '${b}' == 'CLICK ME'    click button    ${e}
    sleep    2 seconds
    ${b}=    Get text    ${e}
    Run Keyword IF    '${b}' == 'CLICK ME'    click button    ${e}
    sleep    2 seconds
    ${b}=    Get text    ${e}
    Run Keyword IF    '${b}' == 'ENOUGH'    click button    ${e}

24499 (niet afgemaakt)
    open browser    https://obstaclecourse.tricentis.com/Obstacles/Next?oId=24499&retry=1    gc
    ${a}=    get text    xpath=//p/span[@id='typeThis']
    ${c}=    Get Webelement    xpath=//body/div[@class='container']/div[@class='panel-group']/div[@class='panel panel-default'][1]/div[2]/div[@class='panel-body']/div[@class='row'][1]/div[@class='col-md-4'][1]/div[@id='s2id_autocomplete']/ul[@class='select2-choices']
    Click Element    ${c}
    ${v}=    Get Child Elements    css=#autocomplete
