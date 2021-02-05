load File.dirname(__FILE__) + '/../test_helper.rb'

# don't use selenium excessive log directly when running in TestWise
# if you want do, use the statement below, and run the test from command line to see debug log
#
# Selenium::WebDriver.logger.level = :debug unless defined?(TestWiseRuntimeSupport)

describe "User Login" do
  include TestHelper

  before(:all) do
    # for windows, when unable auto-detect firefox binary
    # Please note Firefox on 32 bit is "C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
    # Selenium::WebDriver::Firefox::Binary.path="C:/Program Files/Mozilla Firefox/firefox.exe"
    
    @driver = $driver = Selenium::WebDriver.for(browser_type, browser_options)
    driver.manage().window().resize_to(1280, 720)
    driver.manage().window().move_to(30, 78)
    driver.get(site_url)
    
    driver.navigate.to(site_url)
  end

  after(:all) do
    driver.quit unless debugging?
  end

  it "[1] Can sign in OK" do
    goto_page("")
  end

end
