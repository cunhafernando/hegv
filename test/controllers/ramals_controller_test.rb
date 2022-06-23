require "test_helper"

class RamalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ramal = ramals(:one)
  end

  test "should get index" do
    get ramals_url
    assert_response :success
  end

  test "should get new" do
    get new_ramal_url
    assert_response :success
  end

  test "should create ramal" do
    assert_difference("Ramal.count") do
      post ramals_url, params: { ramal: { email: @ramal.email, setor: @ramal.setor, telefone: @ramal.telefone } }
    end

    assert_redirected_to ramal_url(Ramal.last)
  end

  test "should show ramal" do
    get ramal_url(@ramal)
    assert_response :success
  end

  test "should get edit" do
    get edit_ramal_url(@ramal)
    assert_response :success
  end

  test "should update ramal" do
    patch ramal_url(@ramal), params: { ramal: { email: @ramal.email, setor: @ramal.setor, telefone: @ramal.telefone } }
    assert_redirected_to ramal_url(@ramal)
  end

  test "should destroy ramal" do
    assert_difference("Ramal.count", -1) do
      delete ramal_url(@ramal)
    end

    assert_redirected_to ramals_url
  end
end
