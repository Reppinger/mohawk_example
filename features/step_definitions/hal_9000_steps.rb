When(/^I click the button$/) do
  on(MainPage).click_this
end

When(/^I smack that sassy dialog down$/) do
  on(AutotestDialog).smack_down
end

When(/^I type "([^"]*)"$/) do |text_to_type|
  on(MainPage).something = text_to_type
end

Then(/^something is "([^"]*)"$/) do |expected_text|
  on(MainPage) do |page|
    expect(page.something).to eq(expected_text)
  end
end

Then(/^the sassy dialog displays "([^"]*)"$/) do |expected_dialog_message|
  on(AutotestDialog) do |dialog|
    expect(dialog).to have_text(expected_dialog_message)
  end
end

Then(/^the dialog does not mention "([^"]*)"$/) do |word_not_expected|
  on(AutotestDialog) do |dialog|
    expect(dialog).not_to have_text(word_not_expected)
  end
end

# Using a page object that returns the contents of the message label
# and 'eq' matcher instead of looser 'have_text'
Then(/^the sassy dialog message displays "([^"]*)"$/) do |expected_dialog_message|
  on(AutotestDialogUsingMessage) do |dialog|
    expect(dialog.message).to eq(expected_dialog_message)
  end
end

Then(/^the dialog message does not mention "([^"]*)"$/) do |word_not_expected|
  on(AutotestDialogUsingMessage) do |dialog|
    expect(dialog.message).not_to include(word_not_expected)
  end
end
