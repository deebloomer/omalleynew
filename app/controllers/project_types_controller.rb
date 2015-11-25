class ProjectTypesController < ApplicationController
  # GET /project_types
  # GET /project_types.json
  before_filter :logged_in_required#, except: [:index, :show] #bounce to homepage REMOVE THIS IF DB WANTS TO ADD PROJ
  before_filter :get_variables

  def index
    @project_types = ProjectType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @project_types }
    end
  end

  # GET /project_types/1
  # GET /project_types/1.json
  def show
    @project_type = ProjectType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project_type }
    end
  end

  # GET /project_types/new
  # GET /project_types/new.json
  def new
    @project_type = ProjectType.new
    @project_type.projects.build      #db you need this
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project_type }
    end
  end

  # GET /project_types/1/edit
  def edit
    @project_type = ProjectType.find(params[:id])
  end

  # POST /project_types
  # POST /project_types.json
  def create
    @project_type = ProjectType.new(approved_params)
    respond_to do |format|
      if @project_type.save!
        format.html { redirect_to @project_type, notice: 'Project type was successfully created.' }
        format.json { render json: @project_type, status: :created, location: @project_type }
      else
        format.html { render action: "new" }
        format.json { render json: @project_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /project_types/1
  # PUT /project_types/1.json
  def update
    @project_type = ProjectType.find(params[:id])
    respond_to do |format|
      if @project_type.update_attributes(approved_params)
        format.html { redirect_to @project_type, notice: 'Project type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_types/1
  # DELETE /project_types/1.json
  def destroy
    @project_type = ProjectType.find(params[:id])
    @project_type.destroy

    respond_to do |format|
      format.html { redirect_to project_types_url }
      format.json { head :no_content }
    end
  end


  def get_variables
    if params[:id]
      @project_type = ProjectType.all
    end
  end

  def approved_params
    params.require(:project_type).permit(:name, :running_order,
          projects_attributes: [:description, :design_team, :name, :project_type_id, :running_order]
    )
  end


end
