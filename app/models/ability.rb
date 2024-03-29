class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can %i[read create], Food
    can %i[read create], Recipe
    return unless user.present?

    can(:destroy, Food, user:)
    can :manage, Recipe, user:
  end
end
