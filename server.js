const express = require('express');
const app = express();
const path = require('path');
const mysql = require('mysql2/promise');


const PORT = 3000;

const dbConfig = {
  host: 'localhost',
  port: 6606,
  user: 'dave',
  password: 'password',
  database: 'garageBayDB',
};

// TODO: add error handling try/catch
const addItem = async (itemName, startingBid, buyItNow,) => {
  try {
    const connection = await mysql.createConnection(dbConfig)
    const query = await connection.query(
      'INSERT INTO itemsForSale SET ?',
      {
        itemName: itemName,
        startingBid: startingBid,
        currentBid: startingBid,
        buyItNow: buyItNow,
      });
    connection.end();
  } catch (error){
    console.error(error);
  }
}

// addItem('Socks', 0.58, 4.50);


// route static files
app.use(express.static('public'))

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'index.html'))
});

app.listen(PORT, () => console.log('server up on:', PORT));



