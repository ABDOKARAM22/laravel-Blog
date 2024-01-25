# Laravel Blog

## Project Description

The Laravel Blog project is a web application based on the Laravel framework, utilizing the MySQL database. The project includes a user authentication system, allowing each registered user to publish, edit, and delete their own articles, in addition to browsing all articles.

## Technologies Used

- Laravel
- MySQL

## Project Features

- **User Authentication System:** Secure user registration and login functionality.
- **Article Management:**
  - *Publishing:* Users can create and publish their articles.
  - *Editing:* Users have the ability to edit their own articles.
  - *Deletion:* Users can delete their own articles.
- **Browse All Articles:** Users can view all published articles on the platform.


## How to Run the Project

1. **Prerequisites**
   - Ensure that PHP and Composer are installed on your computer.

2. **Installation and Execution**
   ```bash
   composer install
   cp .env.example .env
   php artisan key:generate
   There is a database file in the database folder. Export it to phpmyadmin
   php artisan serve

- to login use any email
- email / example11@gmail.com password / 123456789 
- email / example22@gmail.com password / 123456789
