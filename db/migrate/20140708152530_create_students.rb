class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :grade
      t.string :mathAccom
      t.string :elaAccom
      t.string :sciAccom
      t.string :socstudAccom
      t.string :transitionAccom
      t.string :parentContact
      t.string :caseContact
      t.string :counselorContact
      t.string :clinContact
      t.string :behaviorAll
      t.string :behaviorSpecial
      t.string :behaviorTrack
      t.string :mathLvl
      t.string :mathGoal
      t.string :writingLvl
      t.string :writingGoal
      t.string :functionalLvl
      t.string :functionalGoal

      t.timestamps
    end
  end
end
