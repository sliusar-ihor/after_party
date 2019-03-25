namespace :after_party do
  desc 'Deployment task: a_description_of_said_task'
  task z_first: :environment do
    puts "Running deploy task 'a_first_task_that_i_need_to_run'"

    # Put your task implementation HERE.

    # Update task as completed.  If you remove the line below, the task will
    # run with every deploy (or every time you call after_party:run).
    AfterParty::TaskRecord
      .create version: AfterParty::TaskRecorder.new(__FILE__).timestamp
  end # task :a_first_task_that_i_need_to_run
end # namespace :after_party
