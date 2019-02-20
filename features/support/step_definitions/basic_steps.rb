# frozen_string_literal: true

Given('the following products exist') do |table|
  table.hashes.each do |product_attributes|
    FactoryBot.create(:product, product_attributes)
  end
end

Given('I visit the home page') do
  visit root_path
end

Given('I click on {string} on {string}') do |element, product_name|
  product = Product.find_by_name(product_name)
  within("#product_#{product.id}") do
    click_on element
  end
end

When('I click on {string}') do |element|
  click_on element
end

Then('stop') do
  binding.pry
end

Given('the following users exist') do |table|
  table.hashes.each do |user_attributes|
    FactoryBot.create(:user, user_attributes)
  end
end

Then('I fill in {string} with {string}') do |element, value|
  form = find_all(".general-form").first
  within form do 
    fill_in(element, with: value)
  end
end
