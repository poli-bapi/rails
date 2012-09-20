class Transactions < ActiveRecord::Base
  attr_accessible :orderno,:amount,:currency,:refno,:status,:token
end

