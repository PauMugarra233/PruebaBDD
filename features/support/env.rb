require 'watir-webdriver'
require 'minitest/unit'
require 'headless'
headless = Headless.new
headless.start
browser = Watir::Browser.new :chrome
browser.goto 'http://google.com'

BASE_URL = "http://moduscreate.com"

World(MiniTest::Assertions)

browser.close
headless.destroy
