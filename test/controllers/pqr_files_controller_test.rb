require 'test_helper'

class PqrFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pqr_file = pqr_files(:one)
  end

  test "should get index" do
    get pqr_files_url
    assert_response :success
  end

  test "should get new" do
    get new_pqr_file_url
    assert_response :success
  end

  test "should create pqr_file" do
    assert_difference('PqrFile.count') do
      post pqr_files_url, params: { pqr_file: { url: @pqr_file.url } }
    end

    assert_redirected_to pqr_file_url(PqrFile.last)
  end

  test "should show pqr_file" do
    get pqr_file_url(@pqr_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_pqr_file_url(@pqr_file)
    assert_response :success
  end

  test "should update pqr_file" do
    patch pqr_file_url(@pqr_file), params: { pqr_file: { url: @pqr_file.url } }
    assert_redirected_to pqr_file_url(@pqr_file)
  end

  test "should destroy pqr_file" do
    assert_difference('PqrFile.count', -1) do
      delete pqr_file_url(@pqr_file)
    end

    assert_redirected_to pqr_files_url
  end
end
