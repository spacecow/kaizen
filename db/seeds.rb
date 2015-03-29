king = Author.create name:'Stephen King'
Book.create([{title:'The Mist'}, {title:'Dream Catcher'}, {title:'The Green Mile'}]).each do |book|
  book.authors << king
end

walsch = Author.create name:'Neale Donald Walsch'
Book.create([{title:'Home with God'},{title:'Conversation with God'}]).each do |book|
  book.authors << walsch
end

thomas = Author.create name:'Dave Thomas'
Book.create([{title:'Programming Ruby'}]).each do |book|
  book.authors << thomas
end

Shop.create([{name:'Shinjuku Nishiguchi'}, {name:'Ikebukuro'}, {name:'Tokyo Yaesu'}])

