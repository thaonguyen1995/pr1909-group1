require "application_system_test_case"

class JobPostsTest < ApplicationSystemTestCase
  setup do
    @job_post = job_posts(:one)
  end

  test "visiting the index" do
    visit job_posts_url
    assert_selector "h1", text: "Job Posts"
  end

  test "creating a Job post" do
    visit job_posts_url
    click_on "New Job Post"

    fill_in "Employer", with: @job_post.employer_id
    fill_in "Job description", with: @job_post.job_description
    fill_in "Job expired date", with: @job_post.job_expired_date
    fill_in "Job location", with: @job_post.job_location
    fill_in "Job status", with: @job_post.job_status
    fill_in "Job type", with: @job_post.job_type
    fill_in "Post priority", with: @job_post.post_priority
    fill_in "Post title", with: @job_post.post_title
    fill_in "Salary max", with: @job_post.salary_max
    fill_in "Salary min", with: @job_post.salary_min
    click_on "Create Job post"

    assert_text "Job post was successfully created"
    click_on "Back"
  end

  test "updating a Job post" do
    visit job_posts_url
    click_on "Edit", match: :first

    fill_in "Employer", with: @job_post.employer_id
    fill_in "Job description", with: @job_post.job_description
    fill_in "Job expired date", with: @job_post.job_expired_date
    fill_in "Job location", with: @job_post.job_location
    fill_in "Job status", with: @job_post.job_status
    fill_in "Job type", with: @job_post.job_type
    fill_in "Post priority", with: @job_post.post_priority
    fill_in "Post title", with: @job_post.post_title
    fill_in "Salary max", with: @job_post.salary_max
    fill_in "Salary min", with: @job_post.salary_min
    click_on "Update Job post"

    assert_text "Job post was successfully updated"
    click_on "Back"
  end

  test "destroying a Job post" do
    visit job_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job post was successfully destroyed"
  end
end
