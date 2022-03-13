class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new(name: 'guest', email: 'guest@test.com', password: 'guest@guest')

    if user.admin?
    end
    can :manage, :all
  end
end
