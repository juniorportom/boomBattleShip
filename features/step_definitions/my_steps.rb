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
	find_field(posX+','+posY).value
end

When(/^Ataque posicion "([^"]*)"x"([^"]*)"$/) do |posX, posY|
	fill_in("posX", :with => posX)
	fill_in("posY", :with => posY)
	click_button("Atacar")
end

Then(/^debo ver "([^"]*)" en la posicion "([^"]*)" "([^"]*)"$/) do |tipo, posX, posY|
  #cell = "#{posX}-#{posY}"
  expect(page.body).to match /#{tipo}/m
  #expect(find(cell).text).to match /#{tipo}/m
end
