class UserRepoPresenter
  def initialize(current_user)
    @current_user = current_user
  end

  def display_user_repos
    github_service.user_repos
  end

  def display_repo_count
    github_user.user_repos.count
  end  

  def display_titleized_repo_name(repo_name)
    repo_name.titleize
  end

  def display_formatted_date(repo)
    formatted_date = DateTime.parse(repo.updated_at)
    formatted_date.strfttime("Last updated at %m/%d/%y")
  end

  private

  attr_reader :current_user #this is so github_service knows that it is ( in private methods)

  def github_service
    @github_service ||= GithubService.new(current_user)
  end
end
