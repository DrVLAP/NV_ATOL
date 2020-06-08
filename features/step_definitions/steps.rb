Given /^(.*?) page is opened$/ do |site|
  visit("http://#{site}")
end

When /^I add login: (.*?)$/ do |login|
  #
  login = if login == 'correct_email'
            'test@sigma.ru'
          elsif login == 'correct_phone'
            '+70002881777'
          else
            login
          end
  find("input[data-testid='email']").set(login)
end

When /^I add password: (.*?)$/ do |password|
  password = if password == 'correct'
               'sigma123'
             else
               password
             end
  find("input[data-testid='password']").set(password)
end

When /^I set password visibility to (true|false)$/ do |visible|
  if page.has_xpath?("path[fill='#5F5F5F']")
    if visible == 'false'
      all(:css, 'svg g path').last.click
    end
  else
    if visible == 'true'
      all(:css, 'svg g path').last.click
    end
  end
end

When /^I am trying to authorize$/ do
  find(AUTH_BUTTON).click
end

When /^I should (not )?be authorized sucessfully$/ do |not_authorized|
  if not_authorized.nil?
    expect(page).to have_css('a#review')
  else
    expect(page).not_to have_css('a#review')
  end
end

Then /^I should see next error: (.*?)$/ do |error|
  # Here I added checking of presence of locator on the page, to get around that for different screen sizes is used different locators
  if page.has_css?('div._3DzmP')
    page_error = find(:css, 'div._3DzmP').text
  else
    page_error = first("div[data-id='tooltip']").text
  end
  expect(page_error).to eq(error)
end

Then /^Auth button should be disabled$/ do
  button = find("#{AUTH_BUTTON}[disabled]")
  expect(button[:disabled]).to eq('true')
end
