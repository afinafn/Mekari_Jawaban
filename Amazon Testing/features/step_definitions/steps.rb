require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome

Given("open the website") do
  driver.navigate.to "https://www.amazon.com/"
  driver.manage.window.maximize
  sleep(5)
end

Then("user click on sign in") do
    driver.find_element(:id , 'nav-link-accountList').click
    sleep(5)
  end

Then("user enter email") do
    driver.find_element(:id , 'ap_email').send_keys('namasaya@gmail.com')
    sleep(5)
    driver.find_element(:id , 'continue').click
    sleep(5)
  end

  Then("user enter password") do
    driver.find_element(:id , 'ap_password').send_keys('qwerty123')
    sleep(5)
    driver.find_element(:name , 'rememberMe').click
    sleep(5)
    driver.find_element(:id , 'signInSubmit').click
    sleep(5)
end

Then("user re-entering password") do
  driver.find_element(:id , 'ap_password').send_keys('qwerty123')
  sleep(5)
end


Then("user closing the browser") do
    driver.quit
end
