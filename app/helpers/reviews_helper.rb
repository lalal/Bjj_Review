module ReviewsHelper

  def parseYoutube(review)
      parsedURL = URI.parse(review.url)
      youtubeId = ""
      if (parsedURL.host = "www.youtube.com")
        if (parsedURL.query != nil)
          queryParams = parsedURL.query
          if (queryParams =~ /&/ )
            queryParams = parsedURL.query.split("&")[0]
          end
         youtubeId = queryParams.split("=")[1]
        else
        youtubeId = parsedURL.path.split("/")[1]
        end
      end
      return youtubeId
  end

  def getAllReviewers()
    return User.joins(:roles).where('roles.role' => "Reviewer")
  end

end
