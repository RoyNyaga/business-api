# Business-api interview by Cloud Optik

### About

This is a take home interview assessment for a full-stack developer role at Cloud Optik. The application enables the creation and retrival of Businesses.

### Technologies

- Ruby 3.0.0
- Ruby on Rails 6.1.3
- Postgresql
- API

### Running the project locally

- Make sure you have postgresql and Ruby installed in your computer.
- Clone the application using the command 
`git@github.com:RoyNyaga/business-api.git`
- cd the project folder and setup the project using the command
`rails db:setup`
this will create a development and a test database, run migrations and generate seeds.
- run the development server using the command
`rails s`

### End Points
- createing businesses
`POST http://localhost:3000/api/v1/businesses`
- retriving businesses
`GET http://localhost:3000/api/v1/businesses`

### Testing
- Run the complete set of test cases with 
`rspec`
