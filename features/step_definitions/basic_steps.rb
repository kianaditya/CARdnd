Given("the following user exists") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

Given("a user exists") do
    FactoryBot.create(:user)
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

Given("I am logged in as {string}") do |email|
    @user = User.find_by email: email
    login_as @user, scope: :user
    visit root_path
end

Given("The following cars exist") do |table|
    table.hashes.each do |car|
        user = User.find_or_create_by(first_name: car[:user])
        car.except!('user')
        Automobile.create(car.merge(user: user))
    end
end

When("I click {string} within {string}") do |button, car|
    selected_car = car.split.first
    automobile = Automobile.find_by(brand: selected_car)
    dom_section = "#automobile_#{automobile.id}"
    within(dom_section) do
        click_on button
    end
end

Given("I attach a file") do
    attach_file('automobile_image', "#{::Rails.root}/spec/fixtures/dummy_image.jpg")
end