# Mio Pomodoro

### [Mio Pomodoro Front End Deployed Site](https://allanolive.github.io/mio-pomodoro-client/#/)

### [Mio Pomodoro Back End Deployed Site](https://sheltered-springs-72893.herokuapp.com/)

#### [Mio Pomodoro Tracker Api Repository](https://github.com/allanolive/mio-pomodoro-api)

![](https://i.imgur.com/ib0SEnw.png)

## App Description

Mio Pomodoro is my version of the pomodoro timer, a working or studying methodology in which a lot of people are more productive while taking regular breaks from work and clearing your head before returning. In this app you are able to sign in and create your own work/break timer that keeps track of your work minutes and break minutes continuously. You can update existing timers =, delete them, and keep the ones you mos frequently use so you can start working at the click of a button.


## Technologies Used

Front End| Back End
------------ | -------------
HTML / CSS | Ruby
JavasScript | Rails
Bootstrap | PostgreSQL
React  |  Active Record
Git  |  Git
Github  |  Heroku
DOM  |  JSON
Curl  |  Curl

## Future Updates

- Next up for Mio Pomodoro will be having a alarm sound after easch work.break session
- Offer options for choosing themes, making it a open source so fellow developers can have fun creating new themes and enriching the app with new features.
- Offer more insight on the pomodoro and studies backing up the idea.
- Enhance landing page with a preview of a working pomodoro timer that works without having to log in



## Developmental Process

- First thing I did was create a back end Api and database using rails, with two resources, users and pomodoros
- creted a relatioship between those to as user has many pomodoros and pomodoro belongs to user, a one to many relationship
- Next I used Curl Scripts to test my authentication and CRUD resources.
- After that I jumped on the front end and created my React skelleton.
- I created a timer logic that and some styling logic such as the fill effect.
- I used curl scripts to check if everything was ok from the front end standpoint.
- Styled and deployed.

## A catalog of routes

#### authentication

| verb   | path | parameters |
| ------ | ---- | ---------- |
| POST   | `/sign-up` | `credentials` containing `email`, `password`, `password_confirmation` |
| POST   | `/sign-in` | `credentials` containing `email` and `password` (response contains auth data) |
| PATCH  | `/change-password` | `passwords` containing `old` and `new` (requires Authorization header) |
| DELETE | `/sign-out` | None (requires Authorization header) |

#### resources

| verb   | path | parameters |
| ------ | ---- | ---------- |
| POST   | `/pomodoros` | `pomodoro` containing `work_time`, `break_time` requires Authorization header)|
| GET   | `/pomodoros/:id` | None (requires Authorization header) |
| PATCH  | `/pomodoros/:id` | `pomodoro` containing `work_time`, `break_time` requires Authorization header)|
| GET | `/pomodoros` | None (requires Authorization header) |
| DELETE | `/pomodoros/:id` | None (requires Authorization header) |
## Installation and Instructions

- fork and clone both the repositories
- run npm install in the client directory
- run bundle install in the api directory
- run npm start on the client and bin/rails server on the api directory
- enjoy the timer, and feel free to contribute with any cool ideas you might have

## ERD Diagram

![](https://i.imgur.com/UxJS6Un.jpg)

### User stories

![](https://i.imgur.com/CpCQCIZ.jpg)
