require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase

  test "visiting the index" do
    visit tasks_url

    assert_selector "h1", text: "Task"
  end

  test "creating a new task" do
    visit tasks_url

    click_on "New Task"

    fill_in "Title", with: "Task Title"
    fill_in "Description", with: "Task Description"

    click_on "Submit Task"

    assert_text "Task was successfully created."
  end

  test "getting information about the task" do
    visit tasks_url

    first(:link, "Show").click

    assert_test "Name:"
    assert_text "Description:"
  end

  test "updating a task" do
    visit tasks_url

    first(:link, "Edit").click

    fill_in "Title", with: "Task Title"
    fill_in "Description", with: "Task Description"

    click_on "Update Task"

    assert_text "Task was successfully updated."
  end

  test "deleting a task" do
    visit tasks_url
    first(:link, "Destroy").click

    assert_text "Are you sure"

    click_on "OK"

    assert_text "Task was successfully destroyed."
  end

end
