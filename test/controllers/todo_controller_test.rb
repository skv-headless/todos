require 'test_helper'

class TodoControllerTest < ActionDispatch::IntegrationTest
  test 'should get todos' do
    query_string = '
      {
        todos {
          id
          text
          completed
        }
      }
    '
    res = TodosSchema.execute(query_string)

    assert res.to_h['data']['todos']
    assert_equal res.to_h['data']['todos'][0]['text'], todos[0].text
  end

  test 'should create todo' do
    skip
    text = 'New todo'
    response = Mutations::CreateTodo.new(object: nil, context: {}).resolve(text: text)
    assert_equal(response[:todo].text, text)
  end

  test 'should complete todo' do
    skip
    response = Mutations::UpdateTodo.new(object: nil, context: {}).resolve(id: todos[0].id, completed: true)
    assert response[:todo][:completed]
  end

  test 'should clear completed todos' do
    skip
    Mutations::ClearCompletedTodos.new(object: nil, context: {}).resolve
    assert_nil Todo.find_by(completed: true)
  end
end
