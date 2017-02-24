class CategoriesController < ApplicationController
	load_and_authorize_resource
  before_action :authenticate_user!, except: [:index,:show]
	
	def index
		@categories = Category.all
	end

    def new
	    @category = Category.new
    end
		
	def edit
		@category = Category.find(params[:id])
    end

    def update
		@category = Category.find(params[:id])
		if @category.update_attributes(category_params)
			redirect_to category_path(@category), notice: "successfully updated"
        end
    end


    def destroy
		@category = Category.find(params[:id])
		if @category.destroy
			redirect_to categories_path(@category), notice: "successfully deleted"
        end   
    end 

    def show
    	@category = Category.find(params[:id])
        end

    def create
    	@category = Category.new(category_params)
        	if @category.save
        		redirect_to categories_path,  notice: 'Category was successfully created.'
        	else
        		render action: "new"
        	end
        end


    def category_params
    	params[:category].permit(:master_category_id, :name)
        end
end
