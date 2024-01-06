// Simple API service for GET requests

console.log("Hi")

// Import required modules
import express, { Request, Response } from 'express';

// Create an Express application
const app = express();
const port = 3000;

// Define a sample route
app.get('/api/greeting', (req: Request, res: Response) => {
  res.json({ message: 'Hello, welcome to my API!' });
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

