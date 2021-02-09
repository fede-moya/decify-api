# == Schema Information
#
# Table name: tags
#
#  id   :bigint(8)        not null, primary key
#  text :string
#

class Tag < ApplicationRecord



  has_many :decision_tags



  has_many :decisions, through: :decision_tags


     def foobar()
          puts "foobar"
     end
end
