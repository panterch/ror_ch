require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = Fabricate(:job)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create job' do
    assert_difference('Job.count') do
      post :create, job: { description: @job.description, short_description: @job.short_description, title: @job.title, url: @job.url }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test 'should show job' do
    get :show, id: @job
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @job
    assert_response :success
  end

  test 'should update job' do
    patch :update, id: @job, job: { description: @job.description, short_description: @job.short_description, title: @job.title, url: @job.url }
    assert_redirected_to job_path(assigns(:job))
  end

  test 'should destroy job' do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to root_path
  end
end
