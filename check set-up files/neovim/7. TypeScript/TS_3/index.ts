// Simple API service for GET requests with Axios request in the same file (as client)
// To start the service, use: npm run
import express, { Request, Response } from 'express';
import axios from 'axios';

const app = express();
const port = 3000;

app.get('/api/greeting', (req: Request, res: Response) => {
  res.json({ message: 'Hello, welcome to my API!' });
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

// Example Axios request
axios.get('http://localhost:3000/api/greeting')
  .then(response => {
    console.log('API Response:', response.data);
  })
  .catch(error => {
    console.error('Error making API request:', error.message);
  });

