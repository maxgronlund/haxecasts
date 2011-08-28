class Ability
  include CanCan::Ability

  def initialize(user)
    if user 
      if user.super?
        can :manage, :all
      elsif user.admin?
        can :manage, Comment
        can :manage, User
        can :manage, TextContent
        can :read, VideoCast
        
        # add application-specific changes below
        
        
      elsif user.member?
        # Ordinary user
        can :create, Comment
        can :manage, Comment, :id => user.id # <--- Allow user to manage own comments
        can :manage, User, :id => user.id # <--- Allow user to manage self
        can :read, TextContent
        can :read, VideoCast
        
        # add application-specific changes below
        
        
      end
    else
      # When not logged in
      can :read, Comment
      can :read, TextContent
      can :create, User # <----------- Uncomment this to alow users to signup by them self
      can :read, VideoCast
      
      # add application-specific changes below
      
      
    end
  end
end
