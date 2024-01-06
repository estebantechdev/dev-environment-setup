import axios from 'axios';

// Example Axios request to the server
axios.get('http://localhost:3000/api/greeting')
  .then(response => {
    console.log('API Response:', response.data);
  })
  .catch(error => {
    console.error('Error making API request:', error.message);
  });

