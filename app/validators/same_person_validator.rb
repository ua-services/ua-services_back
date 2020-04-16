class SamePersonValidator < ActiveModel::Validator
  def validate(record)
    record.errors.add :employee, 'is not super hero for serving himself at work' if record.employee_id == record.user_id
  end
end
