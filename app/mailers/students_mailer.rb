class StudentsMailer < ActionMailer::Base
  def confirmation_email(student_id)
    @student = Student.find(student_id)
    mail(to: @student.email, subject: "Matrícula confirmada")
  end
end
