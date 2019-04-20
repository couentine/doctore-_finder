<h1> Doc Finder </h1>

<h4>Description </h4>

This is an open source Doctors finder. 

You can register any doctors from the Bay area then search them by name and Zip code. 


The final goal will be to connect this application to an API for have full updated list of doctors

<h4>Installation and configuration </h4>

You just have to run you server with <b>Rails S</b>

You can also add doctors directly to the seed file then run <b>rails db:seed</b>

A live version is availible for test at : https://docs-finder.herokuapp.com/

The tests are done with Rspec. To be sure everything is working fine you can run: <b>bundle exec rspec</b>


<h4>Commade line</h4>

For Admin through console

<h5>Create a doctor: </h5>
Rails c

 => New = Doc::Create.new(
        name: 'name',
        specialty: 'spe,
        zip: 'zip',
        review: 'review'
      )

=> New.perform

--------------

<h5>Find a user:</h5>

User.find('email') or User.find(id)

<h4>Contribution</h4>

Any contribution are welcome. They will be validate before any merge to master.

You need to post an issue with your idea before starting anything then wait the validation of it (I will try to go back to you ASAP)

Your idea need to explain what you want to do why it will be a good update for the app.

