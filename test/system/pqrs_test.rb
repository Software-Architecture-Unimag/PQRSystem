require "application_system_test_case"

class PqrsTest < ApplicationSystemTestCase
  setup do
    @pqr = pqrs(:one)
  end

  test "visiting the index" do
    visit pqrs_url
    assert_selector "h1", text: "Pqrs"
  end

  test "creating a Pqr" do
    visit pqrs_url
    click_on "New Pqr"

    fill_in "Body", with: @pqr.body
    fill_in "Creation Date", with: @pqr.creation_date
    fill_in "Email", with: @pqr.email
    fill_in "Expiration Date", with: @pqr.expiration_date
    fill_in "First Name", with: @pqr.first_name
    fill_in "Last Name", with: @pqr.last_name
    fill_in "Pqr Files", with: @pqr.pqr_files_id
    fill_in "Subject", with: @pqr.subject
    fill_in "Title", with: @pqr.title
    fill_in "User", with: @pqr.user_id
    click_on "Create Pqr"

    assert_text "Pqr was successfully created"
    click_on "Back"
  end

  test "updating a Pqr" do
    visit pqrs_url
    click_on "Edit", match: :first

    fill_in "Body", with: @pqr.body
    fill_in "Creation Date", with: @pqr.creation_date
    fill_in "Email", with: @pqr.email
    fill_in "Expiration Date", with: @pqr.expiration_date
    fill_in "First Name", with: @pqr.first_name
    fill_in "Last Name", with: @pqr.last_name
    fill_in "Pqr Files", with: @pqr.pqr_files_id
    fill_in "Subject", with: @pqr.subject
    fill_in "Title", with: @pqr.title
    fill_in "User", with: @pqr.user_id
    click_on "Update Pqr"

    assert_text "Pqr was successfully updated"
    click_on "Back"
  end

  test "destroying a Pqr" do
    visit pqrs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pqr was successfully destroyed"
  end
end
