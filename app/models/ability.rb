class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new()

    can :read, Product, public: true

    return unless user.present?
    can :manage, Order, user: user

    return unless user.admin?  # additional permissions for administrators
    can :manage, :all
  end
end
