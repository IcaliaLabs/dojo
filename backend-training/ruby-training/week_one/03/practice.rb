## Create a shuffler project assignator to assign developers that work at Icalia to projects
## 1. Every developer must team with two other members
## 2. Every developer has more or less the same amount of projects
## 3. Build as many classes you think you will need
## 4. Refactor every time you can
## 5. The code at the bottom must run without change
## Hint: http://ruby-doc.org/core-2.2.0/Array.html#method-i-sort

TEAM_MEMBERS = %w{ Walter Kevin Cejas Vov Lentes Scarlett Jesus Cesar Julian Luis }
PROJECTS = %w{ Okudoc Datoz RTS Foresight Whales EstoyBien Sostener StropInsights TKING Vamonos }

## Your code starts here

## Your code ends here

shuffler = Shuffler.new

shuffler.assign_projects

shuffler.members.each do |member|
  puts "###Projects of #{member.name} ###"
  member.projects.each do |project|
    puts "== #{project.name} =="
    puts "Lead name: #{project.lead.name}"
    puts "Members: "
    project.members.each do |member|
      puts "#{member.name} with #{member.role} role"
    end
  end
end
