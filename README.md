This is a Doctors finder

The final goal will be to connect this application to an API

-----

FOr Admin through console

Create a doctor: 
Rails c

 => New = Doc::Create.new(
        name: 'name',
        specialty: 'spe,
        zip: 'zip',
        review: 'review'
      )

=> New.perform

--------------

Find a user:

User.find('email') or User.find(id)
