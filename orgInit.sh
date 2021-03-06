#Mikes script to set up the dreamhouselwc org

# 1. delete scrtatch org
sfdx force:org:delete -u dreamhousescratch

#2. create scratch org
sfdx shane:org:create --userprefix dhuser -o my.demo -s -d 30 -a dreamhousescratch

#... and set the password
sfdx shane:user:password:set -p sfdx1234 -g User -l User

# install nebula logging 
sfdx force:package:install -w 20 -r -p  04t5Y0000015lXSQAY

#3. push the source
sfdx force:source:push

#4. assign permsets
sfdx force:user:permset:assign -n dreamhouse
#sfdx force:user:permset:assign -n Walkthroughs

#5. import the data
sfdx force:data:tree:import -p data/sample-data-plan.json

#6. install stre
sfdx force:package:install -w 20 -r -p 04t1t000003Po3VAAS

#7. install streaming channels and push topics
#sfdx force:apex:execute -f ./apex/setup.ap
#sfdx force:user:create --setalias qa-user --definitionfile config/user-def.json
#sfdx shane:user:password:set -p sfdx1234 -g Prop -l Manager



#9. open the org
sfdx force:org:open

# all done should be working now and I think codecov may work









