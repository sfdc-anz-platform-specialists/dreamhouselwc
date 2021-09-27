#Mikes script to set up the dreamhouselwc org

# 1. delete scrtatch org
sfdx force:org:delete -u dreamhouse

#2. create scratch org
sfdx shane:org:create --userprefix dhuser -o my.demo -s -d 30 -a dreamhouse

#... and set the password
sfdx shane:user:password:set -p sfdx1234 -g User -l User

#3. push the source
sfdx force:source:push

#4. assign permsets
sfdx force:user:permset:assign -n dreamhouse
sfdx force:user:permset:assign -n Walkthroughs

#5. import the data
sfdx force:data:tree:import -p data/sample-data-plan.json

#6. 
#install streaming monitor
sfdx force:package:install -w 20 -r -p 04t1t000003DLAQAA4

#7. open the org
sfdx force:org:open











