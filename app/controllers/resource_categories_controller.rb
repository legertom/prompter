class ResourceCategoriesController < ApplicationController
    def index
      @resource_categories = ResourceCategory.all
    end
  
    def show
      @resource_category = ResourceCategory.find(params[:id])
    end
  
    def new
      @resource_category = ResourceCategory.new
    end
  
    def create
      @resource_category = ResourceCategory.new(resource_category_params)
      if @resource_category.save
        redirect_to @resource_category, notice: 'Resource category was successfully created.'
      else
        render :new
      end
    end
  
    def edit
      @resource_category = ResourceCategory.find(params[:id])
    end
  
    def update
      @resource_category = ResourceCategory.find(params[:id])
      if @resource_category.update(resource_category_params)
        redirect_to @resource_category, notice: 'Resource category was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @resource_category = ResourceCategory.find(params[:id])
      @resource_category.destroy
      redirect_to resource_categories_url, notice: 'Resource category was successfully destroyed.'
    end
  
    private
  
    def resource_category_params
      params.require(:resource_category).permit(:name)
    end
  end
  