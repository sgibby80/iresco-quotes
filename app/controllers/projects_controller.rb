class ProjectsController < ApplicationController
    
    
    def new
  @project = Project.new
    
  end
  
  
    def create
  @project = Project.new(project_params)
     
    if @project.save
      redirect_to @project
    else
      render 'form'
    end
  
  end
  
    def edit
   @project = Project.find(params[:id])
    end

    
  def update
    @project = Project.find(params[:id])
    
    if @project.update(project_params)
      redirect_to @project
    else
      render 'edit'
    end
  end
  
  
    def show
   @project = Project.find(params[:id])
    end
  
    def index
     @projects = Project.all
  end
  
    def project_params
      params.require(:project).permit(:jobno, :client, :price, :startdate, :description, :edwgs, :weightkgs, :weightlbs, :members, :jobname, :detailhours)
    end
  

    
end
