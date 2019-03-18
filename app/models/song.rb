class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: { scope: :release_year, message: "one a year" }
  validates :released, inclusion: { in: [true, false] }
  validates :release_year, presence: true, if: :released, inclusion: { in: 1900..Date.today.year }
end
