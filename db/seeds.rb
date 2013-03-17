Assessment.delete_all
Grade.delete_all
Klass.delete_all
Student.delete_all
Teacher.delete_all

a1 = Assessment.create(name: 'American History Mid-Term', date_completed: '12/01/2012', type: 'Exam', weight: '33%')
a2 = Assessment.create(name: 'American History Final', type: 'Exam', date_completed: '04/15/2013', weight: '33%')
a3 = Assessment.create(name: 'Civil War Writing Assessment', date_completed: '03/01/2013', type: 'Essay', weight: '33%')

a1 = Assessment.create(name: 'American History Mid-Term', type: 'Exam', weight: '33%')
a2 = Assessment.create(name: 'American History Final', type: 'Exam', weight: '33%')
a3 = Assessment.create(name: 'Civil War Writing Assessment', type: 'Essay', weight: '33%')

g1 = Grade.create(num: '95')
g2 = Grade.create(num: '85')
g3 = Grade.create(num: '75')

k1 = Klass.create(name: 'American History', period: '1st')
k2 = Klass.create(name: 'AP Biology', period: '2nd')
k3 = Klass.create(name: 'Band', period: '3rd')

s1 = Student.create(first_name: 'Sybil', last_name: 'Crawley')
s2 = Student.create(first_name: 'Tom', last_name: 'Branson')
s3 = Student.create(first_name: 'Lavinia', last_name: 'Squire')

t1 = Teacher.create(email: 'ehughes@downtownacademy.com', first_name: 'Elsie', last_name: 'Hughes', password: 'a', password_confirmation: 'a')
t2 = Teacher.create(email: 'rpainswick@downtownacademy.com', first_name: 'Rosamund', last_name: 'Painswick', password: 'a', password_confirmation: 'a')
t3 = Teacher.create(email: 'tbarrow@downtownacademy.com', first_name: 'Thomas', last_name: 'Barrow', password: 'a', password_confirmation: 'a')