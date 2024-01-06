import express, { Request, Response } from 'express';

const app = express();
const port = 3000;

app.get('/api/greeting', (req: Request, res: Response) => {
  res.json({ message: 'Hello, welcome to my API!' });
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

