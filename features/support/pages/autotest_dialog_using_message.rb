class AutotestDialogUsingMessage
  include Mohawk

  DIALOG_MESSAGE = 0

  window(title: 'Autotesttest')
  button(:smack_down, name: 'OK')

  def message
    window_element.find_all(control_type: :text)[DIALOG_MESSAGE].name
  end

  #private
  def window_element
    adapter.window.element
  end
end