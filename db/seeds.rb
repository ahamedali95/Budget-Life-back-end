
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
  "Medical Service"
  ];

  index = 0
  while(index < categories.length) do
    Category.find_or_create_by(name: categories[index])
    index = index + 1
  end

roger = User.find_or_create_by(first_name: "Roger", last_name: "Perez", email: "roger@gmail.com", password_digest: "123123", phone: "6615555555")
