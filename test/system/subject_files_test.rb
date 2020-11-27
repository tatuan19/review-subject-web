require "application_system_test_case"

class SubjectFilesTest < ApplicationSystemTestCase
  setup do
    @subject_file = subject_files(:one)
  end

  test "visiting the index" do
    visit subject_files_url
    assert_selector "h1", text: "Subject Files"
  end

  test "creating a Subject file" do
    visit subject_files_url
    click_on "New Subject File"

    fill_in "Description", with: @subject_file.description
    fill_in "File url", with: @subject_file.file_url
    fill_in "Subject", with: @subject_file.subject_id
    fill_in "Title", with: @subject_file.title
    click_on "Create Subject file"

    assert_text "Subject file was successfully created"
    click_on "Back"
  end

  test "updating a Subject file" do
    visit subject_files_url
    click_on "Edit", match: :first

    fill_in "Description", with: @subject_file.description
    fill_in "File url", with: @subject_file.file_url
    fill_in "Subject", with: @subject_file.subject_id
    fill_in "Title", with: @subject_file.title
    click_on "Update Subject file"

    assert_text "Subject file was successfully updated"
    click_on "Back"
  end

  test "destroying a Subject file" do
    visit subject_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subject file was successfully destroyed"
  end
end
