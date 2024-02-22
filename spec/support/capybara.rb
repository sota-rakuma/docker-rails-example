require 'capybara/rspec'

RSpec.configure do |config|
  Capybara.register_driver :remote_chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless')
    options.add_argument('--disable-gpu')

    Capybara::Selenium::Driver.new(app,
                                   browser: :remote,
                                   url: ENV.fetch('SELENIUM_DRIVER_URL'),
                                   capabilities: [options])
  end

  config.before(:each, type: :system) do
    Capybara.default_driver = :remote_chrome
    Capybara.javascript_driver = :remote_chrome
    Capybara.server_host = 'web'
    Capybara.app_host = 'http://web'
    driven_by(:remote_chrome)
  end
end
