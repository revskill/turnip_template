Spork.prefork do
  %w[
    capybara/dsl    capybara/rspec
    capybara/webkit capybara/poltergeist
    rspec/rails     rspec/autorun
    turnip          turnip/capybara
  ].each do |library|
    require library
  end
end

Spork.each_run do
  # this code will be run each time you run test
end

def register_internet_explorer config, host, port = 5555
  config.before(:internet_explorer => true) do
    Capybara.register_driver :internet_explorer do |app|
      host = ""
      port = ""
      caps = Selenium::WebDriver::Remote::Capabilities.internet_explorer
      url  = "http://#{host}:#{port}}/wd/hub/"
      opts = { desired_capabilities: caps, browser: :remote, url: url }

      Capybara::Selenium::Driver.new(app, opts)

      Capybara.app_host = "http://127.0.0.1/"
      Capybara.current_driver = :internet_explorer
      Capybara.javascript_driver = :internet_explorer
    end
  end
end

def register_poltergeist config
  Capybara.run_server = true
  Capybara.default_driver = :poltergeist
  Capybara.javascript_driver = :poltergeist
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(
      app, js_errors: true, timeout: 60)
  end
end

RSpec.configure do |config|
  Capybara.app_host = "http://127.0.0.1/"
  register_poltergeist config
  # register_internet_explorer config, "my-windows-box", 5555
end