require 'test_helper'

class RestolinasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restolina = restolinas(:one)
  end

  test "should get index" do
    get restolinas_url
    assert_response :success
  end

  test "should get new" do
    get new_restolina_url
    assert_response :success
  end

  test "should create restolina" do
    assert_difference('Restolina.count') do
      post restolinas_url, params: { restolina: { Menu: @restolina.Menu, login: @restolina.login } }
    end

    assert_redirected_to restolina_url(Restolina.last)
  end

  test "should show restolina" do
    get restolina_url(@restolina)
    assert_response :success
  end

  test "should get edit" do
    get edit_restolina_url(@restolina)
    assert_response :success
  end

  test "should update restolina" do
    patch restolina_url(@restolina), params: { restolina: { Menu: @restolina.Menu, login: @restolina.login } }
    assert_redirected_to restolina_url(@restolina)
  end

  test "should destroy restolina" do
    assert_difference('Restolina.count', -1) do
      delete restolina_url(@restolina)
    end

    assert_redirected_to restolinas_url
  end
end
