import os
from selenium import webdriver
from selenium.webdriver.chrome.service import Service

service = Service(
    # executable_path=r'../Desktop/BrowserDriver/chromedriver/',
    executable_path=r'/Users/nguyenquyhoangky/Desktop/BrowserDriver/',
    service_log_path=os.devnull,
)

# service = Service(executable_path='./chromedriver.exe')
options = webdriver.ChromeOptions()
driver = webdriver.Chrome(service=service, options=options)
# driver.quit()
