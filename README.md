# Promptitude
Promptitude is a list of prompts and materials related to writing prompts for AI. It is built using Ruby 3.1.0 and Rails 7, and is open-source for others to contribute to.

## Table of Contents
- [Promptitude](#promptitude)
- [Installation](#installation)
- [Usage](#usage)
  - [Accessing the Prompts API](#accessing-the-prompts-api)
  - [Example Usage with JavaScript](#example-usage-with-javascript)
- [Future Versions](#future-versions)
- [Contributing](#contributing)


## Installation
To install and run Promptitude locally, follow these steps:

- Clone the repository.
- Install the required gems using `bundle install`.
- Set up the database using `rails db:create` and `rails db:migrate`.
- Start the server using `rails server`.
- Open `localhost:3000` in your browser.

## Usage

### Accessing the Prompts API
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
In future versions of Promptitude, we plan to:

- Expand the collection of prompts and resources.
- Add user authentication and the ability for users to save their favorite prompts.
- Implement a search feature to help users find prompts based on keywords or categories.
- Improve the API by adding pagination and filtering options.
- Enhance the website's user interface and overall user experience.

## Contributing
We welcome contributions to Promptitude! If you have a feature you'd like to add or a bug to fix, please create a pull request. If you have any questions or suggestions, feel free to open an issue on the repository.