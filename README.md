### mongoid-sex readme

```ruby
class Person
  include Mongoid::Document
  include Mongoid::Sex
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