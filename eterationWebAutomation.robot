*** Settings ***

Library   SeleniumLibrary

*** Variables ***

${url}         https://academy.eteration.com
${browser}     safari
${timeout}     10s
${homepageLogo}  //a[1]
${homepageInfo}  //div[@class="banner-cli-title"]
${instructors}   //ul/li[2]/a
${firstInstructor}   //div[@class="instructor-item"][1]
${secondInstructor}   //div[@class="instructor-item"][2]
${thirdInstructor}   //div[@class="instructor-item"][3]
${fourthInstructor}   //div[@class="instructor-item"][4]
${fifthInstructor}   //div[@class="instructor-item"][5]
${sixthInstructor}   //div[@class="instructor-item"][6]
${seventhInstructor}   //div[@class="instructor-item"][7]
${eighthInstructor}   //div[@class="instructor-item"][8]


*** Test Cases ***
Insider Careers & Jobs

    Open Browser  ${url}   ${browser}
    Capture Page Screenshot    failed.png
    Set Selenium Timeout    ${timeout}
    Set Selenium Speed    0.5s
    Maximize Browser Window
    Wait Until Page Contains Element   ${homepageLogo}  ${timeout}
    Click Element   ${instructors}
    Wait Until Location Does Not Contain  ${homepageInfo}  ${timeout}
    Page Should Contain Element  ${firstInstructor}
    Page Should Contain Element  ${secondInstructor}
    Page Should Contain Element  ${thirdInstructor}
    Page Should Contain Element  ${fourthInstructor}
    Page Should Contain Element  ${fifthInstructor}
    Page Should Contain Element  ${sixthInstructor}
    Page Should Contain Element  ${seventhInstructor}
    Page Should Contain Element  ${eighthInstructor}
    Close Browser

