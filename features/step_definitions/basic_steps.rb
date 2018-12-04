Given("the following user exists") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

Given("I visit the landing page") do
    visit root_path
end

Given("I click {string}") do |element|
    click_on element
end

When("I fill in {string} field with {string}") do |element, value|
    fill_in element,with: value
end
