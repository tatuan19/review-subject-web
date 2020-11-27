require 'test_helper'

class SubjectFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subject_file = subject_files(:one)
  end

  test "should get index" do
    get subject_files_url
    assert_response :success
  end

  test "should get new" do
    get new_subject_file_url
    assert_response :success
  end

  test "should create subject_file" do
    assert_difference('SubjectFile.count') do
      post subject_files_url, params: { subject_file: { description: @subject_file.description, file_url: @subject_file.file_url, subject_id: @subject_file.subject_id, title: @subject_file.title } }
    end

    assert_redirected_to subject_file_url(SubjectFile.last)
  end

  test "should show subject_file" do
    get subject_file_url(@subject_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_subject_file_url(@subject_file)
    assert_response :success
  end

  test "should update subject_file" do
    patch subject_file_url(@subject_file), params: { subject_file: { description: @subject_file.description, file_url: @subject_file.file_url, subject_id: @subject_file.subject_id, title: @subject_file.title } }
    assert_redirected_to subject_file_url(@subject_file)
  end

  test "should destroy subject_file" do
    assert_difference('SubjectFile.count', -1) do
      delete subject_file_url(@subject_file)
    end

    assert_redirected_to subject_files_url
  end
end
