class BookingPolicy < ApplicationPolicy
  class Scope < Scope

    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  # def index
  #   true
  # end

  # only the user who created the restaurant is allowed to update it
  def update?
    # user - this is the current user
    # record - this is the restaurant in this case because its a RestaurantPolicy
    user_is_owner?
  end

  # only the user who created the restaurant is allowed to delete it
  def destroy?
    # user - this is the current user
    # record - this is the restaurant in this case because its a RestaurantPolicy
    user_is_owner?
  end

  private

  def user_is_owner?
    record.user == user
  end
end
