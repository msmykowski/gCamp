require 'rails_helper'

feature "Users" do

  scenario "User creates a User" do

    visit root_path
    click_on "Users"
    click_on "New User"
    fill_in "First name", with: "Mike"
    fill_in "Last name", with: "Mike"
    fill_in "Email", with: "Mike@mike.com"
    click_on "Create User"

    expect(page).to have_content("Mike Mike Mike@mike.com")
  end

  scenario "User edits a User" do
    User.create!(
    first_name: "Mike",
    last_name: "Mike",
    email: "smycal@gmail.com"
    )

    visit root_path
    click_on "Users"
    click_on "edit"
    fill_in "First name", with: "Joe"
    click_on "Update User"

    expect(page).to have_content("Joe Mike smycal@gmail.com")
  end

  scenario "User deletes a User" do
    User.create!(
    first_name: "Mike",
    last_name: "Mike",
    email: "smycal@gmail.com"
    )

    visit root_path
    click_on "Users"
    click_on "edit"
    click_on "Delete"


    expect(page).to have_no_content("Mike Mike smycal@gmail.com")
  end

end
