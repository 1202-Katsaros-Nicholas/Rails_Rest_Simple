# Rails_Rest_Simple
A simple notes app made to demonstrate what is possible with the Rails REST Framework.

# Usage instructions

Make sure you have rails installed, then clone this repository and run:
rails server
from the notes_api directory.

The following commands are available for api usage:
Create note:
Example usage: curl -X POST http://localhost:3000/notes -H "Content-Type: application/json
" -d '{"title": "Sample Note", "content": "Hello World!"}'

View all notes:
Example usage: curl http://localhost:3000/notes

View a specific note:
Example usage: curl http://localhost:3000/notes/1

Update a note:
Example usage: curl -X PUT http://localhost:3000/notes/1 -H "Content-Type: application/jso
n" -d '{"title": "New Title"}'

Delete a note:
Example usage: curl -X DELETE http://localhost:3000/notes/1