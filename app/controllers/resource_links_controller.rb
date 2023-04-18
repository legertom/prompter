class ResourceLinksController < ApplicationController
    before_action :set_resource_link, only: %i[ show edit update destroy ]

    def index
        @resource_links = ResourceLink.includes(:resource_category).all
    end

    def show
    end

    def new
        @resource_link = ResourceLink.new
    end

    def edit
    end

    def create
        @resource_link = ResourceLink.new(resource_link_params)

        respond_to do |format|
            if @resource_link.save
                format.html { redirect_to @resource_link, notice: "Resource link was successfully created." }
                format.json { render :show, status: :created, location: @resource_link }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @resource_link.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        if @resource_link.update(resource_link_params)
            redirect_to @resource_link, notice: "Resource link was successfully updated."
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @resource_link.destroy
        redirect_to resource_links_url, notice: "Resource link was successfully destroyed."
    end

    private
    def set_resource_link
        @resource_link = ResourceLink.find(params[:id])
    end

    def resource_link_params
        params.require(:resource_link).permit(:title, :url, :description, :image_url, :resource_category_id)
    end

end
