class StaticsController < ApplicationController
  

  def homepage
      
      unless current_user == nil

      @teachers = User.find_by_sql ["SELECT us.* FROM languages_users u
                        LEFT JOIN learning le ON le.language_id = u.language_id
                        LEFT JOIN users us ON us.id = le.user_id
                        WHERE u.user_id = ?" , current_user.id]

      @learners = User.find_by_sql ["SELECT us.* FROM learning le
                        LEFT JOIN languages_users u ON le.language_id = u.language_id
                        LEFT JOIN users us ON us.id = u.user_id
                        WHERE le.user_id = ?" , current_user.id]

      end
  end
end
