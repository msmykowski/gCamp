require 'rails_helper'

feature "Projects" do

  scenario "User creates a Project" do

    visit root_path
    click_on "Projects"
    click_on "New Project"
    fill_in "Name", with: "test project"
    click_on "Create Project"

    expect(page).to have_content("test project")
  end

  scenario "User edits a Project" do
    Project.create!(
      name: "Test Project",
    )

    visit root_path
    click_on "Projects"
    click_on "Test Project"
    click_on "edit"
    fill_in "Name", with: "Edited Project"
    click_on "Update Project"

    expect(page).to have_content("Edited Project")
  end

  scenario "User deletes a Project" do
    Project.create!(
    name: "Test Project",
    )

    visit root_path
    click_on "Projects"
    click_on "Test Project"
    click_on "delete"

    expect(page).to have_no_content("Test Project")
  end

end
