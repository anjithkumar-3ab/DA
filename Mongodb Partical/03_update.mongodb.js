use ('ecommerce')

db.products.updateOne(
  { name: "iPhone 15" },
  {
    $set: { price: 74999, stock: 20 }
  }
);

db.products.updateMany(
    { category: "Electronics" },
    {
      $set: { stock: 30 }
    }
);