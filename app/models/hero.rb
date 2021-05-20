class Hero < ApplicationRecord
    validates :name, presence: true
    validates :realName, presence: true
    validates :occupation, presence: true
    validates :baseOperations, presence: true
    validates :affiliations, presence: true
end
