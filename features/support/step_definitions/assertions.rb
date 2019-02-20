Then("I should see {string}") do |expected_content|
  expect(page).to have_content expected_content
end


Then("I should be on the {string} step of the checkout") do |expected_step|
  expect(current_path).to eq cartify.checkout_path(expected_step.to_sym)
end

