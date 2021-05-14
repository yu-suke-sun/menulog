class MenusController < ApplicationController
  before_action :menu_find, only: [:show, :edit, :update, :destroy]
  # before_action :move_to_index, except: [:index, :show, :search]

  def index
    @menus = Menu.all.order("date DESC").order("category_id ASC")
  end

  def new
    @menu = Menu.new
  end

  def create
    Menu.create(menu_params)
  end

  def destroy
    @menu.destroy
  end

  def edit
  end

  def update
    def update
      if @menu.update(menu_params)
        redirect_to menu_path(@menu.id)
      else
        render :edit
      end
    end
  end

  def show
  end

  def search
    @menus = Menu.search(params[:keyword])
  end

  private

  def menu_params
    params.require(:menu).permit(:date, :category_id, :saki, :sakitext, :zen, :zentext, :zatu, :zatutext, :nimo, :nimotext, :yaki, :yakitext, :ai, :aitext, :syo, :syotext, :deza, :dezatext, images: [])
  end

  def menu_find
    @menu = Menu.find(params[:id])
  end

  # def move_to_index
  #   unless user_signed_in?
  #     redirect_to action: :index
  #   end
  # end

end