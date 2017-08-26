# コントローラーを定義する。今はこのように記載すると覚えておけば良い。
angular.module('sampleApp').controller "TodoListCtrl", ($scope) ->

  # 初期データを用意するメソッド
  $scope.init = ->
    $scope.list = {
      'name'  : 'Todoリスト1',
      'todos' : [
        { 'description' : 'todo description1', 'completed' : false },
        { 'description' : 'todo description2', 'completed' : false }
      ]
    }

  $scope.addTodo = (todoDescription) ->
    # todoを作成する
    todo = { 'description' : todoDescription, 'completed' : false }



  # todoを追加する
  $scope.addTodo = (todoDescription) ->
    # 新しいtodoを作成する
    todo = { 'description' : todoDescription }

    # initメソッドで用意したtodosの一番最初にtodoを追加する
    $scope.list.todos.unshift(todo)

    # Todo入力テキストフィールドを空にする1
    $scope.todoDescription = ""


  # todoを削除する
  $scope.deleteTodo = (todo) ->
    # indexOfメソッドでtodoのindexを探し、spliceメソッドで削除する
    $scope.list.todos.splice($scope.list.todos.indexOf(todo), 1)
