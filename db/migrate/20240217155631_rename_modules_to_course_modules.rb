class RenameModulesToCourseModules < ActiveRecord::Migration[7.1]
  def change
    remove_reference :lessons, :module, index: true, foreign_key: true
    rename_table :modules, :course_modules
    add_reference :lessons, :course_module, null: false, index: true, foreign_key: true
  end
end
