#Mikes script to set up the dreamhouselwc org

# 1. delete scrtatch org
sfdx force:org:delete -u dreamhouse

#2. create scratch org
sfdx force:org:create -s -f config/project-scratch-def.json -a dreamhouse

#3. push the source
sfdx force:source:push

#4. assign permsets
sfdx force:user:permset:assign -n dreamhouse
sfdx force:user:permset:assign -n Walkthroughs

#5. import the data
sfdx force:data:tree:import -p data/sample-data-plan.json

#6. open the org
sfdx force:org:open











