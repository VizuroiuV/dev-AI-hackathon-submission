Homeowner Register
EWH-0
As a Homeowner,
I want to create an account on the Eco Wise Home Hub system,
So I can manage and monitor my home’s energy usage and carbon footprint
ACCEPTANCE CRITERIA
Shows heading 'Register as a Homeowner'
Displays a registration form with the following fields:
Full Name (text field, required, maximum 256 characters)
Email (email field, required, maximum 256 characters, must be valid email address)
Password (password field, required, minimum 8 characters)
Confirm Password (password field, required, must match password field)
Shows 'Register with Google/Facebook' buttons. On click of either
Takes users through the OAuth process for the selected social media platform
After successful authentication, captures and pre-fills Full Name and Email address from the social media account
After pre-filling, prompts the user to add Password and Confirm Password
Shows 'Register' button, on click
Validates all fields
If any details are incorrect
Shows validation messages against relevant fields
Users must resolve the issues before continuing
If details are correct
Successfully registers the user as a Homeowner
Redirects to #Homeowner Login 
Registration must be secure and guard against any breaches or unauthorized access