
This Project is a weather app dealing with open weather map API 

using it's ablilites to interface the temperature of any city all over the world

#Demo
https://weather-khalid.herokuapp.com/

![alt text](https://image.ibb.co/dqtwHK/Screenshot_from_2018_09_16_13_53_15.png)

## installation
```ruby
bundle install
```

Check cerdenalities in database.yml for me it's mysql
then 

```ruby
rake db:create
rake db:migrate
rake db:seed #it will take a will as it seeds all cities supported
```
finally 

```ruby
rails s 
```
AND VOILA it's working
