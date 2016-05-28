class AdminPolicy
  def initialize(user)
    @user = user
  end

  def show?
    @user.has_role? :admin unless @user.nil?
  end
end