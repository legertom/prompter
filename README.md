# Promptitude
Promptitude is a list of prompts and materials related to writing prompts for AI. It is built using Ruby 3.1.0 and Rails 7, and is open-source for others to contribute to.

## Installation
To install and run Promptitude locally, follow these steps:

### Clone the repository.
- Install the required gems using bundle install.
- Set up the database using rails db:create and rails db:migrate.
- Start the server using rails server.
- Open localhost:3000 in your browser.

## Usage

Users can view and post jobs related to writing prompts for AI on Promptitude. Jobs can be filtered by category, location, and job type. Users can also create an account to save jobs and receive notifications about new job postings.

To post a job, users must create an account and log in. From there, they can create a new job posting with a title, description, category, job type, location, and salary. Once the job is posted, it will be visible to other users.

## Accessing the Prompts API
Promptitude uses ```active_model_serializers``` to make the prompts accessible to all users via API. 

To access the Prompts API, use the following endpoints:

```GET https://promptitude.org/api/v1/prompts```: Returns a list of all prompts.

```GET https://promptitude.org/api/v1/prompts/:id```: Returns a specific prompt by ID.


### Example Usage with JavaScript
To use the Prompts API in a JavaScript project, you can use the Fetch API. Here's an example of how to fetch all prompts and log the response data:
```javascript 
fetch('https://promptitude.org/api/v1/prompts')
  .then(response => response.json())
  .then(data => console.log(data))
  .catch(error => console.error('Error fetching prompts:', error));
```
And here's an example of how to fetch a specific prompt by ID:


```javascript
const promptId = 1; // Replace with the desired prompt ID

fetch(`https://promptitude.org/api/v1/prompts/${promptId}`)
  .then(response => response.json())
  .then(data => console.log(data))
  .catch(error => console.error('Error fetching prompt:', error));
```

## Future Versions
Promptitude is a growing project, and future versions will include the following features:

- Apply for jobs directly through the website.
- Integration with popular AI platforms to make it easier for job seekers to find relevant jobs.
- A better recommendation system for job seekers based on their preferences and past applications.
- A messaging system to allow job seekers and employers to communicate directly on the website.

## Contributing
We welcome contributions to Promptitude! If you have a feature you'd like to add or a bug to fix, please create a pull request. If you have any questions or suggestions, feel free to open an issue on the repository.