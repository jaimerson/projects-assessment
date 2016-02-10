class User < ActiveRecord::Base
  include Clearance::User

  enum role: {
    developer: 0,
    client: 1,
    manager: 2
  }
end
