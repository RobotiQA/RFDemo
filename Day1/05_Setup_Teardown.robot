*** Settings ***
Library         Selenium2Library
Test Setup      Open Browser      http://www.google.com
Test Teardown   Close Browser

*** Variables ***
${search_box}   lst-ib
${search_btn}   btnG

*** Test Cases ***
Search for Robot Framework on Google
  Google Search         Robot Framework         Robot Framework

Search for Selenium2Library on Google
  Google Search         Selenium2Library        Selenium2Library - Robot Framework

*** Keywords ***
Google Search
  [Arguments]                        ${search_term}         ${link_text}
  Wait Until Element Is Visible      ${search_box}
  Input Text                         ${search_box}          ${search_term}
  Click Button                       ${search_btn}
  Wait Until Element is Visible      link=${link_text}
