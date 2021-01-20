class HomesController < ApplicationController
  before_action :authenticate_user!,except: [:top, :index]

  def top
  end

end
