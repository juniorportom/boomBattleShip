Given(/^inicie la aplicacion$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

When(/^inicie la partida$/) do
  click_button("Iniciar")
end

Then(/^debo ver tablero de "([^"]*)" x "([^"]*)"$/) do |posX, posY|
	find_button(posX+','+posY).click
end
