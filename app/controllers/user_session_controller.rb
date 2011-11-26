class UserSessionController < Devise::SessionsController

  def index
    super
  end

  def create

    resource = warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#new")
    set_flash_message(:notice, :signed_in) if is_navigational_format?
    sign_in(resource_name, resource)

    respond_with resource, :location => reviews_url
  end

  def destroy
    super
  end

  def new
    super
  end

  def edit
    super
  end

end
