require "application_system_test_case"

class SubjectReviewsTest < ApplicationSystemTestCase
  setup do
    @subject_review = subject_reviews(:one)
  end

  test "visiting the index" do
    visit subject_reviews_url
    assert_selector "h1", text: "Subject Reviews"
  end

  test "creating a Subject review" do
    visit subject_reviews_url
    click_on "New Subject Review"

    fill_in "Review", with: @subject_review.review
    fill_in "Subject", with: @subject_review.subject_id
    fill_in "User", with: @subject_review.user_id
    click_on "Create Subject review"

    assert_text "Subject review was successfully created"
    click_on "Back"
  end

  test "updating a Subject review" do
    visit subject_reviews_url
    click_on "Edit", match: :first

    fill_in "Review", with: @subject_review.review
    fill_in "Subject", with: @subject_review.subject_id
    fill_in "User", with: @subject_review.user_id
    click_on "Update Subject review"

    assert_text "Subject review was successfully updated"
    click_on "Back"
  end

  test "destroying a Subject review" do
    visit subject_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subject review was successfully destroyed"
  end
end
