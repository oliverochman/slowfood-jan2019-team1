Given("the following products exist") do |table|
  table.hashes.each do |product_attributes|
    FactoryBot.create(:product, product_attributes)
  end
end

Given("I visit the home page") do
  visit root_path
end

Given("I click on {string} on {string}") do |element, product_name|
  product = Product.find_by_name(product_name)
  within("#product_#{product.id}") do
    click_on element
  end
end

Then('stop') do 
  binding.pry
end
