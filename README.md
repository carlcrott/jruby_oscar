# Example

##### Install Jruby:
( I'm using RVM, which makes it painfully easy )

<pre>
$ rvm install jruby
$ rvm use jruby
</pre>

Other options are available at http://jruby.org/getting-started

##### Run:

<pre>
$ ruby oscar.rb
</pre>



##### Output:
<pre>
OSCAR-4: Hello from Ruby!
6043 [main] INFO uk.ac.cam.ch.wwmm.oscar.obo.OntologyTerm - Loading ontology terms: uk/ac/cam/ch/wwmm/oscar/obo/terms/ontology.txt
INFO - Initialising OPSIN... 
INFO - OPSIN initialised
3-bromobenzophenone
[Structure:INCHI:InChI=1/C13H9BrO/c14-12-8-4-7-11(9-12)13(15)10-5-2-1-3-6-10/h1-9H]
MeOH
[Structure:INCHI:InChI=1/CH4O/c1-2/h2H,1H3]
sodium borohydride
[Structure:INCHI:InChI=1/BH4.Na/h1H4;/q-1;+1]
1-
water
[Structure:INCHI:InChI=1/H2O/h1H2]
CH2Cl2
[Structure:INCHI:InChI=1/CH2Cl2/c2-1-3/h1H2]
water
[Structure:INCHI:InChI=1/H2O/h1H2]
brine
Na2SO4
[Structure:INCHI:InChI=1/2Na.H2O4S/c;;1-5(2,3)4/h;;(H2,1,2,3,4)/q2*+1;/p-2/f2Na.O4S/q2m;-2]
ion
M-OH
nil
thrive@thrive-laptop:~/rails_projects/jruby_oscar$

</pre>


