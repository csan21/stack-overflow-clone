def randnum
  (1..16).to_a.sample
end

def truefalse
  [true, false].sample
end

def randvote
  (1..25).to_a.sample
end

def randvotable
  ["Post", "Comment"].sample
end

def createUser(username, hashed_password)
  @user = User.new(username: username, password: hashed_password)
  @user.save
end

createUser("mhar-andal", "password")
createUser("csan21", "password")
createUser("nickdevlin", "password")
createUser("mikejtaylor", "password")
createUser("SaVanceX", "password")
createUser("Brandv", "password")
createUser("PatrickJamesHoban", "password")
createUser("DMiller0090", "password")
createUser("rrichardsonv", "password")
createUser("yangashley", "password")
createUser("Hesham-Elrehaimy", "password")
createUser("Karyatis", "password")
createUser("JHallberg5100", "password")
createUser("Robertgervais1", "password")
createUser("JHallberg5100", "password")
createUser("kheer1", "password")
createUser("D-Maher", "password")

Category.create(name: "AJAX") #1
Category.create(name: "Angular") #2
Category.create(name: "CSS") #3
Category.create(name: "C++") #4
Category.create(name: "C#") #5
Category.create(name: "HTML") #6
Category.create(name: "Java") #7
Category.create(name: "Javascript") #8
Category.create(name: "Node.js") #9
Category.create(name: "PHP") #10
Category.create(name: "Python") #11
Category.create(name: "React") #12
Category.create(name: "Ruby") #13
Category.create(name: "Ruby on Rails") #14
Category.create(name: "SQL") #15
Category.create(name: "Swift") #16

Post.create(title: "How to write a switch statement in Ruby", post_body: "How do I write a switch statement in Ruby?", category_id: 12, author_id: randnum)

Post.create(title: "A concise explanation of nil v. empty v. blank in Ruby on Rails", post_body: "I find myself repeatedly looking for a clear definition of the differences of nil?, blank?, and empty?", category_id: 12, author_id: randnum)

Post.create(title: "Check if a value exists in an array in Ruby", post_body: "I have a value 'Dog' and an array ['Cat', 'Dog', 'Bird']. How do I check if it exists in the array without looping through it? Is there a simple way of checking if the value exists, nothing more?", category_id: 12, author_id: randnum)

Post.create(title: "How to convert a string to lower or upper case in Ruby", post_body: "How do I take a string and convert it to lower or upper case in Ruby?", category_id: 12, author_id: randnum)

Post.create(title: "How do I redirect to another page in jQuery?", post_body: "How can I redirect the user from one page to another using jQuery?", category_id: 7, author_id: randnum)

Post.create(title: "How do I check if an element is hidden in jQuery?", post_body: "It is possible to toggle the visibility of an element, using the functions .hide(), .show() or .toggle(). How would you test if an element is visible or hidden?", category_id: 7, author_id: randnum)

Post.create(title: "How to remove a particular element from an array in JavaScript?", post_body: "I have an array of integers, which I'm using the .push() method to add to. Is there a simple way to remove a specific element from an array?", category_id: 7, author_id: randnum)

Post.create(title: "How do I include a JavaScript file in another JavaScript file?", post_body: "Is there something in JavaScript similar to @import in CSS that allows you to include a JavaScript file inside another JavaScript file?", category_id: 7, author_id: randnum)

Post.create(title: "How do I check if a checkbox is checked in jQuery?", post_body: "I need to check the checked property of a checkbox and perform an action based on the checked property using jQuery.", category_id: 7, author_id: randnum)

Post.create(title: "Is there a CSS parent selector?", post_body: "How do I select the <li> element that is a direct parent of the anchor element? In example my CSS would be something like this: li < a.active { property: value; }", category_id: 2, author_id: randnum)

20.times do
  Post.create(title: Faker::Company.catch_phrase + "?", post_body: Faker::Hacker.say_something_smart, category_id: randnum, author_id: randnum)
end

100.times do
  Comment.create(post_id: randvote, commenter_id: randnum, comment_body: Faker::Hipster.sentence)
end

# 500.times do
#   Vote.create(votable_id: randnum, votable_type: randvotable, voter_id: randnum, upvote?: truefalse)
# end
