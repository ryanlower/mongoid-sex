### mongoid-sex readme

```ruby
class Person
  include Mongoid::Document
  include Mongoid::Sex

  field :name, type: String
end
```

```ruby
p = Person.last

p.sex
=> male

p.sex.male?
=> true

p.sex.his_her
=> "his"

"This is #{p.name}. #{p.sex.he_she.capitalize} is #{p.sex}"
=> "This is Ryan. He is male"
```

```ruby
p = Person.last

p.sex = :male
p.sex
=> male

p.sex = 'F'
p.sex
=> female
```

Optional I18n:

```
es:
  sex:
    male: "hombre"
    he: "él"
    female: "mujer"
    she: "ella"
```

```ruby
"#{p.name}. #{p.sex.he_she.capitalize} es un #{p.sex}"
=> "Ryan. Él es un hombre"
```