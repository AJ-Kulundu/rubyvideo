module Github
  class UserClient < Github::Client
    def profile(username)
      get("/users/#{username}")
    end

    def search(q, per_page: 10, page: 1)
      get("/search/users", query: {q: q, per_page: per_page, page: page})
    end
  end
end
