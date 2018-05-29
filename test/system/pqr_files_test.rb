require "application_system_test_case"

class PqrFilesTest < ApplicationSystemTestCase
  setup do
    @pqr_file = pqr_files(:one)
  end

  test "visiting the index" do
    visit pqr_files_url
    assert_selector "h1", text: "Pqr Files"
  end

  test "creating a Pqr file" do
    visit pqr_files_url
    click_on "New Pqr File"

    fill_in "Url", with: @pqr_file.url
    click_on "Create Pqr file"

    assert_text "Pqr file was successfully created"
    click_on "Back"
  end

  test "updating a Pqr file" do
    visit pqr_files_url
    click_on "Edit", match: :first

    fill_in "Url", with: @pqr_file.url
    click_on "Update Pqr file"

    assert_text "Pqr file was successfully updated"
    click_on "Back"
  end

  test "destroying a Pqr file" do
    visit pqr_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pqr file was successfully destroyed"
  end
end
