class TopController < ApplicationController
  def index
    @posts = Post.all.where(created_at: (Date.today - 2.week)..)
  end
end
