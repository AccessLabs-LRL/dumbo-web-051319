
function destroyToDo(event){
  const id = event.currentTarget.dataset.id
  const loader = document.getElementById("loader-" + id)
  event.currentTarget.classList.add("loading");
  fetch(`http://localhost:3000/to-do-items/${ id }`, {
    method: "DELETE"
  }).then(() => {
    document.getElementById("list-item-" + id).remove()
  })
}

function toggleDone(event){
  event.preventDefault();
  event.stopPropagation();
  const id = event.currentTarget.dataset.id
  const checkbox = document.getElementById(`task-${ id }-done`)
  const loader = document.getElementById("loader-" + id)
  loader.classList.add("active")
  fetch(`http://localhost:3000/to-do-items/${ id }`, {
    method: "PATCH",
    headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
    body: JSON.stringify({
      done: checkbox.checked
    })
  }).then(res => res.json())
    .then(data => {
      loader.classList.remove("active")
      checkbox.checked = data.done
    })
}


function slapToDoOnTheDOM(toDoItem){
  const li = document.createElement("li")
  li.id = "list-item-" + toDoItem.id
  li.className = "item"
  li.innerHTML = `
  <div class="ui toggle checkbox">
    <input data-id="${ toDoItem.id }" class="js-checkbox" id="task-${ toDoItem.id }-done" type="checkbox" name="example" ${ toDoItem.done ? "checked" : "" }>
    <label for="task-${ toDoItem.id }-done">${ toDoItem.title }</label>
  </div>
  <button class="js-delete-button delete-button ui red basic button right floated" data-id="${ toDoItem.id }">🗑</button>
  <span id="loader-${ toDoItem.id }" class="js-loader ui mini inline loader"></span>`
  li.querySelector(".js-checkbox").addEventListener("click", toggleDone)
  li.querySelector(".js-delete-button").addEventListener("click", destroyToDo)
  return li
}

function slapToDosOnTheDOM(toDoListElement, data) {
  toDoListElement.append(...data.map(slapToDoOnTheDOM))
}

function fetchToDos(element) {
  return fetch("http://localhost:3000/to-do-items")
    .then(res => res.json())
}

document.addEventListener("DOMContentLoaded", function(){
  const toDoListElement = document.getElementById("to-do-items");
  fetchToDos().then(data => slapToDosOnTheDOM(toDoListElement, data))
})