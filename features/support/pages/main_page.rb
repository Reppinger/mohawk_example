class MainPage
  include Mohawk

  SOMETHING_TEXT_BOX = 0

  window(title: 'Delphi Automated Test Test')
  label(:hello, 'SubLabel')

  button(:click_this, name: 'Click This')

  def something
    something_text_box.as(:value).value
  end

  def something=(text_to_enter)
    something_text_box.send_keys text_to_enter
    wait_until { something == text_to_enter }
  end

  #private
  def window_element
    adapter.window.element
  end

  def something_text_box
    window_element.find_all(control_type: :edit)[SOMETHING_TEXT_BOX]
  end

end