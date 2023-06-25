# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new #Usuario Invitado
    if user.admin?
      can :manage, :all
    else
      can :read, [Vehicle]
    end
  end
end
