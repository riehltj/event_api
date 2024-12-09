class Accounts::SessionsController < Devise::SessionsController
  protected

  before_action :test_action, only: [:new, :create] # Adjust based on your needs


  def test_action
    puts ">>>> Custom Sessions Controller is being called"
  end

  def after_sign_in_path_for(resource)
    types_path # or any other path you want
  end
end
