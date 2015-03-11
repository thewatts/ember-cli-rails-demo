class AdminController < ApplicationController
  before_action :ensure_trailing_slash, only: :index

  layout "admin"

  def index
  end

  private

  def ensure_trailing_slash
    unless trailing_slash?
      redirect_to url_for(params.merge(trailing_slash: true)), status: 301
    end
  end

  def trailing_slash?
    request.env['REQUEST_URI'].match(/[^\?]+/).to_s.last == '/'
  end
end
