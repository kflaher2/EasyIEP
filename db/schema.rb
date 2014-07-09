# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140709163317) do

  create_table "comments", force: true do |t|
    t.string   "description"
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollments", force: true do |t|
    t.string   "subject"
    t.string   "period"
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "grade"
    t.string   "mathAccom"
    t.string   "elaAccom"
    t.string   "sciAccom"
    t.string   "socstudAccom"
    t.string   "transitionAccom"
    t.string   "parentContact"
    t.string   "caseContact"
    t.string   "counselorContact"
    t.string   "clinContact"
    t.string   "behaviorAll"
    t.string   "behaviorSpecial"
    t.string   "behaviorTrack"
    t.string   "mathLvl"
    t.string   "mathGoal"
    t.string   "writingLvl"
    t.string   "writingGoal"
    t.string   "functionalLvl"
    t.string   "functionalGoal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
