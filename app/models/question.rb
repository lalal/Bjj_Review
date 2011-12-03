class Question < ActiveRecord::Base
  belongs_to :reviews

  attr_accessible :answer, :question
  
end
