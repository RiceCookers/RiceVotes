module SignInHelper
  def sign_in_as(user = users(:one))
    @controller.instance_variable_set(:@user, @user)
  end
end