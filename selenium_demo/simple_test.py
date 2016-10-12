import sys

# *** Settings ***
# Library         Selenium2Library
from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException

# Open Browser                       http://www.google.com
browser = webdriver.Firefox()
browser.implicitly_wait(10)
browser.get('http://www.google.com')

# Wait Until Element Is Visible      q
try:
    search_box = browser.find_element_by_name('q')
except NoSuchElementException:
    print('Search box is not present')
    browser.close()
    sys.exit('Ending test due to error')

# Input Text                         q     Robot Framework
search_box.send_keys('Robot Framework')

# Click Button                       btnG
search_btn = browser.find_element_by_name('btnG')
search_btn.click()

# Wait Until Element is Visible      link=Robot Framework
try:
    result = browser.find_element_by_link_text('Robot Framework')
except NoSuchElementException as exc:
    print(exc)
    browser.close()
    sys.exit('Ending test due to error')

# Close Browser
browser.close()
