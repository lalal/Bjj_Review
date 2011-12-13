class ReviewMailer < ActionMailer::Base
  default from: "admin@bjjvideoreview.com"

  def review_requested(review)
    @reviewer = User.find_by_id(review.reviewer_id)
    @url  = "http://bjjvideoreview.com/sign_in"
    mail(:to => @reviewer.email, :subject => "A student has requested a new Review")
  end

end
