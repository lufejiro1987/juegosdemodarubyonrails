class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end
    def new
        @category = Caterory.new
    end
    def create
        @category = Category.new(category_params)
        if @category.save
            redirect_to root_path, notice: 'categoria añadida'
        else
            render :new
        end
    end

    def destroy
        @category = Category.find(params[:id])
        @category.destroy
        redirect_to categories_path, notice: 'categoria eliminada'
    end

    private
    def category_params
        params.require(:category).permit(:name)
    end
end

    