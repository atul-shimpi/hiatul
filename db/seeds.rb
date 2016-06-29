# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Roles
Role.create(name: 'Admin')
Role.create(name: 'Operator')
Role.create(name: 'Candidate')

# Genders
GendersMaster.create(name: 'Male')
GendersMaster.create(name: 'Female')
GendersMaster.create(name: 'Other')

# Users
User.create(first_name: 'Sameer', middle_name: 'Raghunath', last_name: 'Shimpi', role_id: 1, email: 'sameer_shimpi@hotmail.com', password: 'Sameer@1506')
#User.create(first_name: 'Atul', middle_name: 'Raghunath', last_name: 'Shimpi', role_id: 2, email: 'shimpiatul@hotmail.com', password: 'Atul@1506')
#User.create(first_name: 'Himanshu',  last_name: 'Ghag', role_id: 3, email: 'himanshu_ghag@hotmail.com', password: 'Himanshu@1506')
#User.create(first_name: 'Shushobhan', last_name: 'Shimpi', role_id: 3, email: 'shobhan_shimpi@hotmail.com', password: 'Shobhan@1506')

# Contacts
#Contact.create(user_id: 3, contact_type: 1, value: '9890979429')
#Contact.create(user_id: 4, contact_type: 1, value: '9890979454')

# Status
CandiateStatus.create(user_id: 1, status: 3, comments: 'Information Received')
CandiateStatus.create(user_id: 2, status: 3, comments: 'Information Received')
CandiateStatus.create(user_id: 3, status: 2, comments: 'Email Sent')
CandiateStatus.create(user_id: 4, status: 1, comments: 'Newly Added')