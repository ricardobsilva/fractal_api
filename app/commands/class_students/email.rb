class ClassStudents::Email
  def send_email(student_id)
    @mail = StudentsMailer.confirmation_email(student_id)
    @mail.deliver_now
  end
end
