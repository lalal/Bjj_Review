class Review < ActiveRecord::Base

  belongs_to :user
  before_create :setState
  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:question].blank? }, :allow_destroy => true
  attr_accessible :questions_attributes

  private
  def setState
    self.state = "Waiting"
  end


end
