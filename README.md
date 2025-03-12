# Rails_Rest_Simple
A simple notes app made to demonstrate what is possible with the Rails REST Framework.

# Usage instructions

Make sure you have rails installed, then clone this repository and run:
```rails server```
from the notes_api directory.

The following API requests are available(examples given):
Create note: ```curl -X POST http://localhost:3000/notes -H "Content-Type: application/json
" -d '{"title": "Sample Note", "content": "Hello World!"}'```

View all notes: ```curl http://localhost:3000/notes```

View a specific note: ```curl http://localhost:3000/notes/1```

Update a note: ```curl -X PUT http://localhost:3000/notes/1 -H "Content-Type: application/jso
n" -d '{"title": "New Title"}'```

Delete a note: ```curl -X DELETE http://localhost:3000/notes/1```
