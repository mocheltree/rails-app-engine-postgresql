class VisitorsController < ApplicationController
  before_action :set_visitor, only: :destroy

  def index
    @visitor = Visitor.new
    @visitors = Visitor.all
  end

  def create
    @visitor = Visitor.new(visitor_params)
    @visitor.save

    redirect_to visitors_path
  end

  def destroy
    @visitor.destroy

    redirect_to  visitors_path
  end

  private
    def set_visitor
      @visitor = Visitor.find(params[:id])
    end

    def visitor_params
      params.require(:visitor).permit(:name, :fav_color)
    end
end
