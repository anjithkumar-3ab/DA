use ('ecommerce')

db.products.insertOne({
  name: "Laptop",
  brand: "Dell",
  price: 75000,
  category: "Electronics",
  stock: 20,
  createdAt: new Date()
});

db.products.insertMany([
  {
    name: "Dell Inspiron 15",
    brand: "Dell",
    category: "Electronics",
    price: 75000,
    stock: 20
  },
  {
    name: "iPhone 15",
    brand: "Apple",
    category: "Mobiles",
    price: 79999,
    stock: 15
  },
  {
    name: "Galaxy S24",
    brand: "Samsung",
    category: "Mobiles",
    price: 69999,
    stock: 18
  },
  {
    name: "Sony WH-1000XM5",
    brand: "Sony",
    category: "Accessories",
    price: 29999,
    stock: 25
  },
  {
    name: "HP Pavilion",
    brand: "HP",
    category: "Electronics",
    price: 68000,
    stock: 12
  },
  {
    name: "Boat Rockerz 450",
    brand: "Boat",
    category: "Accessories",
    price: 1999,
    stock: 100
  },
  {
    name: "Nike Air Max",
    brand: "Nike",
    category: "Footwear",
    price: 5999,
    stock: 40
  },
  {
    name: "Levi's Jeans",
    brand: "Levi's",
    category: "Clothing",
    price: 2499,
    stock: 60
  },
  {
    name: "LG Smart TV 43-inch",
    brand: "LG",
    category: "Electronics",
    price: 35999,
    stock: 10
  },
  {
    name: "Canon EOS 1500D",
    brand: "Canon",
    category: "Cameras",
    price: 42999,
    stock: 8
  }
]);