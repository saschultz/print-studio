# Print Studio

This application demonstrates user authentication for a small business website. A user who is not signed in can view the services and homepage, while users who are signed in have the added functionality to view and leave reviews to the services. If the user is an admin, they have the additional capability to add more services, edit a service, delete a service, or delete a user's review.

## Prerequisites

Web browser with ES6 compatibility
Examples: Chrome, Safari

## Installation/Setup

run commands:
  * git clone https://github.com/saschultz/print-studio.git
  * cd print-studio
  * bundle install
  * rails db:create
  * rails db:migrate
  * rails db:seed
  * rails s

  ## User Stories

    * As a user, I want to see basic information about the business on the landing page
    * As a user, I want to easily navigate to the other pages of the site from the landing page
    * As a user, I want to be able to create an account
    * As a user, I want to be able to log in to my account
    * As a user, I want to see all services the business offers
    * As a user, I want to see the specific details of a service when I click on it
    * As an authenticated user, I want to see reviews left for each service
    * As an authenticated user, I want to be able to leave a review for a service
    * As an admin, I want to add a new service
    * As an admin, I want to edit an existing service
    * As an admin, I want to delete a service  
