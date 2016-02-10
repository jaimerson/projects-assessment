class Project < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true

  enum status: {
    negotiating: 0,
    ongoing: 1,
    paused: 2,
    finished: 3
  }
end
