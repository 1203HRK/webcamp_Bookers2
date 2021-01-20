class HomesController < ApplicationController
  before_action :authenticate_user!,except: [:index,]

  def top
  end

end
