# YEAR seeds
year4 = Year.new(year: "2003")
year4.save
year1 = Year.new(year: "2000")
year1.save
year2 = Year.new(year: "2001")
year2.save
year6 = Year.new(year: "2005")
year6.save
year3 = Year.new(year: "2002")
year3.save
year5 = Year.new(year: "2004")
year5.save

# BOOKS seeds
book1 = Book.new(title: "Sometimes A Great Notion", author_first_name: "Ken", author_last_name: "Kesey")
book1.save
book2 = Book.new(title: "Old Filth", author_first_name: "Jane", author_last_name: "Gardam")
book2.save
book3 = Book.new(title: "Wolf Hall", author_first_name: "Hilary", author_last_name: "Mantel")
book3.save

user = User.new(name: "User", email: "test@test.com", password: "Password1234")
user.save
