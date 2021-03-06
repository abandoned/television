require "octopussy"

# Octopussy should handle private repos
module Octopussy
  class Client
    def list_repos(username)
      response = self.class.get("/repos/show/#{username}", :query => auth_params)
      Hashie::Mash.new(response).repositories
    end

    def list_commits(repo, branch="master")
      repo = Repo.new(repo)
      response = self.class.get("/commits/list/#{repo.username}/#{repo.name}/#{branch}", :query => auth_params)
      Hashie::Mash.new(response).commits
    end
  end
end