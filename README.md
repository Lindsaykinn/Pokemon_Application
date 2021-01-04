Need help with:
  putting image next to character name on show page
  


1.  Created file tree with corneal
2.  Created user class and table with corneal model
3.  Created character class and table with corneal model
4.  Added has_many to user model and belongs_to to character model
5.  Added welcome info to welcome.erb
6.  Added get welcome to applications controller
8.  Added sessions folder to app/views
9.  Added sessions_controller folder to app/controllers
10. Added get signup to sessions controller
11. Added use SessionsController to config.ru
12. Added form to sessions/signup.erb
13. Added characters_controller
14. Added characters folder to app/views
15. Went through process of adding new characters to views and controller
16. 



Get Routes

- index route - /characters (list of characters)
- show route - /characters/:id (showing more information about a character)
- new route - /characters/new (displaying a form to create a new character)
- edit route - /characters/:id/edit (displaying a form to edit a character)


Post Routes

- create route - /characters (creating a new character)

Patch Route

- update route - /characters/:id (updating a previous character)

Delete Route

- delete route - /characters/:id (deleting a character)


User Class
- username
- password
- has many characters

Character Class
- belongs to a user
- user id
- name
- weight
- height
- energy_type
  Grass , Fire , Water , Lightning , Psychic , Fighting , Darkness , Metal , or Fairy  Energy card.
- Status
  circle = common
  diamond = uncommon
  star = rare
- Hit Points (HP)
  integer
