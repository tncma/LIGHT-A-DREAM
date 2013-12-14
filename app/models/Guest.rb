class Guest < User
  def guest?
    true
  end
  
  def move_to(user)
    tasks.update_all(user_id: user.id)
  end

  def name
    "Guest"
  end
end
