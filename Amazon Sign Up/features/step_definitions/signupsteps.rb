require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome

Given("open the website") do
  driver.navigate.to "https://www.amazon.com/"
end

Then("user click on Sign in") do
    driver.find_element(:id, 'nav-link-accountList').click
    sleep(3)
end

Then("user click create account") do
    driver.find_element(:id, 'createAccountSubmit').click
    sleep(3)
end
Then("user input name") do
    driver.find_element(:id, 'ap_customer_name').send_keys('Nama Saya')
    sleep(3)
end
Then("user input email") do
    driver.find_element(:id, 'ap_email').send_keys('sayaadalah@gmail.com')
    sleep(3)
end
Then("user input password") do
    driver.find_element(:id, 'ap_password').send_keys('qwerty123')
    sleep(3)
end

Then("user input confirm password") do
    driver.find_element(:id, 'ap_password_check').send_keys('qwerty123')
    sleep(3)
end

Then("user click continue") do
    driver.find_element(:id, 'continue').click
    sleep(3)
end
Then("user closing the browser") do
    driver.quit
end
