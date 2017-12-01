Given(/^inicie la aplicacion$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

When(/^inicie la partida$/) do
  click_button("Iniciar")
end
