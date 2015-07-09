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

ActiveRecord::Schema.define(version: 20150617012458) do

  create_table "baiviets", force: true do |t|
    t.string   "tieude"
    t.string   "noidung"
    t.integer  "taikhoan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "hinhanh"
    t.string   "hinhanh1"
    t.string   "hinhanh2"
    t.integer  "doibong_id"
    t.string   "giaidau"
    t.integer  "loaibaiviet"
  end

  add_index "baiviets", ["taikhoan_id"], name: "index_baiviets_on_taikhoan_id"

  create_table "bangxephangs", force: true do |t|
    t.integer  "vongdau_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bangxephangs", ["vongdau_id"], name: "index_bangxephangs_on_vongdau_id"

  create_table "banthangs", force: true do |t|
    t.integer  "thoigian"
    t.integer  "cauthu_id"
    t.integer  "chitiettrandau_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "banthangs", ["cauthu_id"], name: "index_banthangs_on_cauthu_id"
  add_index "banthangs", ["chitiettrandau_id"], name: "index_banthangs_on_chitiettrandau_id"

  create_table "cauthus", force: true do |t|
    t.string   "ten"
    t.string   "quoctich"
    t.float    "chieucao"
    t.float    "cannang"
    t.integer  "vitri_id"
    t.integer  "doibong_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "ngaysinh"
    t.string   "hinhanh"
  end

  add_index "cauthus", ["doibong_id"], name: "index_cauthus_on_doibong_id"
  add_index "cauthus", ["vitri_id"], name: "index_cauthus_on_vitri_id"

  create_table "chitietbxhs", force: true do |t|
    t.integer  "thuhang"
    t.integer  "sotranthidau"
    t.integer  "diem"
    t.integer  "tongsobanthang"
    t.integer  "sotranthang"
    t.integer  "sotranghoa"
    t.integer  "sotrangthua"
    t.integer  "bangxephang_id"
    t.integer  "doibong_id"
    t.integer  "lenxuonghang_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tongsobanthua"
  end

  add_index "chitietbxhs", ["bangxephang_id"], name: "index_chitietbxhs_on_bangxephang_id"
  add_index "chitietbxhs", ["doibong_id"], name: "index_chitietbxhs_on_doibong_id"
  add_index "chitietbxhs", ["lenxuonghang_id"], name: "index_chitietbxhs_on_lenxuonghang_id"

  create_table "chitiettrandaus", force: true do |t|
    t.integer  "trandau_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chitiettrandaus", ["trandau_id"], name: "index_chitiettrandaus_on_trandau_id"

  create_table "doibongs", force: true do |t|
    t.string   "ten"
    t.string   "diachi"
    t.string   "dienthoai"
    t.string   "fax"
    t.string   "website"
    t.string   "facebook"
    t.date     "ngaytl"
    t.string   "mauao"
    t.string   "bacsy"
    t.string   "nguoidaidientruyenthong"
    t.integer  "huanluyenvien_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo"
  end

  add_index "doibongs", ["huanluyenvien_id"], name: "index_doibongs_on_huanluyenvien_id"

  create_table "huanluyenviens", force: true do |t|
    t.string   "ten"
    t.integer  "tuoi"
    t.string   "quoctich"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "hinhanh"
  end

  create_table "lenxuonghangs", force: true do |t|
    t.string   "ten"
    t.string   "thongtin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lichthidaus", force: true do |t|
    t.integer  "muagiai"
    t.integer  "vongdau_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lichthidaus", ["vongdau_id"], name: "index_lichthidaus_on_vongdau_id"

  create_table "loaimedia", force: true do |t|
    t.string   "ten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phamlois", force: true do |t|
    t.integer  "thoigian"
    t.integer  "thephat_id"
    t.integer  "cauthu_id"
    t.integer  "chitiettrandau_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phamlois", ["cauthu_id"], name: "index_phamlois_on_cauthu_id"
  add_index "phamlois", ["chitiettrandau_id"], name: "index_phamlois_on_chitiettrandau_id"
  add_index "phamlois", ["thephat_id"], name: "index_phamlois_on_thephat_id"

  create_table "sanvandongs", force: true do |t|
    t.integer  "soghe"
    t.string   "diachi"
    t.integer  "doibong_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "hinhanh"
    t.string   "ten"
    t.string   "hinhanh1"
    t.string   "hinhanh2"
    t.string   "thongtin"
    t.text     "chitietthongtin"
    t.string   "thanhlap"
    t.string   "ve"
  end

  add_index "sanvandongs", ["doibong_id"], name: "index_sanvandongs_on_doibong_id"

  create_table "thephats", force: true do |t|
    t.string   "hinhanh"
    t.string   "loaithe"
    t.string   "ghichu"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trandaus", force: true do |t|
    t.integer  "banthangdoinha"
    t.integer  "banthangdoikhach"
    t.integer  "doinha_id"
    t.integer  "doikhach_id"
    t.datetime "thoigian"
    t.integer  "vongdau_id"
    t.integer  "sanvandong_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trandaus", ["doikhach_id"], name: "index_trandaus_on_doikhach_id"
  add_index "trandaus", ["doinha_id"], name: "index_trandaus_on_doinha_id"
  add_index "trandaus", ["sanvandong_id"], name: "index_trandaus_on_sanvandong_id"
  add_index "trandaus", ["vongdau_id"], name: "index_trandaus_on_vongdau_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
    t.string   "firstname"
    t.string   "lastname"
    t.string   "hinhanh"
    t.date     "ngaysinh"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "videos", force: true do |t|
    t.string   "tieude"
    t.string   "nguon"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tuade"
    t.string   "video"
    t.string   "noidung"
  end

  create_table "vitris", force: true do |t|
    t.string   "tenvitri"
    t.string   "phamvihd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vongdaus", force: true do |t|
    t.integer  "stt"
    t.integer  "sotrandathidau"
    t.date     "thoigianbatdau"
    t.date     "thoigianketthuc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
