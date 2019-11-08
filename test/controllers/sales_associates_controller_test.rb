require 'test_helper'

class SalesAssociatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sales_associate = sales_associates(:one)
  end

  test "should get index" do
    get sales_associates_url
    assert_response :success
  end

  test "should get new" do
    get new_sales_associate_url
    assert_response :success
  end

  test "should create sales_associate" do
    assert_difference('SalesAssociate.count') do
      post sales_associates_url, params: { sales_associate: { department: @sales_associate.department, name: @sales_associate.name } }
    end

    assert_redirected_to sales_associate_url(SalesAssociate.last)
  end

  test "should show sales_associate" do
    get sales_associate_url(@sales_associate)
    assert_response :success
  end

  test "should get edit" do
    get edit_sales_associate_url(@sales_associate)
    assert_response :success
  end

  test "should update sales_associate" do
    patch sales_associate_url(@sales_associate), params: { sales_associate: { department: @sales_associate.department, name: @sales_associate.name } }
    assert_redirected_to sales_associate_url(@sales_associate)
  end

  test "should destroy sales_associate" do
    assert_difference('SalesAssociate.count', -1) do
      delete sales_associate_url(@sales_associate)
    end

    assert_redirected_to sales_associates_url
  end
end
