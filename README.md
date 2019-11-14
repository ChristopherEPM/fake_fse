# README


**Run the initial migration:** `rake db:migrate`
**Populate the database:** `rake db:seed`
**Start the local server:** `rails s` 
Now we can do post petitions  to our endpoint  `http://localhost:3000/rests/usecases`
The params to use in the post are  **role**, **app** and **user**.
We will get a json response with the data (if valid) or with the errors 