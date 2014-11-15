#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Initializing users==========
User.delete_all
# . . .
User.create(
	:login_id => 'denis123',
  	:login_pwd => 'denis123',
	:name => 'Denis',
	:image_url =>   '/images/denis.jpg'
)
# . . .
User.create(
	:login_id => 'yuhsiang123',
  	:login_pwd => 'yuhsiang123',
	:name => 'Yuhsiang',
	:image_url =>   '/images/yuhsiang.jpg'
)
# . . .
User.create(
	:login_id => 'caipei123',
  	:login_pwd => 'caipei123',
	:name => 'Caipei',
	:image_url =>   '/images/caipei.jpg'
)
# . . .
User.create(
	:login_id => 'tom123',
  	:login_pwd => 'tom123',
	:name => 'Tom',
	:image_url =>   '/images/tom.jpg'
)
# . . .
User.create(
	:login_id => 'jerry123',
  	:login_pwd => 'jerry123',
	:name => 'Jerry',
	:image_url =>   '/images/jerry.jpg'
)

#Initializing books==========
Book.delete_all
# . . .
Book.create!(
	#Dbpedia: http://dbpedia.org/resource/Treasure_Island
	:name => 'Treasure Island',#@en
    #author: http://dbpedia.org/resource/Robert_Louis_Stevenson
    :author => 'Robert Louis Stevenson',
    :abstract => 'Treasure Island is an adventure novel by Scottish author Robert Louis Stevenson, narrating a tale of "buccaneers and buried gold". First published as a book on 23 May 1883, it was originally serialized in the children\'s magazine Young Folks between 1881 and 1882 under the title Treasure Island or, the mutiny of the Hispaniola with Stevenson adopting the pseudonym Captain George North.Traditionally considered a coming-of-age story, Treasure Island is a tale noted for its atmosphere, characters and action, and also as a wry commentary on the ambiguity of morality — as seen in Long John Silver — unusual for children\'s literature. It is one of the most frequently dramatized of all novels. The influence of Treasure Island on popular perceptions of pirates is enormous, including such elements as treasure maps marked with an "X", schooners, the Black Spot, tropical islands, and one-legged seamen bearing parrots on their shoulders.',
    :numberOfPages => nil,
    :publisher => nil,
    :imageLink => nil,
    :amazonLink => nil
)
# . . .
Book.create!(
	#Dbpedia: http://dbpedia.org/resource/Moby-Dick
	:name => 'Moby-Dick',#@en
    #author: http://dbpedia.org/resource/Herman_Melville
    :author => 'Robert Louis Stevenson',
    :abstract => 'Moby-Dick; or, The Whale (1851) is the sixth book by American writer Herman Melville. The work is an epic sea story of Captain Ahab\'s voyage in pursuit of a certain sperm whale that he calls Moby Dick (with no hyphen; but some editions of the book change either the title or the whale\'s name to make them consistent). A contemporary commercial failure and out of print at the time of the author\'s death in 1891, its reputation rose during the twentieth century. D.H. Lawrence called it "the greatest book of the sea ever written." Jorge Luis Borges praised the style: "Unforgettable phrases abound." Today it is considered one of the Great American Novels and a leading work of American Romanticism.The opening line, "Call me Ishmael", is one of the most recognizable opening lines in Western literature. Ishmael then narrates the voyage of the whaleship Pequod, commanded by Captain Ahab. Ahab has one purpose: revenge on Moby Dick, a ferocious, enigmatic white whale which on a previous voyage destroyed Ahab\'s ship and severed his leg at the knee. The detailed and realistic descriptions of whale hunting and the process of extracting whale oil, as well as life aboard ship among a culturally diverse crew, are mixed with exploration of class and social status, good and evil, and the existence of God.Melville uses a wide range of styles and literary devices ranging from lists and catalogs to Shakespearean stage directions, soliloquies, and asides.',
    :numberOfPages => 635,
    #publisher: http://dbpedia.org/resource/Harper_(publisher)
    :publisher => 'Harper',
    :imageLink => nil,
    :amazonLink => nil
)
# . . .
Book.create(
   #Dbpedia: http://dbpedia.org/resource/The_Little_Prince
   :name => 'The Little Prince',#@en
    #author: http://dbpedia.org/resource/Antoine_de_Saint-Exup%C3%A9ry
    :author => 'Antoine de Saint-Exupéry',
    :abstract => 'The Little Prince (French: Le Petit Prince; French pronunciation: ​[lə.pə.tiˈpʁɛ̃s]), first published in 1943, is a novella and the most famous work of the French aristocrat, writer, poet and pioneering aviator Antoine de Saint-Exupéry (1900–1944).The novella is both the most-read and most-translated book in the French language, and was voted the best book of the 20th century in France. Translated into more than 250 languages and dialects (as well as braille), selling nearly two million copies annually with sales totalling over 140 million copies worldwide, it has become one of the best-selling books ever published.After the outbreak of the Second World War Saint-Exupéry became exiled in North America. In the midst of personal upheavals and failing health he produced almost half of the writings he would be remembered for, including a tender tale of loneliness, friendship, love and loss, in the form of a young prince fallen to Earth. An earlier memoir by the author had recounted his aviation experiences in the Sahara Desert and he is thought to have drawn on those same experiences for use as plot elements in The Little Prince.Since its first publication, the novella has been adapted to various mediums over the decades, including audio recordings, live stage, film screen, ballet, and operatic works.',
    :numberOfPages => nil,
    :publisher => nil,
    :imageLink => nil,
    :amazonLink => nil
)
# . . .
Book.create!(
	#Dbpedia: http://dbpedia.org/resource/The_Idiot
	:name => 'The Idiot',#@en
    #author: http://dbpedia.org/resource/Fyodor_Dostoyevsky
    :author => 'Fyodor Dostoyevsky',
    :abstract => 'The Idiot (Russian: Идиот, Idiot) is a novel written by the 19th-century Russian author Fyodor Dostoyevsky. It was first published serially in The Russian Messenger between 1868 and 1869. The Idiot, alongside some of Dostoyevsky\'s other works, is often considered one of the most brilliant literary achievements of the "Golden Age" of Russian literature.',
    :numberOfPages => nil,
    :publisher => nil,
    :imageLink => nil,
    :amazonLink => nil
)
# . . .
Book.create!(
	#Dbpedia: http://dbpedia.org/resource/War_and_Peace
	:name => 'War and Peace',
    #author: http://dbpedia.org/resource/Leo_Tolstoy
    :author => 'Leo Tolstoy',
    :abstract => 'War and Peace (Pre-reform Russian: «Война и миръ», Voyna i mir) is a novel by the Russian author Leo Tolstoy, first published in 1869. The work is epic in scale and is regarded as one of the most important works of world literature. It is considered as Tolstoy\'s finest literary achievement, along with his other major prose work, Anna Karenina (1873–1877).War and Peace delineates in graphic detail events surrounding the French invasion of Russia, and the impact of the Napoleonic era on Tsarist society, as seen through the eyes of five Russian aristocratic families. Portions of an earlier version of the novel, then known as The Year 1805,were serialized in the magazine The Russian Messenger between 1865 and 1867. The novel was first published in its entirety in 1869. Newsweek in 2009 ranked it first in its list of the Top 100 Books. In 2003, the novel was listed at number 20 on the BBC\'s survey The Big Read.Tolstoy himself, somewhat enigmatically, said of War and Peace that it was "not a novel, even less is it a poem, and still less a historical chronicle". Large sections of the work, especially in the later chapters, are philosophical discussion rather than narrative. He went on to elaborate that the best Russian literature does not conform to standard norms and hence hesitated to call War and Peace a novel. (Instead, Tolstoy regarded Anna Karenina as his first true novel.)',
    :numberOfPages => 1225,
    :publisher => 'The Russian Messenger',
    :imageLink => nil,
    :amazonLink => nil
)

user1 = User.find_by_name('Denis')
user2 = User.find_by_name('Yuhsiang')
user3 = User.find_by_name('Caipei')
user4 = User.find_by_name('Tom')
user5 = User.find_by_name('Jerry')

book1 = Book.find_by_name('Treasure Island')
book2 = Book.find_by_name('Moby-Dick')
book3 = Book.find_by_name('The Little Prince')
book4 = Book.find_by_name('The Idiot')
book5 = Book.find_by_name('War and Peace')

#Initializing user_book_ralations==========
UserBookRelation.destroy_all
#user1
UserBookRelation.create!(:user_id => user1.id, :book_id => book1.id)
#user2
UserBookRelation.create!(:user_id => user2.id, :book_id => book1.id)
UserBookRelation.create!(:user_id => user2.id, :book_id => book2.id)
#user3
UserBookRelation.create!(:user_id => user3.id, :book_id => book1.id)
UserBookRelation.create!(:user_id => user3.id, :book_id => book2.id)
UserBookRelation.create!(:user_id => user3.id, :book_id => book3.id)
#user4
UserBookRelation.create!(:user_id => user4.id, :book_id => book1.id)
UserBookRelation.create!(:user_id => user4.id, :book_id => book2.id)
UserBookRelation.create!(:user_id => user4.id, :book_id => book3.id)
UserBookRelation.create!(:user_id => user4.id, :book_id => book4.id)
#user5
UserBookRelation.create!(:user_id => user5.id, :book_id => book1.id)
UserBookRelation.create!(:user_id => user5.id, :book_id => book2.id)
UserBookRelation.create!(:user_id => user5.id, :book_id => book3.id)
UserBookRelation.create!(:user_id => user5.id, :book_id => book4.id)
UserBookRelation.create!(:user_id => user5.id, :book_id => book5.id)

#Initializing friendships==========
#user1
Friendship.destroy_all
user1.friendships.create(:user_id => user1.id, :friend_id => user2.id)
user1.friendships.create(:user_id => user1.id, :friend_id => user3.id)
user1.friendships.create(:user_id => user1.id, :friend_id => user4.id)
user1.friendships.create(:user_id => user1.id, :friend_id => user5.id)
#user2
user2.friendships.create(:user_id => user1.id, :friend_id => user3.id)
user2.friendships.create(:user_id => user1.id, :friend_id => user4.id)
#user3 set from user1/user2
#user4 set from user1/user2
#user5 set from user1