require "application_system_test_case"

class TodosTest < ApplicationSystemTestCase
  test 'create todo' do
    skip
    visit root_url

    find('input').set('Learn some gql')
    find('input').native.send_keys(:return)

    assert_equal Todo.last.text, 'Learn some gql'
  end

  test 'mark todo as completed' do
    skip
    visit root_url

    click_link(Todo.first.text)

    assert Todo.find(1).completed
  end

  test 'clear completed todos' do
    skip
    visit root_url
    click_button 'Clear completed todos'

    assert_nil Todo.find_by(id: 3)
  end

end
