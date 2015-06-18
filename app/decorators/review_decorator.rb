class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    self.user.firstname + ' ' + self.user.lastname
  end

end
