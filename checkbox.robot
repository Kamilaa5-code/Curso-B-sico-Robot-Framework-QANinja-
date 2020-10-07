*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}              http://training-wheels-protocol.herokuapp.com
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panther}    Xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando opção com Id
    Open Browser                    ${url}      chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    checkbox Should Be Selected     ${check_thor}
    Sleep                           5
    Close Browser 

Marcando opção com CSS Selector
    Open Browser                    ${url}      chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron}
    checkbox Should Be Selected     ${check_iron}
    Sleep                           5
    Close Browser 

Marcando opção com Xpath
    Open Browser                    ${url}      chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    checkbox Should Be Selected     ${check_panther}
    Sleep                           5
    Close Browser 