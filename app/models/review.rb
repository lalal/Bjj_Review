class Review < ActiveRecord::Base

  belongs_to :user
  before_create :setState
  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:question].blank? }, :allow_destroy => true
  attr_accessible :questions_attributes, :reviewer_id, :url, :title, :overall_comments, :suggested_drills, :state


  private
  def setState
    self.state = "Queued"
  end


end
