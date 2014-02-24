# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Users.delete_all

@knightfu = Users.create email:'knight.w.fu@gmail.com', 
		 				 password:'123456789012345', 
			             password_confirmation:'123456789012345', 
			             first_name: 'Knight',
			             last_name: 'Fu' unless Users.find_by email:'knight.w.fu@gmail.com'
@knightfu.save		            

@knightfu.mentor_profile = MentorProfile.create(bio: "I am a mentor")

@fiorda   = Users.create email:'fiorda.f@gmail.com',
                         password:'11223344556677',
                         password_confirmation:'11223344556677',
                         first_name: 'Francesco',
                         last_name: 'Fiordalisi' \
                            unless Users.find_by email:'fiorda.f@gmail.com'
@fiorda.save

@fiorda.mentor_profile = MentorProfile.create(bio: "I am a mentor")

@student1  = Users.create email:'errorletre@rutgers.edu',
                         password:'1'*14,
                         password_confirmation:'1'*14,
                         first_name: 'Error',
                         last_name: 'LeTre'
@student1.save

@student2   = Users.create email:'good@student.com',
                         password: '1'*14,
                         password_confirmation: '1'*14,
                         first_name: 'Good',
                         last_name: 'Student'
@student2.save

@project = Project.create(mentor: @knightfu,
                          student: @student2,
                          title: "Motivic K-Theory",
                          summary: "blabla")

@project2 = Project.create(mentor: @fiorda,
                           student: @student1,
                           title: "Bad Soccer",
                           summary: "We do not sow")
