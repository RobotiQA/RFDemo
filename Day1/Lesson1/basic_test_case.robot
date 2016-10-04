*** Settings ***
Library         Selenium2Library

*** Test Cases ***
Search for Robot Framework on Wikipedia
  Open Browser                       http://www.google.com
  Wait Until Element Is Visible      lst-ib
  Input Text                         lst-ib     Robot Framework
  Click Button                       btnG
  Wait Until Element is Visible      link=Robot Framework
