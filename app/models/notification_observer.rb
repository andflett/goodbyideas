class NotificationObserver < ActiveRecord::Observer
    observe :notification
    def after_create(notification)
      NotificationMailer.action_notification(notification).deliver
    end
end