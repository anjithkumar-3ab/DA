use ('ecommerce')

// db.products.find({category: 'Mobiles'}).pretty()

// db.products.find({price: {$gt: 70000}}).pretty()

// db.products.find({price: {$lt: 70000, $gt: 50000}}).pretty()

// db.products.find({
//   category: "Mobiles",
//   stock: { $gt: 10 }
// }).pretty();

db.products.find(
  {},
  {
    category: 1,
    stock: 1,
    _id: 0
  }
).pretty();

db.products.find().sort({ price: -1 }).pretty();