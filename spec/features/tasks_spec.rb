require 'rails_helper'

feature "Tasks" do

  scenario "User creates a Task" do

    visit root_path
    click_on "Tasks"
    click_on "New Task"
    fill_in "Description", with: "test task"
    fill_in "Due date", with: "12/25/2014"
    click_on "Create Task"

    expect(page).to have_content("test task")
  end

  scenario "User edits a Task" do
    Task.create!(
    description: "Mike",
    due_date: "12/25/2014"
    )

    visit root_path
    click_on "Tasks"
    click_on "edit"
    fill_in "Description", with: "Joe"
    click_on "Update Task"

    expect(page).to have_content("Joe")
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
