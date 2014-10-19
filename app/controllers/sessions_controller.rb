class SessionsController < ApplicationController
  def create
    logger.debug auth_hash.to_yaml

    user = User.find_or_create_by!(user_hash)
    session[:user_id] = user.id

    redirect_to root_path, notice: "Successfully signed in!"
  end

  def failure
    flash[:error] = "Authentication failed!"
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

  def user_hash
    {
      name:     auth_hash.info.name,
      uid:      auth_hash.uid,
      provider: auth_hash.provider,
    }
  end
end
