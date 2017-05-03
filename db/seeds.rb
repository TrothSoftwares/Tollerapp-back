group1 = Group.create(name:'Group1')
group2 = Group.create(name:'Group2')
group3 = Group.create(name:'Group3')



user1 = User.create(email:'local1@admin.com',password:'password',role:'local' ,dyndns:'localadmindns.com', internetport:3000,ethernetport:4000 ,nameofinstitution:'Test Institution name 1', contactno: 123465798,location:'Test location 1',installationdate:'2017-12-09', walletbalance:10000 ,group: group1)
user2 = User.create(email:'local2@admin.com',password:'password',role:'local' ,dyndns:'localadmindns.com', internetport:3000,ethernetport:4000 ,nameofinstitution:'Test Institution name 2', contactno: 123465798,location:'Test location 2',installationdate:'2017-12-09', walletbalance:10000,group: group1)
user3 = User.create(email:'local3@admin.com',password:'password',role:'local' ,dyndns:'localadmindns.com', internetport:3000,ethernetport:4000 ,nameofinstitution:'Test Institution name 3', contactno: 123465798,location:'Test location 3',installationdate:'2017-12-09', walletbalance:0, group: group2)
user4 = User.create(email:'local4@admin.com',password:'password',role:'local' ,dyndns:'localadmindns.com', internetport:3000,ethernetport:4000 ,nameofinstitution:'Test Institution name 4', contactno: 123465798,location:'Test location 4',installationdate:'2017-12-09', walletbalance:0,group: group2)
user5 = User.create(email:'local5@admin.com',password:'password',role:'local' ,dyndns:'localadmindns.com', internetport:3000,ethernetport:4000 ,nameofinstitution:'Test Institution name 5', contactno: 123465798,location:'Test location 5',installationdate:'2017-12-09', walletbalance:0 ,group: group3)
user6 = User.create(email:'local6@admin.com',password:'password',role:'local' ,dyndns:'localadmindns.com', internetport:3000,ethernetport:4000 ,nameofinstitution:'Test Institution name 6', contactno: 123465798,location:'Test location 6',installationdate:'2017-12-09', walletbalance:0 ,group: group3)

groupuser1 = User.create(email:'group1@admin.com',password:'password',role:'group' ,group: group1 ,isowner: true)
groupuser2 = User.create(email:'group2@admin.com',password:'password',role:'group' ,group: group2 ,isowner: true)
groupuser3 = User.create(email:'group3@admin.com',password:'password',role:'group' ,group: group3 ,isowner: true)








superuser = User.create(email:'super@admin.com',password:'password',role:'super')

###### START OF PAYMENTS ###############
payment1 = Payment.create(user:user1 , paymentdate:'2017-12-09' , amount:1000 ,paymentmethod: 'wallet',previouswalletbalance:10000 , afterwalletbalance: 9000)
payment2 = Payment.create(user:user1 , paymentdate:'2017-12-10' , amount:2000 ,paymentmethod: 'cash',previouswalletbalance:9000 , afterwalletbalance: 9000)
payment3 = Payment.create(user:user1 , paymentdate:'2017-12-11' , amount:1000 ,paymentmethod: 'wallet',previouswalletbalance:9000 , afterwalletbalance: 8000)

payment4 = Payment.create(user:user2 , paymentdate:'2017-12-09' , amount:1000 ,paymentmethod: 'wallet',previouswalletbalance:10000 , afterwalletbalance: 9000)
payment5 = Payment.create(user:user2 , paymentdate:'2017-12-10' , amount:2000 ,paymentmethod: 'cash',previouswalletbalance:9000 , afterwalletbalance: 9000)
payment6 = Payment.create(user:user2 , paymentdate:'2017-12-11' , amount:1000 ,paymentmethod: 'wallet',previouswalletbalance:9000 , afterwalletbalance: 8000)

payment7 = Payment.create(user:user3 , paymentdate:'2017-12-09' , amount:1000 ,paymentmethod: 'wallet',previouswalletbalance:10000 , afterwalletbalance: 9000)
payment8 = Payment.create(user:user3 , paymentdate:'2017-12-10' , amount:2000 ,paymentmethod: 'cash',previouswalletbalance:9000 , afterwalletbalance: 9000)
payment9 = Payment.create(user:user3 , paymentdate:'2017-12-11' , amount:1000 ,paymentmethod: 'wallet',previouswalletbalance:9000 , afterwalletbalance: 8000)

payment10 = Payment.create(user:user4 , paymentdate:'2017-12-09' , amount:1000 ,paymentmethod: 'wallet',previouswalletbalance:10000 , afterwalletbalance: 9000)
payment11 = Payment.create(user:user4 , paymentdate:'2017-12-10' , amount:2000 ,paymentmethod: 'cash',previouswalletbalance:9000 , afterwalletbalance: 9000)
payment12 = Payment.create(user:user4 , paymentdate:'2017-12-11' , amount:1000 ,paymentmethod: 'wallet',previouswalletbalance:9000 , afterwalletbalance: 8000)

payment13 = Payment.create(user:user5 , paymentdate:'2017-12-09' , amount:1000 ,paymentmethod: 'wallet',previouswalletbalance:10000 , afterwalletbalance: 9000)
payment14 = Payment.create(user:user5 , paymentdate:'2017-12-10' , amount:2000 ,paymentmethod: 'cash',previouswalletbalance:9000 , afterwalletbalance: 9000)
payment15 = Payment.create(user:user5 , paymentdate:'2017-12-11' , amount:1000 ,paymentmethod: 'wallet',previouswalletbalance:9000 , afterwalletbalance: 8000)

payment16 = Payment.create(user:user6 , paymentdate:'2017-12-09' , amount:1000 ,paymentmethod: 'wallet',previouswalletbalance:10000 , afterwalletbalance: 9000)
payment17 = Payment.create(user:user6 , paymentdate:'2017-12-10' , amount:2000 ,paymentmethod: 'cash',previouswalletbalance:9000 , afterwalletbalance: 9000)
payment18 = Payment.create(user:user6 , paymentdate:'2017-12-11' , amount:1000 ,paymentmethod: 'wallet',previouswalletbalance:9000 , afterwalletbalance: 8000)
###### END OF PAYMENTS ###############

###### START OF WALLET PAYMENTS ###############
walletpayment1 = Walletpayment.create(user:user1 , paymentdate:'2017-12-09' , amount:1000 ,paymentmethod: 'cheque',previouswalletbalance:10000 , afterwalletbalance: 11000 , remarks: 'Some Remraks')
walletpayment2 = Walletpayment.create(user:user1 , paymentdate:'2017-12-10' , amount:2000 ,paymentmethod: 'cash',previouswalletbalance:11000 , afterwalletbalance: 13000 ,refno: '234234')
walletpayment3 = Walletpayment.create(user:user1 , paymentdate:'2017-12-11' , amount:1000 ,paymentmethod: 'cash',previouswalletbalance:13000 , afterwalletbalance: 14000)

walletpayment4 = Walletpayment.create(user:user2 , paymentdate:'2017-12-09' , amount:1000 ,paymentmethod: 'cheque',previouswalletbalance:10000 , afterwalletbalance: 11000)
walletpayment5 = Walletpayment.create(user:user2 , paymentdate:'2017-12-10' , amount:2000 ,paymentmethod: 'cash',previouswalletbalance:11000 , afterwalletbalance: 13000 ,refno: '234234')
walletpayment6 = Walletpayment.create(user:user2 , paymentdate:'2017-12-11' , amount:1000 ,paymentmethod: 'cash',previouswalletbalance:13000 , afterwalletbalance: 14000 , remarks: 'Some Remraks')

walletpayment7 = Walletpayment.create(user:user3 , paymentdate:'2017-12-09' , amount:1000 ,paymentmethod: 'cheque',previouswalletbalance:10000 , afterwalletbalance: 11000)
walletpayment8 = Walletpayment.create(user:user3 , paymentdate:'2017-12-10' , amount:2000 ,paymentmethod: 'cash',previouswalletbalance:11000 , afterwalletbalance: 13000)
walletpayment9 = Walletpayment.create(user:user3 , paymentdate:'2017-12-11' , amount:1000 ,paymentmethod: 'cash',previouswalletbalance:13000 , afterwalletbalance: 14000 , remarks: 'Some Remraks')

walletpayment10 = Walletpayment.create(user:user4 , paymentdate:'2017-12-09' , amount:1000 ,paymentmethod: 'cheque',previouswalletbalance:10000 , afterwalletbalance: 11000 ,refno: '5465')
walletpayment11 = Walletpayment.create(user:user4 , paymentdate:'2017-12-10' , amount:2000 ,paymentmethod: 'cash',previouswalletbalance:11000 , afterwalletbalance: 13000 , remarks: 'Some Remraks')
walletpayment12 = Walletpayment.create(user:user4 , paymentdate:'2017-12-11' , amount:1000 ,paymentmethod: 'cash',previouswalletbalance:13000 , afterwalletbalance: 14000)

walletpayment13 = Walletpayment.create(user:user5 , paymentdate:'2017-12-09' , amount:1000 ,paymentmethod: 'cheque',previouswalletbalance:10000 , afterwalletbalance: 11000)
walletpayment14 = Walletpayment.create(user:user5 , paymentdate:'2017-12-10' , amount:2000 ,paymentmethod: 'cash',previouswalletbalance:11000 , afterwalletbalance: 13000)
walletpayment15 = Walletpayment.create(user:user5 , paymentdate:'2017-12-11' , amount:1000 ,paymentmethod: 'cash',previouswalletbalance:13000 , afterwalletbalance: 14000)

walletpayment16 = Walletpayment.create(user:user6 , paymentdate:'2017-12-09' , amount:1000 ,paymentmethod: 'cheque',previouswalletbalance:10000 , afterwalletbalance: 11000 ,refno: '234234')
walletpayment17 = Walletpayment.create(user:user6 , paymentdate:'2017-12-10' , amount:2000 ,paymentmethod: 'cash',previouswalletbalance:11000 , afterwalletbalance: 13000)
walletpayment18 = Walletpayment.create(user:user6 , paymentdate:'2017-12-11' , amount:1000 ,paymentmethod: 'cash',previouswalletbalance:13000 , afterwalletbalance: 14000 ,refno: '5665')



###### END OF WALLET PAYMENTS ###############





#SCHDEULE SETS WITH TIMINGS AND ASSIGNATIONS
arr = ['sunday','saturday','friday','thursday','wednessday','tuesday','monday']


##############333#######   START OF SCHEDULE SETS #####################################33

#### USER1:
#REGULAR SCHDEULE SETS :
for i in 1..7
   scheduleset = Scheduleset.create(user: user1,description:'Description')
   for j in 1..25
     Timing.create(time:Time.now, file: "#{i}.mp3",scheduleset: scheduleset)
   end
     Assignation.create( day: arr.pop(),scheduleset: scheduleset)
end


#EXAM SCHDEULE SETS:
for l in 1..7
   examscheduleset = Examscheduleset.create(user: user1)
   for m in 1..25
     Examtiming.create(time:Time.now, file: "#{m}.mp3",examscheduleset: examscheduleset)
   end
   for n in 1..25
     Examassignation.create(time:Time.now, examscheduleset: examscheduleset)
   end
end




#### USER2:
#REGULAR SCHDEULE SETS :
for i in 1..7
   scheduleset = Scheduleset.create(user: user2,description:'Description')
   for j in 1..25
     Timing.create(time:Time.now, file: "#{i}.mp3",scheduleset: scheduleset)
   end
     Assignation.create( day: arr.pop(),scheduleset: scheduleset)
end


#EXAM SCHDEULE SETS :
for l in 1..7
   examscheduleset = Examscheduleset.create(user: user2)
   for m in 1..25
     Examtiming.create(time:Time.now, file: "#{m}.mp3",examscheduleset: examscheduleset)
   end
   for n in 1..25
     Examassignation.create(time:Time.now, examscheduleset: examscheduleset)
   end
end


#### USER3:
#REGULAR SCHDEULE SETS :
for i in 1..7
   scheduleset = Scheduleset.create(user: user3,description:'Description')
   for j in 1..25
     Timing.create(time:Time.now, file: "#{i}.mp3",scheduleset: scheduleset)
   end
     Assignation.create( day: arr.pop(),scheduleset: scheduleset)
end


#EXAM SCHDEULE SETS :
for l in 1..7
   examscheduleset = Examscheduleset.create(user: user3)
   for m in 1..25
     Examtiming.create(time:Time.now, file: "#{m}.mp3",examscheduleset: examscheduleset)
   end
   for n in 1..25
     Examassignation.create(time:Time.now, examscheduleset: examscheduleset)
   end
end




#### USER4:
#REGULAR SCHDEULE SETS :
for i in 1..7
   scheduleset = Scheduleset.create(user: user4,description:'Description')
   for j in 1..25
     Timing.create(time:Time.now, file: "#{i}.mp3",scheduleset: scheduleset)
   end
     Assignation.create( day: arr.pop(),scheduleset: scheduleset)
end


#EXAM SCHDEULE SETS :
for l in 1..7
   examscheduleset = Examscheduleset.create(user: user4)
   for m in 1..25
     Examtiming.create(time:Time.now, file: "#{m}.mp3",examscheduleset: examscheduleset)
   end
   for n in 1..25
     Examassignation.create(time:Time.now, examscheduleset: examscheduleset)
   end
end


#### USER5:
#REGULAR SCHDEULE SETS :
for i in 1..7
   scheduleset = Scheduleset.create(user: user5,description:'Description')
   for j in 1..25
     Timing.create(time:Time.now, file: "#{i}.mp3",scheduleset: scheduleset)
   end
     Assignation.create( day: arr.pop(),scheduleset: scheduleset)
end


#EXAM SCHDEULE SETS :
for l in 1..7
   examscheduleset = Examscheduleset.create(user: user5)
   for m in 1..25
     Examtiming.create(time:Time.now, file: "#{m}.mp3",examscheduleset: examscheduleset)
   end
   for n in 1..25
     Examassignation.create(time:Time.now, examscheduleset: examscheduleset)
   end
end


#### USER6:
#REGULAR SCHDEULE SETS :
for i in 1..7
   scheduleset = Scheduleset.create(user: user6,description:'Description')
   for j in 1..25
     Timing.create(time:Time.now, file: "#{i}.mp3",scheduleset: scheduleset)
   end
     Assignation.create( day: arr.pop(),scheduleset: scheduleset)
end


#EXAM SCHDEULE SETS :
for l in 1..7
   examscheduleset = Examscheduleset.create(user: user6)
   for m in 1..25
     Examtiming.create(time:Time.now, file: "#{m}.mp3",examscheduleset: examscheduleset)
   end
   for n in 1..25
     Examassignation.create(time:Time.now, examscheduleset: examscheduleset)
   end
end


##############333#######   END OF SCHEDULE SETS #####################################33


##AUDIOS
   for m in 1..10
     Audio.create(description:"#{m} file ", url:"server/localhost/#{m}.mp3" , filename: "#{m}.mp3")
   end


   for m in 1..5
     Ticket.create(title:"Ticket Number : #{m}", body:"Test Body For Ticket : #{m}" , status: "open" ,user: user1)
   end
