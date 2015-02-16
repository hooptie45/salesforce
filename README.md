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

NOTE: another branch exists (feature/js) which has the angular.js UI feature.  The README has a special note and can be found here: https://github.com/purpleundulations/salesforce/blob/feature/js/README.md
