puts "🌱 Seeding spices..."

User.destroy_all
Author.destroy_all

u1 = User.create(name: "Nef", favorite:"You aint always gotta turn the knob to open the door.")
u2 = User.create(name: "Kaden", favorite:"I guess you came back for some more potato salad.")
u3 = User.create(name: "Deryb", favorite:"They said dont give up on your dreams. So I went back to sleep.")


a1 = Author.create(name:"Catchphrase Jones")
a2 = Author.create(name:"Emily Dickonson")
a3 = Author.create(name:"Aristotle")


q1 = Quote.create(text_content:"You'll get more from being a peacemaker than a warrior.", user_id:u1.id, author_id:a1.id)
q2 = Quote.create(text_content:"No one has ever become poor by giving.", user_id:u2.id, author_id:a2.id)
q3 = Quote.create(text_content:"I would not like them here or there. I would not like them anywhere.", user_id:u3.id, author_id:a3.id)

puts "✅ Done seeding!"
