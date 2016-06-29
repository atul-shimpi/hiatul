class Contact < ActiveRecord::Base
  enum contact_type: [ :landline, :mobile, :email]

  belongs_to :user
end
