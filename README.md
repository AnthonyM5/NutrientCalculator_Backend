# README
Ruby Version:2.6.1

## Local Installation
- Clone this repository, and change into the correct directory.  Run bundle install to install all the necessary gems.  
- The database seed will require the following:
  + <a href="https://fdc.nal.usda.gov/api-key-signup.html">Food Data Central API Key:</a>(Simply Sign Up via Link)
- You will need to fire up your favorite editor and create a .env file to store your API Key (this will be called in the seed file as ENV['FDC_KEY']), via the <a href="https://github.com/bkeepers/dotenv">dotenv gem</a>
- Run all necessary migrations  
  + ```$ rails db:migrate```
- Seed the Database: (!! Warning this will take a considerable amount of time, there are over 7,000 records each with unique nutrient attributes !!) 
  + ```$ rake db:seed``` 


