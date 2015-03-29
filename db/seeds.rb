king = Author.create name:'Stephen King'
mist = Book.create title:'The Mist'
catcher = Book.create title:'Dream Catcher'
mile = Book.create title:'The Green Mile'
king.books << mist
king.books << catcher
king.books << mile

walsch = Author.create name:'Neale Donald Walsch'
conversation = Book.create title:'Conversation with God'
home = Book.create title:'Home with God'
walsch.books << home
walsch.books << conversation

thomas = Author.create name:'Dave Thomas'
ruby = Book.create title:'Programming Ruby'
thomas.books << ruby

shinjuku = Shop.create name:'Shinjuku Nishiguchi'
ikebukuro = Shop.create name:'Ikebukuro'
tokyo = Shop.create name:'Tokyo Yaesu'

shinjuku.books << conversation
shinjuku.books << conversation
shinjuku.books << home
shinjuku.books << catcher
shinjuku.books << mist
shinjuku.books << mist
shinjuku.books << mist

ikebukuro.books << conversation
ikebukuro.books << mist
ikebukuro.books << mist

tokyo.books << catcher
tokyo.books << mile
