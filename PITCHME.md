---?image=presentation/Code101.png&size=auto 90% 90%

---?image=presentation/algorithms.png&size=auto 90% 90%

---?image=presentation/jokeDefinition.png&size=auto 90% 90%

---?image=presentation/algoDefinition.png&size=auto 90% 90%

---?image=presentation/task1.png&size=auto 90% 90%

---?image=presentation/rubberDucking.png&size=auto 90% 90%

---?image=presentation/task1.png&size=auto 90% 90%

---?image=presentation/user.png&size=auto 90% 90%

---?image=presentation/solution1.png&size=auto 90% 90%

---

```ruby
def filter_users(users)
  # create somewhere to store our results
  results = []
  # look at each of our users
  users.each do |user|
    # if the user has an active subscription or is a lifetime member then add them to our results
    if user['subscriptionPaid'] || user['lifetimeMember']
      results.push user
    end
  end
  # Give us back our list of active users
  results
end
```

---?image=presentation/task2.png&size=auto 90% 90%

---?image=presentation/solution2.png&size=auto 90% 90%

---

```ruby
# Bubble sort: a very intensive but intuitive way of sorting
def sort_by_rank(users)
  # get the number of items we need to sort
  number = users.length
  # do a task again and again
  loop do
    # by default we won't swap anything
    swapped = false
    # repeat the following task all the way through too the last two items
    (number - 1).times do |index|
      # if the users rank is greater than the next user swap them over and set a flag to signal that we have made a swap
      if users[index]['level'] > users[index + 1]['level']
        users[index], users[index + 1] = users[index + 1], users[index]
        swapped = true
      end
    end
    # when we have gone through all users without swapping we can break out of the loop
    break unless swapped
  end
  # give us back our new sorted list of users
  users
end
```

---?image=presentation/questions.png&size=auto 90% 90%
