const dotenv = require('dotenv');
dotenv.conf({ path: './config.env' });

const app = require('./app');

const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`App running on port ${port}...`);
});

const x = 23;
x = 66;
