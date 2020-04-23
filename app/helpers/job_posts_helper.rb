module JobPostsHelper
  def authenticate_employer(job_post)
    return unless is_employer?
    current_user.employer.id == job_post.employer.id
  end

  def is_employer?
    return unless current_user
    current_user.employer?
  end
end
