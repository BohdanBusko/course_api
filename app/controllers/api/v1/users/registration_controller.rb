class Api::V1::Users::RegistrationController < ApplicationController
  
  def create
    user = User.new(user_params)

    if user.save 
      head(:created)
    else
      render json: { error: user.errors.full_messages }
    end
  end

  private 

    def user_params
      params.permit(:full_name, :email, :password, :entrepreneur, :work_plays, :facebook, :phone)
    end
end