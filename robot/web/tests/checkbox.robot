*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerrar sessão

*** Variables ***
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panther}    Xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando Opção com Id
    Go To                                ${url}/checkboxes
    Select Checkbox                      ${check_thor}
    Checkbox Should Be Selected          ${check_thor}

Marcando Opção com CSS Selector
    [tags]      ironman
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${check_iron} 
    Checkbox Should Be Selected         ${check_iron} 

Marcando Opção com Xpath
    [Tags]      ironman
    Go To                               ${url}/checkboxes
    Select Checkbox                     ${check_panther}
    checkbox Should Be Selected         ${check_panther}
