require "test_helper"

class TextRendersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @text_render = text_renders(:one)
  end

  test "should get index" do
    get text_renders_url
    assert_response :success
  end

  test "should get new" do
    get new_text_render_url
    assert_response :success
  end

  test "should create text_render" do
    assert_difference("TextRender.count") do
      post text_renders_url, params: { text_render: {  } }
    end

    assert_redirected_to text_render_url(TextRender.last)
  end

  test "should show text_render" do
    get text_render_url(@text_render)
    assert_response :success
  end

  test "should get edit" do
    get edit_text_render_url(@text_render)
    assert_response :success
  end

  test "should update text_render" do
    patch text_render_url(@text_render), params: { text_render: {  } }
    assert_redirected_to text_render_url(@text_render)
  end

  test "should destroy text_render" do
    assert_difference("TextRender.count", -1) do
      delete text_render_url(@text_render)
    end

    assert_redirected_to text_renders_url
  end
end
