class User < ActiveRecord::Base

  acts_as_easy_captcha

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  validates_format_of :password,
                         :with => /\A(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{4,20}\Z/ ,
                            :message =>  "رمز عبور باید حتما شامل حداقل یک حرف بزرگ, یک حرف کوچک و رقم باشد."
  validates_presence_of :birth_year, :name, :lastname

end
