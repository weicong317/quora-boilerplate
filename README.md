# Quora Boilerplate

This is a boilerplate app for quora-clone. It will be used to build quora-clone  and help you learn web server fundamentals such as HTTP(GET/POST), RESTful Routes, Cookies and the MVC Framework.

### Folder Structure
The directory structure emulates Rails MVC Framework using Sinatra.
```
quora-boilerplate
  ├─ config/
  │  ├── database.rb
  │  └── init.rb
  ├─ controllers/                       
  ├─ db/
  │  └── migrate/                       
  ├─ helpers/
  ├─ models/            
  ├─ public/
  │  ├── css
  │  └── js
  ├─ views/
  │  └── application.erb
  ├─ Rakefile
  ├─ README.md
  ├─ app.rb
  └─ Gemfile
```

### Getting Started
1. Run ```bundle install``` to install all gem dependencies
2. Start the server by running ```ruby app.rb```

#### Note:
Everytime you change a file, you will need to restart the  server.