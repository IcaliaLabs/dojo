# frozen_string_literal: true

TEAM_MEMBERS = %w[Walter Kevin Cejas Vov Lentes Scarlett Jesus
                  Cesar Julian Luis].freeze
PROJECTS = %w[Okudoc Datoz RTS Foresight Whales EstoyBien Sostener
              StropInsights TKING Vamonos].freeze

class Team
  attr_accessor :members, :lead

  def initialize(member_names, lead_name)
    @members = member_names.map { |name| Member.new(name) }
    @lead =  Member.new(lead_name)
  end

  def all_members
    [@lead] + @members
  end

  def assign_projects(projects)
    all_members.each { |member| member.projects = projects }
  end
end

# Clase para construir un Miembro
class Member
  attr_reader :name
  attr_reader :role
  attr_accessor :projects

  def initialize(name)
    @name = name
    @role = %w[developer Designer].sample
    @projects = []
  end
  end

# Clase para construir un Proyecto
class Project
  attr_reader :name
  attr_accessor :lead
  attr_accessor :members

  def initialize(name, lead, members)
    @name = name
    @lead = lead
    @members = members
  end
end

class Shuffler
  def initialize
    @teams = create_teams(TEAM_MEMBERS)
  end

  def members
    @teams.map(&:all_members).flatten
  end

  def create_teams(member_names)
    lead_names = member_names.sample(3)
    leftover_names = (member_names - lead_names)
    teams = lead_names.map do |lead_name|
      Team.new([leftover_names.pop, leftover_names.pop], lead_name)
    end
    leftover_names.each { |member| teams[0].members << Member.new(member) }
    teams
  end

  # Asigna miembros a los proyectos
  def assign_projects
    assigned_projects = []
    team_index = 0
    PROJECTS.each do |project_name|
      team = @teams[team_index]
      project = Project.new(project_name, team.lead, team.all_members)
      assigned_projects << project
      next unless assigned_projects.size == 2

      team.assign_projects(assigned_projects)
      assigned_projects = []
      if (team_index += 1) > (@teams.size - 1)
        team_index = 0
      end
    end
  end
end
