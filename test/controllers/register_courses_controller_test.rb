require 'test_helper'

class RegisterCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @register_course = register_courses(:one)
  end

  test "should get index" do
    get register_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_register_course_url
    assert_response :success
  end

  test "should create register_course" do
    assert_difference('RegisterCourse.count') do
      post register_courses_url, params: { register_course: {  } }
    end

    assert_redirected_to register_course_url(RegisterCourse.last)
  end

  test "should show register_course" do
    get register_course_url(@register_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_register_course_url(@register_course)
    assert_response :success
  end

  test "should update register_course" do
    patch register_course_url(@register_course), params: { register_course: {  } }
    assert_redirected_to register_course_url(@register_course)
  end

  test "should destroy register_course" do
    assert_difference('RegisterCourse.count', -1) do
      delete register_course_url(@register_course)
    end

    assert_redirected_to register_courses_url
  end
end
