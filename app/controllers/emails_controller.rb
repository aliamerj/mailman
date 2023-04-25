class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)
    if @email.save
      flash[:success] = "Email successfully created"
      redirect_to @email
      sending_notification_to_All(@email)
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @email = Email.find(params[:id])
  end


  private

  def email_params
    params.require(:email).permit(:subject, :body)
  end


end
