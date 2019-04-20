<h1> Doc Finder </h1>

<h4>Description </h4>

This is an open source Doctors finder. 

You can register any doctors from the Bay area then search them by name and Zip code. 

The next

The final goal will be to connect this application to an API

<h4>Installation and configuration </h4>

You just have to run you server with <b>Rails S</b>

You can also add doctors directly to the seed file then run <b>rails db:seed</b>

A live version is availible for test at : https://docs-finder.herokuapp.com/

The tests are done with Rspec. To be sure everything is working fine you can run: <b>bundle exec rspec</b>


<h4>Commade line</h4>

For Admin through console

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


A link to collaboration guidelines, or a set of rules for contribution
Terms of use
Code of conduct
Test and package widgets
Example usage of the APIs in the project