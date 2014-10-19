class SessionsController < ApplicationController
  def create
    logger.debug auth_hash.to_yaml
    # find or create user from auth hash
    # set current user
    redirect_to root_path, notice: "Successfully signed in!"
  end

  def failure
    flash[:error] = "Authentication failed!"
    redirect_to root_path
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
