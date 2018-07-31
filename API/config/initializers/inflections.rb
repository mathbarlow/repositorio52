# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
#
#
ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'localidad', 'localidades'
  inflect.irregular 'universidad', 'universidades'
  inflect.irregular 'universidad_localidad', 'universidad_localidades'
  inflect.irregular 'Localidad', 'Localidades'
  inflect.irregular 'Universidad', 'Universidades'
  inflect.irregular 'UniversidadLocalidad', 'UniversidadLocalidades'
  inflect.irregular 'materia', 'materias'
  inflect.irregular 'Materia', 'Materias'
end