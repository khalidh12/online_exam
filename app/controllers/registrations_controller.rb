class RegistrationsController < Devise::RegistrationsController
  skip_before_filter :verify_authenticity_token

  def index
    @users = User.all
  end
  def show
    @user = current_user
  end


  def create
    @user = User.new(sign_up_params)
    
  # if verify_recaptcha(model: @user) && @user.valid?
  if @user.valid?
    @user.role = "user"
      @user.save
      flash[:notice] = "Success"
      redirect_to login_url, :notice => "email sent to <span class='text-danger'><b> <strong>#{@user.email}</strong></b></span>, please Verify Your email "
      # redirect_to emailnotification_url(@user), status: :found
      # redirect_to :controller => 'emailnotification'
    else
      flash[:notice] = "Please check your inputs"
      render :new
    end
  end


 def destroy
    Devise::Mailer#reset_password_instructions
    # CancelAccount.cancel_account(@user.email, @user.id).deliver
    @user=current_user
    @user.delete
    flash[:notice] = "Bye! Your account has been successfully cancelled. We hope to see you again soon."
    redirect_to "/"
  end
 
  private

  def sign_up_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation, :mobile, :district)
  end

end