# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do |index|
  article = Article.create({title: "Title#{index}", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt odio felis, sit amet malesuada arcu ultricies vitae. Quisque hendrerit, neque vel lacinia consectetur, quam lacus semper ipsum, quis semper metus libero quis quam. In dictum velit nec dictum imperdiet. Phasellus blandit magna velit, eu facilisis mi auctor vitae. Ut sodales neque vitae lorem varius, ac viverra nunc bibendum. Cras interdum, metus consectetur facilisis fermentum, velit neque malesuada turpis, a molestie velit turpis a nulla. Aliquam faucibus lectus ligula, at tincidunt tellus blandit sit amet."})
  5.times do |index|
    comment = article.comments.build({author:"author #{index}",
                          content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt odio felis, sit amet malesuada arcu ultricies vitae. Quisque hendrerit, neque vel lacinia consectetur, quam lacus semper ipsum, quis semper metus libero quis quam. In dictum velit nec dictum imperdiet. Phasellus blandit magna velit, eu facilisis mi auctor vitae. Ut sodales neque vitae lorem varius, ac viverra nunc bibendum. Cras interdum"}
        )
    comment.save
  end
end