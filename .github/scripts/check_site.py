from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.firefox.options import Options

import requests

options = Options()
options.headless = True

driver = webdriver.Firefox(options=options)
print("Start get")
driver.get("http://localhost:80/")
print("Done get")
print(driver)
print(driver.title)

assert "My web site" in driver.title


links = driver.find_elements_by_css_selector("a")
for link in links:
    r = requests.head(link.get_attribute('href'))
    print(link.get_attribute('href'), r.status_code)

