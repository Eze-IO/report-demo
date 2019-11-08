
names = [
  "Josefa Eiland", "Gena Bolen", "Novella Marcin", "Wendi Polley", "Nicol Debose",
  "Eusebia Hallinan", "Dawne Umberger", "Hyon Westbury", "Jacquelyne Suther", "Avril Matsuda",
  "Belle Postell", "Merrie Machuca", "Santos Harney", "Louie South", "Somer Gilbert",
  "Florentina Witten", "Otto Crisman", "Jesus Martello", "Meri Clayborn", "Ross Herrod",
  "Sterling Lichtenstein", "Shirely Vanwormer", "Oma Caufield", "Johna Precourt",
  "Julieta Difalco", "Arianne Zerr", "Nancey Luckey", "Lizabeth Coca",
  "Louvenia Kirkham", "Rubie Binion", "Malinda Latimore", "Nenita Mcgaugh",
  "Jacquelynn Wortman", "Jone Hofstetter", "Daria Jacks", "Georgina Sleeth",
  "Carolina Pardini", "Torrie Zinck", "Lorri Jewett", "Loris Armbruster",
  "Takisha Hardison", "Dimple Timlin", "Kathy Mayers", "Darla Grammer",
  "Kathaleen Shope", "Onie Grube", "Eden Backes", "Antonina Crudup",
  "Norris Kort", "Dayna Reinecke"]

Sale.delete_all
SalesAssociate.delete_all

names.each do |name|
  sa = SalesAssociate.create(name: name, department: 'Household Goods')
  (1..rand(30)).each do |s|
    Sale.create(sales_associate: sa,
      amount: rand(10..1000),
      sale_date: Date.new(2019,rand(1..12),rand(1..28)))
  end
end


