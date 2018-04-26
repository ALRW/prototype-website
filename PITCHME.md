---?image=presentation/dd.png&size=auto 90% 90%

---?image=presentation/algorithms.png&size=auto 90% 90%

---?image=presentation/jokeDefinition.png&size=auto 90% 90%

---?image=presentation/algoDefinition.png&size=auto 90% 90%

---?image=presentation/task1.png&size=auto 90% 90%

---?image=presentation/rubberDucking.png&size=auto 90% 90%

---?image=presentation/user.png&size=auto 90% 90%

---?image=presentation/solution1.png&size=auto 90% 90%

---

```ruby
def filter_users(users)
  # create somewhere to store our results
  results = []
  # look at each of our users
  users.each do |user|
    # if the user has an active subscription 
    # or is a lifetime member then add them to our results
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
    # create a flag that tells us if we have swapped
    swapped = false
    # repeat the following task all the way through too the last two items
    (number - 1).times do |index|
      # if the users rank is greater than the next user 
      # swap them over and set a flag to signal that we have made a swap
      if users[index]['level'] > users[index + 1]['level']
        users[index], users[index + 1] = users[index + 1], users[index]
        swapped = true
      end
    end
    # when we have gone through all users without swapping 
    # we can break out of the loop
    break unless swapped
  end
  # give us back our new sorted list of users
  users
end
```

---

```ruby
# Merge sort: another intuitive divide and conquer algorithm for sorting that is more efficient
def merge_sort(array)
  # An array of one is by default sorted
  if array.length <= 1
    array
  else
    # Define the mid point
    mid = (array.length / 2).floor
    # Carry out merge sort on the left side
    left = merge_sort(array[0..mid-1])
    # Carry out merge sort on the right side
    right = merge_sort(array[mid..array.length])
    # Bring the two together and return the sorted array
    merge(left, right)
  end
end

# Merge is where the actual comparison between two items takes place
def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left[0] < right[0]
    [left[0]] + merge(left[1..left.length], right)
  else
    [right[0]] + merge(left, right[1..right.length])
  end
end
```
---?image=presentation/questions.png&size=auto 90% 90%
