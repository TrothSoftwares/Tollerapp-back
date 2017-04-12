user1 = User.create(email:'local1@admin.com',password:'password',role:'local' ,dyndns:'local1admindns.com', internetport:3000,ethernetport:4000 ,nameofinstitution:'Test Institution local 1', contactno: 123465798,location:'Test location 1',installationdate:'2017-12-09')
user2 = User.create(email:'local2@admin.com',password:'password',role:'local' ,dyndns:'local2admindns.com', internetport:3000,ethernetport:4000 ,nameofinstitution:'Test Institution local 2', contactno: 123465798,location:'Test location 2',installationdate:'2017-12-09')
user3 = User.create(email:'local3@admin.com',password:'password',role:'local' ,dyndns:'local3admindns.com', internetport:3000,ethernetport:4000 ,nameofinstitution:'Test Institution local 3', contactno: 123465798,location:'Test location 3',installationdate:'2017-12-09')
user4 = User.create(email:'local4@admin.com',password:'password',role:'local' ,dyndns:'local4admindns.com', internetport:3000,ethernetport:4000 ,nameofinstitution:'Test Institution local 4', contactno: 123465798,location:'Test location 4',installationdate:'2017-12-09')
user5 = User.create(email:'local5@admin.com',password:'password',role:'local' ,dyndns:'local5admindns.com', internetport:3000,ethernetport:4000 ,nameofinstitution:'Test Institution local 5', contactno: 123465798,location:'Test location 5',installationdate:'2017-12-09')
user6 = User.create(email:'local6@admin.com',password:'password',role:'local' ,dyndns:'local6admindns.com', internetport:3000,ethernetport:4000 ,nameofinstitution:'Test Institution local 6', contactno: 123465798,location:'Test location 6',installationdate:'2017-12-09')
groupuser1 = User.create(email:'group1@admin.com',password:'password',role:'group')
groupuser2 = User.create(email:'group2@admin.com',password:'password',role:'group')
groupuser3 = User.create(email:'group3@admin.com',password:'password',role:'group')
superadmin = User.create(email:'super@admin.com',password:'password',role:'super')


group1 = Group.create(name: 'Group1')
group2 = Group.create(name: 'Group2')
group3 = Group.create(name: 'Group3')


membership1 = Membership.create(group: group1 , user:user1,owner:false)
membership2 = Membership.create(group: group1 , user:user2 ,owner:false)
membership3 = Membership.create(group: group2 , user:user3 ,owner:false)
membership4 = Membership.create(group: group2 , user:user4,owner:false)
membership5 = Membership.create(group: group3 , user:user5,owner:false)
membership6 = Membership.create(group: group3 , user:user6,owner:false)

ownermembership7 = Membership.create(group: group1 , user:groupuser1,owner:true)
ownermembership8 = Membership.create(group: group2 , user:groupuser2,owner:true)
ownermembership9 = Membership.create(group: group3 , user:groupuser3,owner:true)



#SCHDEULE SETS WITH TIMINGS AND ASSIGNATIONS
arr = ['sunday','saturday','friday','thursday','wednessday','tuesday','monday']


## FOR USER 1
for i in 1..7
   scheduleset = Scheduleset.create(user: user1,description:'Description1')
   for j in 1..25
     Timing.create(time:Time.now, file: "#{i}.mp3",scheduleset: scheduleset)
   end
     Assignation.create( day: arr.pop(),scheduleset: scheduleset)
end

## FOR USER 2
for i in 1..7
   scheduleset = Scheduleset.create(user: user2,description:'Description2')
   for j in 1..25
     Timing.create(time:Time.now, file: "#{i}.mp3",scheduleset: scheduleset)
   end
     Assignation.create( day: arr.pop(),scheduleset: scheduleset)
end

## FOR USER 3
for i in 1..7
   scheduleset = Scheduleset.create(user: user3,description:'Description3')
   for j in 1..25
     Timing.create(time:Time.now, file: "#{i}.mp3",scheduleset: scheduleset)
   end
     Assignation.create( day: arr.pop(),scheduleset: scheduleset)
end

## FOR USER 4
for i in 1..7
   scheduleset = Scheduleset.create(user: user4,description:'Description4')
   for j in 1..25
     Timing.create(time:Time.now, file: "#{i}.mp3",scheduleset: scheduleset)
   end
     Assignation.create( day: arr.pop(),scheduleset: scheduleset)
end

## FOR USER 5
for i in 1..7
   scheduleset = Scheduleset.create(user: user5,description:'Description5')
   for j in 1..25
     Timing.create(time:Time.now, file: "#{i}.mp3",scheduleset: scheduleset)
   end
     Assignation.create( day: arr.pop(),scheduleset: scheduleset)
end

## FOR USER 6
for i in 1..7
   scheduleset = Scheduleset.create(user: user6,description:'Description6')
   for j in 1..25
     Timing.create(time:Time.now, file: "#{i}.mp3",scheduleset: scheduleset)
   end
     Assignation.create( day: arr.pop(),scheduleset: scheduleset)
end

### end of SCHEDULE set creation




#EXAM SCHDEULE SETS WITH TIMINGS AND ASSIGNATIONS
for l in 1..7
   examscheduleset = Examscheduleset.create(user: user1)
   for m in 1..25
     Examtiming.create(time:Time.now, file: "#{m}.mp3",examscheduleset: examscheduleset)
   end
   for n in 1..25
     Examassignation.create(time:Time.now, examscheduleset: examscheduleset)
   end
end

#AUDIOS
   for m in 1..10
     Audio.create(description:"#{m} file ", url:"server/localhost/#{m}.mp3" , filename: "#{m}.mp3")
   end


   for m in 1..5
     Ticket.create(title:"Ticket Number : #{m}", body:"Test Body For Ticket : #{m}" , status: "open" ,user: user1)
   end







#
#
# #SAMPLE TIMINGS FOR REGULAR SCHEDULE SET
# timings1_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings2_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings3_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings4_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings5_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings6_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings7_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings8_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings9_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings10_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings11_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings12_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings13_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings14_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings15_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings16_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings17_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings18_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings19_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings20_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings21_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings22_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings23_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings24_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
# timings25_1= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset1)
#
#
#
# #SAMPLE TIMINGS FOR EXAM SCHEDULE SET
# timings1_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings2_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings3_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings4_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings5_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings6_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings7_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings8_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings9_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings10_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings11_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings12_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings13_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings14_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings15_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings16_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings17_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings18_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings19_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings20_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings21_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings22_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings23_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings24_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
# timings25_9= Timing.create(time:'2017-12-09', file: '1.mp3',scheduleset: scheduleset9)
#
#
# #SAMPLE ASSIGNATION FOR REGULAR SCHEDULE SET
# assignation1_1= Assignation.create(time:'2017-12-09', day: 'monday',scheduleset: scheduleset1)
# assignation2_1= Assignation.create(time:'2017-12-09', day: 'tuesday',scheduleset: scheduleset1)
# assignation3_1= Assignation.create(time:'2017-12-09', day: 'wednessday',scheduleset: scheduleset1)
# assignation4_1= Assignation.create(time:'2017-12-09', day: 'thursday',scheduleset: scheduleset1)
# assignation5_1= Assignation.create(time:'2017-12-09', day: 'friday',scheduleset: scheduleset1)
# assignation6_1= Assignation.create(time:'2017-12-09', day: 'saturday',scheduleset: scheduleset1)
# assignation7_1= Assignation.create(time:'2017-12-09', day: 'sunday',scheduleset: scheduleset1)
#
#
#
# #SAMPLE ASSIGNATION FOR REGULAR EXAM SET
# assignation1_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation2_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation3_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation4_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation5_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation6_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation7_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation8_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation9_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation10_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation11_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation12_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation13_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation14_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation15_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation16_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation17_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation18_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation19_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation20_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation21_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation22_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation23_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation24_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
# assignation25_9= Assignation.create(time:'2017-12-09', time: '2017-12-09',scheduleset: scheduleset9)
