
1.  Created file tree with corneal
2.  Created user class and table with corneal model
3.  Created character class and table with corneal model
4.  Added has_many to user model and belongs_to to character model
5.  Added games folder to app/views
6.  Added sessions folder to app/views

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
