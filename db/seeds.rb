@employee = Employee.create(email: "test@test.com",
                    password: "password",
                    password_confirmation: "password",
                    first_name: "Jon",
                    last_name: "Snow",
                    phone: "8014719222")

puts "1 User created"

AdminUser.create(email: "admin@test.com",
                password: "password",
                password_confirmation: "password",
                first_name: "Admin",
                last_name: "Name",
                phone: "8014719222")

puts "1 Admin User created"

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid?", user_id: @employee.id, overtime_request: 2.5)
end

puts "100 posts have been created"

