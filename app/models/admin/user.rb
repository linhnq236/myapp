module Admin
  class User < ApplicationRecord
    belongs_to :people
  end
end
