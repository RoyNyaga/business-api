# Business-API interview by Cloud Optik

### About

This is a take-home interview assessment for a full-stack developer role at Cloud Optik. The application enables the creation and retrieval of Businesses.

### Technologies

- Ruby 3.0.0
- Ruby on Rails 6.1.3
- Postgresql
- API

### Running the project locally

- Make sure you have PostgreSQL and Ruby installed on your computer.
- Clone the application using the command 
`git clone git@github.com:RoyNyaga/business-api.git`
- cd the project folder and set up the project using the command
`rails db:setup`
this will create a development and a test database, run migrations and generate seeds.
- run the development server using the command
`rails s`

### End Points
- creating businesses
`POST http://localhost:3000/api/v1/businesses`
- retrieving businesses
`GET http://localhost:3000/api/v1/businesses`

### Testing
- Run the complete set of test cases with 
`rspec`