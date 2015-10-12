myApp.factory('dataFactory', function($http) {
  /** https://docs.angularjs.org/guide/providers **/
  var urlBase = 'http://localhost:3000/api/v1/products';
  var _prodFactory = {};

  _prodFactory.getProducts = function() {
    return $http.get(urlBase);
  };

  // _todosFactory.saveTodo = function(todo) {
  //   return $http.post(urlBase, todo);
  // };

  // _todosFactory.updateTodo = function(todo) {
  //   return $http.put(urlBase, todo);
  // };

  // _todosFactory.deleteTodo = function(id) {
  //   return $http.delete(urlBase + '/' + id);
  // };

  return _prodFactory;
});
