class StaticPagesController < ApplicationController
  skip_before_action :authorize
  def faq
  end

  def about
  end

  def contact
  end
end
