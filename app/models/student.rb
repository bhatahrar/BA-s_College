class Student < ApplicationRecord
    has_one :admission, dependent: :destroy
    has_many :results, dependent: :destroy
    validates :name, presence: true,length: {minimum:3,maximum:30}
    validates :age,presence: true
    validates :phone,presence: true
end