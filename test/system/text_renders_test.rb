require "application_system_test_case"

class TextRendersTest < ApplicationSystemTestCase
  setup do
    @text_render = text_renders(:one)
  end

  test "visiting the index" do
    visit text_renders_url
    assert_selector "h1", text: "Text renders"
  end

  test "should create text render" do
    visit text_renders_url
    click_on "New text render"

    click_on "Create Text render"

    assert_text "Text render was successfully created"
    click_on "Back"
  end

  test "should update Text render" do
    visit text_render_url(@text_render)
    click_on "Edit this text render", match: :first

    click_on "Update Text render"

    assert_text "Text render was successfully updated"
    click_on "Back"
  end

  test "should destroy Text render" do
    visit text_render_url(@text_render)
    click_on "Destroy this text render", match: :first

    assert_text "Text render was successfully destroyed"
  end
end
