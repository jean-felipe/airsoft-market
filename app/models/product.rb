# == Schema Information
#
# Table name: products
#
#  id          :uuid             not null, primary key
#  category    :integer
#  description :text
#  name        :string
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint(8)
#
# Indexes
#
#  index_products_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Product < ApplicationRecord
  CATEGORIES = %i[gun clothes vehicle accessories]

  enum category: CATEGORIES
  belongs_to :user
end
