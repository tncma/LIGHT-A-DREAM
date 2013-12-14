class Ability
  include cancan::Ability
  def initialize(user)
    can :read,:all
  end
end
