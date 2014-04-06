class PagesController < ApplicationController
  before_action :authenticate!, only: [:dashboard]
  def home
  end
end
