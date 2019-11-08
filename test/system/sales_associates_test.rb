require "application_system_test_case"

class SalesAssociatesTest < ApplicationSystemTestCase
  setup do
    @sales_associate = sales_associates(:one)
  end

  test "visiting the index" do
    visit sales_associates_url
    assert_selector "h1", text: "Sales Associates"
  end

  test "creating a Sales associate" do
    visit sales_associates_url
    click_on "New Sales Associate"

    fill_in "Department", with: @sales_associate.department
    fill_in "Name", with: @sales_associate.name
    click_on "Create Sales associate"

    assert_text "Sales associate was successfully created"
    click_on "Back"
  end

  test "updating a Sales associate" do
    visit sales_associates_url
    click_on "Edit", match: :first

    fill_in "Department", with: @sales_associate.department
    fill_in "Name", with: @sales_associate.name
    click_on "Update Sales associate"

    assert_text "Sales associate was successfully updated"
    click_on "Back"
  end

  test "destroying a Sales associate" do
    visit sales_associates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sales associate was successfully destroyed"
  end
end
