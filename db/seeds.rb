Category.destroy_all

categories = [
  "Miscellaneous",
  "Electricity",
  "Rent",
  "Grocery",
  "Loan",
  "Phone Service",
  "Trip",
  "Clothing",
  "Car Service",
  "Home Service",
  "Medical Service",
  "Restaurant"
  ];

  index = 0
  while(index < categories.length) do
    Category.create(name: categories[index])
    index = index + 1
  end
