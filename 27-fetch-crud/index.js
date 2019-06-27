
function slapOneToDoOnTheDOM(ol, toDoItem){
  const li = document.createElement("li");
  // console.log("list-item-" + toDoItem.id)
  li.id = "list-item-" + toDoItem.id
  li.class = "item"
  // console.log(toDoItem)
  li.innerHTML = `
    <input id="to-do-item-${ toDoItem.id }" type="checkbox" ${ toDoItem.done ? "checked" : "" } />
    <label for="to-do-item-${ toDoItem.id }" class="js-title middle aligned content">${ toDoItem.title }</label>
  `
  ol.append(li)
}

function slapToDosOnTheDOM(listItems){
  const ol = document.querySelector("#to-do-items")
  listItems.forEach(function(listItem){ 
    slapOneToDoOnTheDOM(ol, listItem)
  })
}

document.addEventListener("DOMContentLoaded", function(){
  const promise = fetch("http://localhost:3000/to-do-items")
  promise.then(response => response.json())
         .then(slapToDosOnTheDOM)


  const form = document.querySelector("#new-to-do")
  const ol = document.querySelector("#to-do-items")
  form.addEventListener("submit", function(event){
    event.preventDefault();
    fetch("http://localhost:3000/to-do-items", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({
        "title": form.title.value,
        "done": false
      })
    })
      .then(res => res.json())
      .then(data => slapOneToDoOnTheDOM(ol, data))
  })
}) 












