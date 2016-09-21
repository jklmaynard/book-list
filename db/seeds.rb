# YEAR seeds
year1 = Year.new(year: "2000")
year1.save
year2 = Year.new(year: "2001")
year2.save
year3 = Year.new(year: "2002")
year3.save
year4 = Year.new(year: "2003")
year4.save
year5 = Year.new(year: "2004")
year5.save
year6 = Year.new(year: "2005")
year6.save

# BOOKS seeds
book1 = Book.new(title: "Sometimes A Great Notion", author: "Ken Kesey")
book1.save
book2 = Book.new(title: "Old Filth", author: "Jane Gardam")
book2.save
book3 = Book.new(title: "Wolf Hall", author: "Hilary Mantel")
book3.save

def down
  Book.delete_all
  Year.delete_all
end
