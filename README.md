# salesforce desk.com app

The app provides a UI to perform the following operations:
  - Listing the available case filters and allowing a user to click on one.
  - Getting a list of cases available in the selected case filter and presenting them with their labels.
  - Getting a list of labels in the site and presenting them.
  - Creating a label and adding it to the list of labels.
  - Assigning a label to a case.

To get this working locally you simply need to:
  1. download the source
  2. run ```bundle install```
  3. run ```rails s``` from within the working dir of the app
  4. to run the tests execute ```rspec``` from within the working dir of the app

If you would like to see it working on Heroku, simply navigate to https://agile-cove-6334.herokuapp.com

NOTE: another branch exists (feature/js) which has the beginings of an angular.js UI feature.  When this feature was begun it was suspected to be not finishable within the time constraints of the project.  Therefore only the beginings are presented, and in a feature branch where they will not affect the deployed release of the fully functioning software, but are fully inspectable by a curious code reviewer.
