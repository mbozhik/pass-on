
def seed
  reset_db
  create_admin
  create_users(5)
end

def reset_db
  Rake::Task['db:drop'].invoke
  Rake::Task['db:create'].invoke
  Rake::Task['db:migrate'].invoke
end

def create_admin
  user = User.create!(email: "admin@bozzhik.md", password: 'bozzhik', is_admin: true)
  puts "Admin with #{user.email} created with id #{user.id}"
end

def create_users(num_users)
  (1...num_users).map do |i|
    user_data = {
      email: "user#{i}@bozzhik.md",
      password: 'bozzhik',
    }

    user = User.create!(user_data)
    puts "User with #{user.email} created with id #{user.id}"
  end
end

seed