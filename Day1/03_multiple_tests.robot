*** Settings ***
Library         Selenium2Library

*** Variables ***
${search_box}   q
${search_btn}   btnG

*** Test Cases ***
Search for Robot Framework on Google
  Open Browser                       http://www.google.com
  Wait Until Element Is Visible      ${search_box}
  Input Text                         ${search_box}     Robot Framework
  Click Button                       ${search_btn}
  Wait Until Element is Visible      link=Robot Framework
  Close Browser

Search for Selenium2Library on Google
  Open Browser                       http://www.google.com
  Wait Until Element Is Visible      ${search_box}
  Input Text                         ${search_box}     Selenium2Library
  Click Button                       ${search_btn}
  Wait Until Element is Visible      link=Selenium2Library - Robot Framework
  Close Browser
