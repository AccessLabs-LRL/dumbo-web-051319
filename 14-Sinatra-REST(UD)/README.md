# SWBAT
* Explain REST (Representational State Transfer)
   - Convention of naming files and paths
   - Template for the path + views
   - Architecture pattern (Convention over configuration)

* Demonstrate how REST is used with CRUD

STUDENT MODEL

Create
  GET '/students/new' - to get the form to be able to create a student
  POST '/students' - Create a new student

Read
  GET '/students' - Reading ALL of the instances in our database
  GET '/students/:id' - Reading information about one individual student

Update

  GET '/students/:id/edit' - to get the form to be able to edit a students
  PATCH '/students/:id' - Update a student in our database

Delete

  DELETE '/students/:id' - Delete a student in our database
  

* Build out CRUD using Sinatra

# RESTful CRUD
* Reading ✅
* New ✅
* Creating ✅
  * Form ✅
  * Mass assignment ✅
* Edit form
  * Nested params?
* Updating
  * One small caveat
* Deleting

# Params
Where does params come from? What information can be found in it?

## If we have time
* Refactoring
  * helper methods
  * partials
