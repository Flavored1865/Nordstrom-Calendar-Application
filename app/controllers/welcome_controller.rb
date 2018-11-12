class WelcomeController < ApplicationController
  before_action :require_login, only: [:show, :edit, :update, :destroy, :new, :index]
  def show

  end
end