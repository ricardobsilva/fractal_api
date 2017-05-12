class ClassStudents::Email
  def send_email(student_id)
    MailerWorker.perform_async(student_id)
  end
end
