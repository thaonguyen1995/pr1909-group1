class JobPostsController < ApplicationController
  before_action :get_job_post, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
  before_action :is_employer, except: :show
=======
>>>>>>> create and validate model job post

  # GET /job_posts
  # GET /job_posts.json
  def index
<<<<<<< HEAD
    @job_posts = JobPost.find current_user.employer.job_post.ids
=======
    @job_posts = JobPost.all
>>>>>>> create and validate model job post
  end

  # GET /job_posts/1
  # GET /job_posts/1.json
  def show
  end

  # GET /job_posts/new
  def new
    @job_post = JobPost.new
  end

  # GET /job_posts/1/edit
  def edit
  end

  # POST /job_posts
  # POST /job_posts.json
  def create
    @job_post = JobPost.new(job_post_params)
<<<<<<< HEAD
    @job_post.employer_id = current_user.employer.id
    respond_to do |format|
=======

    respond_to do |format|
      params[employer_id: 2]
>>>>>>> create and validate model job post
      if @job_post.save
        format.html { redirect_to @job_post, notice: 'Job post was successfully created.' }
        format.json { render :show, status: :created, location: @job_post }
      else
        format.html { render :new }
        format.json { render json: @job_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_posts/1
  # PATCH/PUT /job_posts/1.json
  def update
    respond_to do |format|
      if @job_post.update(job_post_params)
        format.html { redirect_to @job_post, notice: 'Job post was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_post }
      else
        format.html { render :edit }
        format.json { render json: @job_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_posts/1
  # DELETE /job_posts/1.json
  def destroy
    @job_post.destroy
    respond_to do |format|
      format.html { redirect_to job_posts_url, notice: 'Job post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
<<<<<<< HEAD
<<<<<<< HEAD

  def get_job_post
    @job_post = JobPost.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def job_post_params
    params.require(:job_post).permit(:job_location, :job_type, :salary_min, :salary_max,
                                     :post_title, :job_description, :job_expired_date)
  end

  def is_employer
    redirect_to :new_user_session unless current_user && current_user.employer?
  end
=======
    # Use callbacks to share common setup or constraints between actions.
    def get_job_post
      @job_post = JobPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_post_params
      params.require(:job_post).permit(:employer_id, :job_location, :job_type, :job_status, :post_priority, :salary_min, :salary_max, :post_title, :job_description, :job_expired_date)
    end
>>>>>>> create and validate model job post
=======

  def get_job_post
    @job_post = JobPost.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def job_post_params
    params.require(:job_post).permit(:employer_id, :job_location, :job_type, :job_status, :post_priority,
                                     :salary_min, :salary_max, :post_title, :job_description, :job_expired_date)
  end
>>>>>>> create and validate job post
end
