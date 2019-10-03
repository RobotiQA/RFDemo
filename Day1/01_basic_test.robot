*** Settings ***
Library         Selenium2Library    10


*** Test Cases ***
Search for Robot Framework on Google
  Open Browser                       http://www.google.com
  Wait Until Element Is Visible      q
  Input Text                         q     Robot Framework
  Click Button                       btnG
  Wait Until Element is Visible      link=Robot Framework
  Close Browser
