module ApplicationHelper

  def star_jones(rating = 0)
    stars = ''
    rating.floor.times do 
      stars += content_tag(:i, '', class: 'icon-star')
    end
    if rating > rating.floor
      stars += content_tag(:i, '', class: 'icon-star-half')
    end
    stars.html_safe
  end

  def logged_in?
    current_user.present?
  end
  
end
  # def rating_for(article)
    # article.reviews.collect(&:rating).sum / article.reviews.count
    # article.reviews.average(:rating)
    # article.reviews.average_rating

  # end

