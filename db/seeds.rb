def randnum
  (0..16).to_a.sample
end

def truefalse
  [true, false].sample
end

def randvote
  (5..16).to_a.sample
end

User.create(username: "mhar-andal", hashed_password: "password")
User.create(username: "csan21", hashed_password: "password")
User.create(username: "nickdevlin", hashed_password: "password")
User.create(username: "mikejtaylor", hashed_password: "password")
User.create(username: "SaVanceX", hashed_password: "password")
User.create(username: "Brandv", hashed_password: "password")
User.create(username: "PatrickJamesHoban", hashed_password: "password")
User.create(username: "DMiller0090", hashed_password: "password")
User.create(username: "rrichardsonv", hashed_password: "password")
User.create(username: "yangashley", hashed_password: "password")
User.create(username: "Hesham-Elrehaimy", hashed_password: "password")
User.create(username: "Karyatis", hashed_password: "password")
User.create(username: "JHallberg5100", hashed_password: "password")
User.create(username: "Robertgervais1", hashed_password: "password")
User.create(username: "JHallberg5100", hashed_password: "password")
User.create(username: "kheer1", hashed_password: "password")
User.create(username: "D-Maher", hashed_password: "password")


Category.create(name: "AJAX") #1
Category.create(name: "Angular") #1
Category.create(name: "CSS") #2
Category.create(name: "C++") #3
Category.create(name: "C#") #4
Category.create(name: "HTML") #5
Category.create(name: "Java") #6
Category.create(name: "Javascript") #7
Category.create(name: "Node.js") #8
Category.create(name: "PHP") #9
Category.create(name: "Python") #10
Category.create(name: "React") #11
Category.create(name: "Ruby") #12
Category.create(name: "Ruby on Rails") #13
Category.create(name: "SQL") #14
Category.create(name: "Swift") #15
# post 1
Post.create(title: "How to write a switch statement in Ruby", post_body: "How do I write a switch statement in Ruby?", category_id: 12, author_id: randnum)
for i in (0..randvote)
  Vote.create(votable_id: 1, votable_type: "Post", voter_id: i, upvote?: truefalse)
end

#comment for post 1
for i in (0..3)
  Comment.create(post_id: 1, comment_body: "hello")
end

#vote for comment
for i in (0..1)
  Vote.create(votable_id: 1, votable_type: "Comment", voter_id: i, upvote?: truefalse)
end

for i in (0..1)
  Vote.create(votable_id: 2, votable_type: "Comment", voter_id: i, upvote?: truefalse)
end


Post.create(title: "A concise explanation of nil v. empty v. blank in Ruby on Rails", post_body: "I find myself repeatedly looking for a clear definition of the differences of nil?, blank?, and empty?", category_id: 12, author_id: randnum)
for i in (0..randvote)
  Vote.create(votable_id: 2, votable_type: "Post", voter_id: i, upvote?: truefalse)
end

# Post.create(title: "Check if a value exists in an array in Ruby", post_body: "I have a value 'Dog' and an array ['Cat', 'Dog', 'Bird']. How do I check if it exists in the array without looping through it? Is there a simple way of checking if the value exists, nothing more?", category_id: 12, author_id: randnum)
# for i in (0..randvote)
#   Vote.create(votable_id: 1, votable_type: "Post", voter_id: i, upvote?: truefalse)
# end
#
#
# Post.create(title: "How to convert a string to lower or upper case in Ruby", post_body: "How do I take a string and convert it to lower or upper case in Ruby?", category_id: 12, author_id: randnum)
# for i in (0..randvote)
#   Vote.create(votable_id: 1, votable_type: "Post", voter_id: i, upvote?: truefalse)
# end
#
# Post.create(title: "How do I redirect to another page in jQuery?", post_body: "How can I redirect the user from one page to another using jQuery?", category_id: 7, author_id: randnum)
# for i in (0..randvote)
#   Vote.create(votable_id: 1, votable_type: "Post", voter_id: i, upvote?: truefalse)
# end
#
# Post.create(title: "How do I check if an element is hidden in jQuery?", post_body: "It is possible to toggle the visibility of an element, using the functions .hide(), .show() or .toggle(). How would you test if an element is visible or hidden?", category_id: 7, author_id: randnum)
# for i in (0..randvote)
#   Vote.create(votable_id: 6, votable_type: "Post", voter_id: i, upvote?: truefalse)
# end
#
# Post.create(title: "How to remove a particular element from an array in JavaScript?", post_body: "I have an array of integers, which I'm using the .push() method to add to. Is there a simple way to remove a specific element from an array?", category_id: 7, author_id: randnum)
# for i in (0..randvote)
#   Vote.create(votable_id: 7, votable_type: "Post", voter_id: i, upvote?: truefalse)
# end
# Post.create(title: "How do I include a JavaScript file in another JavaScript file?", post_body: "Is there something in JavaScript similar to @import in CSS that allows you to include a JavaScript file inside another JavaScript file?", category_id: 7, author_id: randnum)
# for i in (0..randvote)
#   Vote.create(votable_id: 8, votable_type: "Post", voter_id: i, upvote?: truefalse)
# end
#
# Post.create(title: "How do I check if a checkbox is checked in jQuery?", post_body: "I need to check the checked property of a checkbox and perform an action based on the checked property using jQuery.", category_id: 7, author_id: randnum)
# for i in (0..randvote)
#   Vote.create(votable_id: 9, votable_type: "Post", voter_id: i, upvote?: truefalse)
# end
#
# Post.create(title: "Is there a CSS parent selector?", post_body: "How do I select the <li> element that is a direct parent of the anchor element? In example my CSS would be something like this: li < a.active { property: value; }", category_id: 2, author_id: randnum)
# for i in (0..randvote)
#   Vote.create(votable_id: 10, votable_type: "Post", voter_id: i, upvote?: truefalse)
# end


# Post.create(title: "", post_body: "", category_id: , author_id: )
# for i in (0..randvote)
#   Vote.create(votable_id: 1, votable_type: "Post", voter_id: i, upvote?: truefalse)
# end
