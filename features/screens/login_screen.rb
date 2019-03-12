
class LoginScreen

  def click_button_login
    wait = Selenium::WebDriver::Wait.new timeout: 5
    wait.until { find_element(:xpath, ("//android.widget.TextView[@text='LOG IN']")).click }
  end

  def is_on_page that_page
    wait = Selenium::WebDriver::Wait.new timeout: 5
    wait.until { find_element(:xpath, ("//android.widget.TextView[@text='#{that_page}']")).displayed? }
  end

  def informe_credentials_valid
    wait = Selenium::WebDriver::Wait.new timeout: 5
    wait.until { (find_elements(:class, 'android.widget.EditText')[0]).send_keys("admin") }
    wait.until { (find_elements(:class, 'android.widget.EditText')[1]).send_keys("admin") }
  end
end
