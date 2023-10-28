def seed
  reset_db
  users = create_users(5)
  create_admin
  create_requests(users)
end

def reset_db
  Rake::Task['db:drop'].invoke
  Rake::Task['db:create'].invoke
  Rake::Task['db:migrate'].invoke
end

def create_users(num_users)
  users = []
  (1..num_users).each do |i|
    user_data = {
      email: "user#{i}@bozzhik.md",
      password: 'bozzhik',
    }

    user = User.create!(user_data)
    users << user
    puts "User with #{user.email} created with id #{user.id}"
  end
  users
end

def create_admin
  user = User.create!(email: "admin@bozzhik.md", password: 'bozzhik', is_admin: true)
  puts "Admin with #{user.email} created with id #{user.id}"
end

def create_requests(users)
  users.each do |user|
    next if user.is_admin?

    (1..2).each do |i|
      request_data = {
        title: "Custom Request",
        description: "Custom Description for Request #{i}",
        from_location: "Custom",
        to_location: "From",
        from_date: Time.now,
        to_date: Time.now + i.days,
        requester_link: "Custom Link for Request #{i}",
        user: user
      }

      request = Request.create!(request_data)
      puts "Request #{request.id} created for user #{user.email} || user id #{user.id}"
    end
  end
end


seed