class TestimonialsController < ApplicationController
  # GET /testimonials
  # GET /testimonials.json
  before_filter :logged_in_required, except: [:index] #bounce to homepage REMOVE THIS IF DB WANTS TO ADD TESTIM
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_testimonial
  before_filter :get_variables

  def index
    @testimonials = Testimonial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @testimonials }
    end
  end

  # GET /testimonials/1
  # GET /testimonials/1.json
  def show
    @testimonial = Testimonial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testimonial }
    end
  end

  # GET /testimonials/new
  # GET /testimonials/new.json
  def new
    @testimonial = Testimonial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @testimonial }
    end
  end

  # GET /testimonials/1/edit
  def edit
    @testimonial = Testimonial.find(params[:id])
  end

  # POST /testimonials
  # POST /testimonials.json
  def create
    @testimonial = Testimonial.new(testimonial_params)
    respond_to do |format|
      if @testimonial.save
        format.html { redirect_to @testimonial, notice: 'Testimonial was successfully created.' }
        format.json { render json: @testimonial, status: :created, location: @testimonial }
      else
        format.html { render action: "new" }
        format.json { render json: @testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testimonials/1
  # PATCH/PUT /testimonials/1.json
  def update
    @testimonial = Testimonial.find(params[:id])
    respond_to do |format|
      if @testimonial.update_attributes(testimonial_params)
        format.html { redirect_to @testimonial, notice: 'Testimonial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testimonials/1
  # DELETE /testimonials/1.json
  def destroy
    @testimonial = Testimonial.find(params[:id])
    @testimonial.destroy

    respond_to do |format|
      format.html { redirect_to testimonials_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def testimonial_params
      params.require(:testimonial).permit(:description, :email, :name, :company, :title)
    end

  def get_variables
    @testimonials = Testimonial.all
    @projects = Project.all

  end
  def invalid_testimonial
    logger.error "attempt to access invalid project #{params[:id]}"
    flash[:notice] = "Sorry, I couldn't find that!"                # this does not seem to work
    redirect_to testimonials_url
  end
end
