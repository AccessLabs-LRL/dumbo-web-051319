# Part I

* AUTHENTICation
  - Who are you?
* AUTHORization
  - Gives you the right to do certain tasks

# Key questions for Authentication
*  What is the difference between Authorization and Authentication?

*  What is hashing and how does it make password storage more secure?
  'password123' -> "eghdaoihjgoiadogihadigildhilbv.gjdhgiuhadoiuvh"
  'iLoveLabs' -> "fibhfiobh./dgkhdibhidfoibjfiobidflbjilfdh"

*  What are rainbow tables and how can they defeat a password hashing strategy?
  'abc123' -> "gierhjgioadjiogjdalijij.sfhdbvkhjciobhjifojg"
  'abc321' -> "dgkjfdhbkudnlf.hgijdfjboifjhgjhgjmgmghmghnfh"
  'abc123' -> "gierhjgioadjiogjdalijij.sfhdbvkhjciobhjifojg"

*  What is salting? What is a salt? How can it defeat a rainbow tables attack?
  'abc123' -> 'abc123ifjbkghnk' -> "ihgjoirhbirdjilvbjrilbvjildfl.dfgidigvjndiv"
  'abc123' -> 'abc123seasalt' -> "bjkdfnbjkcnbvdvadf.fdsajvdnvdbnlbgijeigjd"

## Let's implement
BCrypt

* Sign up
* Log in

# Part II

# Key questions for Authorization
* How do we keep track of which user has logged in?
* How can we display who's logged in?
* How can we limit user behavior based on who's logged in?
* How do we log out?

## Let's implement

* List of a user's votes
* Delete a vote
* Log out
  * Route
  * View
