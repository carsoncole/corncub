# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Unit.create([
#   {name: 'Sample Pack 100', treasurer_first_name: 'Paul', treasurer_last_name: 'Jones', treasurer_email: 'paul@example.com', send_email_on_registration: false, send_emails: false}
#   ])

# Scout.create([
# {first_name: 'Super', last_name: 'Admin', email: 'admin@example.com', unit_id: 1, password: 'password', is_site_sales_admin: true, is_take_orders_admin: true, is_prizes_admin: true, is_financial_admin: true, is_online_sales_admin: true, is_warehouse_admin: true, is_unit_admin: true},
# {first_name: 'Takeorders', last_name: 'Admin', email: 'take_orders_admin@example.com', unit_id: 1, password: 'password', is_take_orders_admin: true},
# {first_name: 'Unit', last_name: 'Admin', email: 'unit_admin@example.com', unit_id: 1, password: 'password', is_unit_admin: true, is_warehouse_admin: true},
# {first_name: 'Sitesales', last_name: 'Admin', email: 'site_sales_admin@example.com', unit_id: 1, password: 'password', is_site_sales_admin: true},
# {first_name: 'Financial', last_name: 'Admin', email: 'financial_admin@example.com', unit_id: 1, password: 'password', is_financial_admin: true},
# {first_name: 'Prizes', last_name: 'Admin', email: 'prizes_admin@example.com', unit_id: 1, password: 'password', is_prizes_admin: true},
# {first_name: 'Warehouse', last_name: 'Admin', email: 'warehouse_admin@example.com', unit_id: 1, password: 'password', is_warehouse_admin: true},
# {first_name: 'Online', last_name: 'Admin', email: 'online_sales_admin@example.com', unit_id: 1, password: 'password', is_online_sales_admin: true},
# {first_name: 'Mike', last_name: 'Jones', email: 'scout1@example.com', unit_id: 1, password: 'password'},
# {first_name: 'Bill', last_name: 'Hardy', email: 'scout2@example.com', unit_id: 1, password: 'password'},
# {first_name: 'Steve', last_name: 'Wilson', email: 'scout3@example.com', unit_id: 1, password: 'password'},
# {first_name: 'Juff', last_name: 'Dump', email: 'scout4@example.com', unit_id: 1, password: 'password'},
# {first_name: 'Jonas', last_name: 'Trump', email: 'scout5@example.com', unit_id: 1, password: 'password'},
# {first_name: 'Michael', last_name: 'Yeung', email: 'scout6@example.com', unit_id: 1, password: 'password'},
# {first_name: 'Stenis', last_name: 'Smith', email: 'scout7@example.com', unit_id: 1, password: 'password'},
# {first_name: 'Simon', last_name: 'Jackson', email: 'scout8@example.com', unit_id: 1, password: 'password'},
# {first_name: 'Leon', last_name: 'Ladd', email: 'scout9@example.com', unit_id: 1, password: 'password'},
# {first_name: 'Clark', last_name: 'Ryan', email: 'scout10@example.com', unit_id: 1, password: 'password'}
# ])

# Event.create([
#   { unit_id: 1, name: 'Popcorn Sales 2017'}
#   ])

# event = Event.first

Product.create([
  {name: 'Chocolatey Caramel Crunch', event_id: nil, retail_price: 25,  sourced_from: 'Chief Seattle Council 2017', url: 'chocolatey-caramel-crunch.png'},
  {name: 'White Chocolatey Pretzels', event_id: nil, retail_price: 25,  sourced_from: 'Chief Seattle Council 2017', url: 'white-chocolatey-pretzels.png'},
  {name: 'Seattle Seahawks Tin', event_id: nil, retail_price: 25,  sourced_from: 'Chief Seattle Council 2017', url: 'seattle-seahawks-tin.jpg'},
  {name: 'Premium Caramel Corn', event_id: nil, retail_price: 20,  sourced_from: 'Chief Seattle Council 2017', url: 'premium-caramel-corn.png'},
  {name: 'White Cheddar Cheese Corn', event_id: nil, retail_price: 15,  sourced_from: 'Chief Seattle Council 2017', url: 'white-cheddar-cheese.png'},
  {name: 'Classic Caramel Corn', event_id: nil, retail_price: 10,  sourced_from: 'Chief Seattle Council 2017', url: 'classic-caramel-corn.png'},
  {name: 'Popping Corn', event_id: nil, retail_price: 10,  sourced_from: 'Chief Seattle Council 2017', url: 'popping-corn.png'},
  {name: 'Kettle Corn Microwave', event_id: nil, retail_price: 20,  sourced_from: 'Chief Seattle Council 2017', url: 'kettle-corn-microwave.jpg'},
  {name: 'Unbelievable Butter Microwave', event_id: nil, retail_price: 20,  sourced_from: 'Chief Seattle Council 2017', url: 'unbelievable-butter-microwave.jpg'},
  {name: "Cheese Lover's Collection", event_id: nil, retail_price: 30,  sourced_from: 'Chief Seattle Council 2017', url: 'cheese-lovers-collection.jpg'},
  {name: "Chocolate Lover's Collection", event_id: nil, retail_price: 60,  sourced_from: 'Chief Seattle Council 2017', url: 'chocolate-lovers-collection.png'},
  {name: "Salted Caramel Popcorn", event_id: nil, retail_price: 20,  sourced_from: 'Chief Seattle Council 2017'},
  {name: "Popcorn for our Troops Gold Donation", event_id: nil, retail_price: 50,  sourced_from: 'Chief Seattle Council 2017', url: 'popcorn-for-troops-50.jpg'},
  {name: "Popcorn for our Troops Silver Donation", event_id: nil, retail_price: 30,  sourced_from: 'Chief Seattle Council 2017', url: 'popcorn-for-troops-30.jpg'},
  {name: "Pack Donation", event_id: nil, retail_price: 1,  sourced_from: 'Chief Seattle Council 2017', url: 'pack-donation.png', is_pack_donation: true, is_physical_inventory: false, is_sourced_from_bsa: false}
  ])

# event.create_default_products!("Chief Seattle Council 2017")

# products_array = event.products

# Stock.create ([
#   {event_id: 1, product_id: products_array[0].id, location: 'warehouse', description: 'Initial BSA order', is_transfer_from_bsa: true, date: Date.today - 7.days, created_by: 3, quantity: 100},
#   {event_id: 1, product_id: products_array[1].id, location: 'warehouse', description: 'Initial BSA order', is_transfer_from_bsa: true, date: Date.today - 7.days, created_by: 3, quantity: 100}, 
#   {event_id: 1, product_id: products_array[2].id, location: 'warehouse', description: 'Initial BSA order', is_transfer_from_bsa: true, date: Date.today - 7.days, created_by: 3, quantity: 100},
#   {event_id: 1, product_id: products_array[3].id, location: 'warehouse', description: 'Initial BSA order', is_transfer_from_bsa: true, date: Date.today - 7.days, created_by: 3, quantity: 100},
#   {event_id: 1, product_id: products_array[4].id, location: 'warehouse', description: 'Initial BSA order', is_transfer_from_bsa: true, date: Date.today - 7.days, created_by: 3, quantity: 100},
#   {event_id: 1, product_id: products_array[5].id, location: 'warehouse', description: 'Initial BSA order', is_transfer_from_bsa: true, date: Date.today - 7.days, created_by: 3, quantity: 100},
#   {event_id: 1, product_id: products_array[6].id, location: 'warehouse', description: 'Initial BSA order', is_transfer_from_bsa: true, date: Date.today - 7.days, created_by: 3, quantity: 288},
#   {event_id: 1, product_id: products_array[7].id, location: 'warehouse', description: 'Initial BSA order', is_transfer_from_bsa: true, date: Date.today - 7.days, created_by: 3, quantity: 108},
#   {event_id: 1, product_id: products_array[8].id, location: 'warehouse', description: 'Initial BSA order', is_transfer_from_bsa: true, date: Date.today - 7.days, created_by: 3, quantity: 12},
#   {event_id: 1, product_id: products_array[9].id, location: 'warehouse', description: 'Initial BSA order', is_transfer_from_bsa: true, date: Date.today - 7.days, created_by: 3, quantity: 12},
#   {event_id: 1, product_id: products_array[10].id, location: 'warehouse', description: 'Initial BSA order', is_transfer_from_bsa: true, date: Date.today - 7.days, created_by: 3, quantity: 12},
#   {event_id: 1, product_id: products_array[11].id, location: 'warehouse', description: 'Initial BSA order', is_transfer_from_bsa: true, date: Date.today - 7.days, created_by: 3, quantity: 6},
#   {event_id: 1, product_id: products_array[12].id, location: 'warehouse', description: 'Initial BSA order', is_transfer_from_bsa: true, date: Date.today - 7.days, created_by: 3, quantity: 4}, 
#   {event_id: 1, product_id: products_array[13].id, location: 'warehouse', description: 'Initial BSA order', is_transfer_from_bsa: true, date: Date.today - 7.days, created_by: 3, quantity: 0},
#   {event_id: 1, product_id: products_array[2].id, location: 'site sales', created_by: 3, is_transfer_from_warehouse: true, date: Date.today - 2.days, quantity: 50},
#   {event_id: 1, product_id: products_array[3].id, location: 'site sales', created_by: 3,  is_transfer_from_warehouse: true, date: Date.today - 2.days, quantity: 50},
#   {event_id: 1, product_id: products_array[4].id, location: 'site sales', created_by: 3,  is_transfer_from_warehouse: true, date: Date.today - 2.days, quantity: 50},
#   {event_id: 1, product_id: products_array[5].id, location: 'site sales', created_by: 3,  is_transfer_from_warehouse: true, date: Date.today - 2.days, quantity: 50},
#   {event_id: 1, product_id: products_array[6].id, location: 'site sales', created_by: 3,  is_transfer_from_warehouse: true, date: Date.today - 2.days, quantity: 50},
#   {event_id: 1, product_id: products_array[7].id, location: 'site sales', created_by: 3,  is_transfer_from_warehouse: true, date: Date.today - 2.days, quantity: 50}
#   ])

# SiteSale.create ([
#   {event_id: 1, name: 'Ace Hardware', date: "#{Date.today + 5.days }"},
#   {event_id: 1, name: 'Rite Aid', date: "#{Date.today + 12.days }"},
#   {event_id: 1, name: 'Wilson High School', date: "#{Date.today + 45.days }"},
#   {event_id: 1, name: 'Anytown Police Station', date: "#{Date.today + 26.days }"},
#   {event_id: 1, name: 'Town & Country', date: "#{Date.today + 35.days }"},
#   {event_id: 1, name: 'Safeway', date: "#{Date.today + 18.days }"},
#   {event_id: 1, name: 'Walmart', date: "#{Date.today - 2.days }"}
#   ])

# site_sale = SiteSale.find(7)

# ScoutSiteSale.create ([
#   {scout_id: 7, site_sale_id: 7, hours_worked: 4},
#   {scout_id: 8, site_sale_id:7, hours_worked: 4},
#   {scout_id: 9, site_sale_id:7, hours_worked: 2},
#   {scout_id: 10, site_sale_id:7, hours_worked: 4},
#   {scout_id: 11, site_sale_id:7, hours_worked: 2},
#   {scout_id: 12, site_sale_id:7, hours_worked: 3},
#   {scout_id: 13, site_sale_id:7, hours_worked: 4}
#   ])

# SiteSaleLineItem.create ([{site_sale_id: 7, product_id: products_array[0].id, quantity: 25}, {site_sale_id: 7, product_id: products_array[1].id, quantity: 10}, {site_sale_id: 7, product_id: products_array[2].id, quantity: 12}, {site_sale_id: 7, product_id: products_array[3].id, quantity: 20}, {site_sale_id: 7, product_id: products_array[4].id, quantity: 5}, {site_sale_id: 7, product_id: products_array[5].id, quantity: 1}])

# Prize.create([
#   {event_id: 1,name: 'Participation Patch', sales_amount: 25, source: 'Council', source_id: '633893', source_description: 'Prize Level 1'},
#   {event_id: 1,name: 'Marshmallow Straight Shooter', sales_amount: 350, source: 'Council', source_id: '634181', source_description: 'Prize Level 2', url: 'prize-marshmallow-straight-shooter.png'},
#   {event_id: 1,name: 'Luci Solar Lantern', sales_amount: 350, source: 'Council', source_id: '633896', source_description: 'Prize Level 2', url: 'prize-luci-solar-lantern.jpg'},
#   {event_id: 1,name: 'Slime Lab Science Kit', sales_amount: 350, source: 'Council', source_id: '7406', source_description: 'Prize Level 2', url: 'prize-slime-lab-science-kit.jpg'},
#   {event_id: 1,name: 'Cub Scout Utility Knife', sales_amount: 350, source: 'Council', source_id: '615777', source_description: 'Prize Level 2', url: 'prize-cub-scout-utility-knife.png'},
#   {event_id: 1,name: 'HEXBUG Aquabot Jellyfish', sales_amount: 450, source: 'Council', source_id: '634191', source_description: 'Prize Level 3', url: 'prize-hexbug-aquabot-jellyfish.jpg'},
#   {event_id: 1,name: 'Spy Science Kit', sales_amount: 450, source: 'Council', source_id: '627343', source_description: 'Prize Level 3', url: 'prize-spy-science-kit.jpg'},
#   {event_id: 1,name: 'Nite Ize Flashlight', sales_amount: 450, source: 'Council', source_id: '624334', source_description: 'Prize Level 3', url: 'prize-nite-ize-flashlight.jpg'},
#   {event_id: 1,name: 'Green Rubber Lock Back Knife', sales_amount: 450, source: 'Council', source_id: '615774', source_description: 'Prize Level 3', url: 'prize-green-rubber-knife.png'},
#   {event_id: 1,name: 'Voice Changer', sales_amount: 650, source: 'Council', source_id: '633898', source_description: 'Prize Level 4', url: 'prize-voice-changer.jpg'},
#   {event_id: 1,name: 'Binoculars 8 x 22', sales_amount: 650, source: 'Council', source_id: '611050', source_description: 'Prize Level 4', url: 'prize-binocular-8x22.png'},
#   {event_id: 1,name: 'Landsailer Kit', sales_amount: 650, source: 'Council', source_id: '621406', source_description: 'Prize Level 4',url: 'prize-landsailer-kit.jpg'},
#   {event_id: 1,name: 'Lego Onuna Unifier Kit', sales_amount: 650, source: 'Council', source_id: '634414', source_description: 'Prize Level 4',url: 'prize-lego-onuna-kit.jpg'},

#   {event_id: 1,name: 'Marshmallow Blaster', sales_amount: 850, source: 'Council', source_id: '634182', source_description: 'Prize Level 5', url: 'prize-marshmallow-blaster.jpg'},
#   {name: 'Smithsonian 30x Telescope', sales_amount: 850, source: 'Council', source_id: '621346', source_description: 'Prize Level 5', url: 'prize-smithsonian-30x-telescope.jpg'},
#   {name: '4" BSA Multi Tool', sales_amount: 850, source: 'Council', source_id: '615781', source_description: 'Prize Level 5', url: 'prize-4-bsa-multitool.jpg'},
#   {name: 'RC Helicopter', sales_amount: 850, source: 'Council', source_id: '618984', source_description: 'Prize Level 5', url: 'prize-rc-helicopter.png'},
  
#   {name: 'Lego Camaro Drag race kit', sales_amount: 1000, source: 'Council', source_id: '634407', source_description: 'Prize Level 6', url: 'prize-lego-camaro-drag-race-kit.png'},
#   {name: 'Boy Scout Tinker Swiss Army Knife', sales_amount: 1000, source: 'Council', source_id: '618438', source_description: 'Prize Level 6', url:'prize-boy-scout-tinker-knife.jpg'},
#   {name: 'Cub Scout Tinker Swiss Army Knife', sales_amount: 1000, source: 'Council', source_id: '619628', source_description: 'Prize Level 6', url:'prize-cub-scout-tinker-knife.jpg'},
#   {name: 'RC Rock Car Crawler', sales_amount: 1000, source: 'Council', source_id: '634168', source_description: 'Prize Level 6', url:'prize-rc-rock-car-crawler.jpg'},

#   {name: 'Ice Cream Ball', sales_amount: 1500, source: 'Council', source_id: '624097', source_description: 'Prize Level 7', url:'prize-ice-cream-ball.png'},
#   {name: 'Vibrobot Kit', sales_amount: 1500, source: 'Council', source_id: '621590', source_description: 'Prize Level 7', url:'prize-vibrobot-kit.jpg'},
#   {name: 'Osprey Daylight Pack', sales_amount: 1500, source: 'Council', source_id: '620925', source_description: 'Prize Level 7', url:'prize-osprey-daylight-pack.jpg'},
#   {name: 'Helicopter Copperhead', sales_amount: 1500, source: 'Council', source_id: '621461', source_description: 'Prize Level 7', url:'prize-helicopter-copperhead.jpg'},
#   {name: 'Coleman 4-person Dome Test', sales_amount: 2000, source: 'Council', source_id: '627762', source_description: 'Prize Level 8', url: 'prize-coleman-4-person-dome.jpg'},
#   {name: 'Midland 2-way Radio Set', sales_amount: 2000, source: 'Council', source_id: '625617', source_description: 'Prize Level 8', url:'prize-midland-radio.png'},
#   {name: 'ENO Camping Hammock', sales_amount: 2000, source: 'Council', source_id: '616406', source_description: 'Prize Level 8', url:'prize-eno-camping-hammock.png'},
#   {name: 'Camera Kodo Drone', sales_amount: 2000, source: 'Council', source_id: '621460', source_description: 'Prize Level 8', url:'prize-camera-kodo-drone.png'},

#   {name: 'ENO Lounging Hanger Chair', sales_amount: 2750, source: 'Council', source_id: '621437', source_description: 'Prize Level 9', url:'prize-eno-lounging-chair.jpg'},  
#   {name: 'JanSport 50L Pack Katahdin', sales_amount: 2750, source: 'Council', source_id: '622627', source_description: 'Prize Level 9', url:'prize-jansport-katahdin.jpg'},
#   {name: 'JetBoil Camping Stove', sales_amount: 2750, source: 'Council', source_id: '619462', source_description: 'Prize Level 9', url:'prize-jetboil-camping-stove.jpg'},
#   {name: "Lego Benny's Spaceship, Spaceship, SPACESHIP!", sales_amount: 2750, source: 'Council', source_id: '621594', source_description: 'Prize Level 9', url:'prize-lego-spaceship.jpg'},
#   {name: 'BB-8 Sphero Star Wars Droid', sales_amount: 3500, source: 'Council', source_id: '630265', source_description: 'Prize Level 10', url:'prize-bb8.png'},
#   {name: 'Boe-Bot Robot Kit', sales_amount: 3500, source: 'Council', source_id: '612753', source_description: 'Prize Level 10', url:'prize-boe-boe-robot-kit.png'},
#   {name: 'Apple Ipod Nano', sales_amount: 3500, source: 'Council', source_id: '634171', source_description: 'Prize Level 10', url:'prize-apple-ipod-nano.jpg'},
#   {name: 'Diamondback Helicopter', sales_amount: 3500, source: 'Council', source_id: '621355', source_description: 'Prize Level 10', url:''},

#   {name: 'Quadrone w/1st Person View', sales_amount: 4000, source: 'Council', source_id: '634401', source_description: 'Prize Level 11', url:'prize-quadrone.jpg'},
#   {name: 'Camping Package', sales_amount: 4000, source: 'Council', source_id: '634185', source_description: 'Prize Level 11', url:''},
#   {name: 'GoPro Camera', sales_amount: 4000, source: 'Council', source_id: '634186', source_description: 'Prize Level 11', url:''},
#   {name: '8" Tablet', sales_amount: 4000, source: 'Council', source_id: '634164', source_description: 'Prize Level 11', url:''},
#   {name: 'Playstation 4', sales_amount: 5500, source: 'Council', source_id: '634165', source_description: 'Prize Level 12', url: 'prize-playstation-4.png'},
#   {event_id: 1, name: 'Lego Star Wars Assault-on-Hoth', sales_amount: 5500, source: 'Council', source_id: '634189', source_description: 'Prize Level 12', url:'prize-lego-assault-on-hoth.jpg'},
#   {event_id: 1,name: 'VEX IQ Super Kit', sales_amount: 5500, source: 'Council', source_id: '622727', source_description: 'Prize Level 12', url:'prize-vex-iq-super-kit.jpg'},

#   {event_id: 1,name: '$600 Bonus Level', sales_amount: 600, source: 'Council', source_id: '988100313', description: 'Two Tickets to the Mariners Scout Day Experience', reduces_sales_credits: false, is_by_level: true},
#   {event_id: 1,name: '$1,500 Bonus Level', sales_amount: 1500, source: 'Council', source_id: '', description: 'Invitation to party (to be announced)', reduces_sales_credits: false},
#   {event_id: 1,name: 'Summer Camp $50 Credit', sales_amount: 300, source: 'Unit', source_description: '$50 credit applied towards summer camp', reduces_sales_credits: true, cost: 50},
#   {event_id: 1,name: 'Summer Camp $200 Credit', sales_amount: 700, source: 'Unit', source_description: '$200 credit applied towards summer camp', cost: 200}
#   ])

# Resource.create ([{event_id: 1, name: 'Prizes Brochure (BSA)', url: 'http://ibm.com'}])

# cash_payment_account = event.accounts.where(name: 'Site Sales cash').first

# SiteSalePaymentMethod.create ([{ site_sale_id: site_sale.id, account_id: cash_payment_account.id, amount: 790}])

# OnlineSale.create ([{scout_id: 9, event_id: event.id, amount: 50, customer_name: 'Olivia John', order_date: Date.today - 1.days, description: 'Popcorn'}, {scout_id: 10, event_id: event.id, amount: 50, customer_name: 'George Washington', order_date: Date.today - 1.days, description: 'Popcorn'}, {scout_id: 9, event_id: event.id, amount: 50, customer_name: 'John Denver', order_date: Date.today - 1.days, description: 'Popcorn'}, {scout_id: 11, event_id: event.id, amount: 50, customer_name: 'Michael Omalley', order_date: Date.today - 1.days, description: 'Popcorn'}])

# 
# TakeOrder.create([
#   {scout_id: 1, event_id: 2, customer_name: 'Mary Jones', customer_address: '123 Main Street', customer_email: 'maryjones@example.com'},
#   {scout_id: 1, event_id: 2, customer_name: 'Bob White', customer_address: '12 Acme Avenue', customer_email: 'bobwhite@example.com'},
#   {scout_id: 2, event_id: 2, customer_name: 'Bob White', customer_address: '12 Acme Avenue', customer_email: 'bobwhite@example.com'},
#   {scout_id: 2, event_id: 2, customer_name: 'Bob White', customer_address: '12 Acme Avenue', customer_email: 'bobwhite@example.com'},
#   {scout_id: 3, event_id: 2, customer_name: 'Bob White', customer_address: '12 Acme Avenue', customer_email: 'bobwhite@example.com'},
#   {scout_id: 4, event_id: 2, customer_name: 'Bob White', customer_address: '12 Acme Avenue', customer_email: 'bobwhite@example.com'}
#   ])

# TakeOrderLineItem.create([
#   {take_order_id: 1, product_id: Unit.find(2).events.first.products.first.id, quantity: 2},
#   {take_order_id: 1, product_id: Unit.find(2).events.first.products[1].id, quantity: 3},
#   {take_order_id: 2, product_id: Unit.find(2).events.first.products[3].id, quantity: 5},
#   {take_order_id: 3, product_id: Unit.find(2).events.first.products[2].id, quantity: 5},
#   {take_order_id: 3, product_id: Unit.find(2).events.first.products[3].id, quantity: 5},
#   {take_order_id: 4, product_id: Unit.find(2).events.first.products[4].id, quantity: 5},
#   {take_order_id: 4, product_id: Unit.find(2).events.first.products[1].id, quantity: 5},
#   {take_order_id: 5, product_id: Unit.find(2).events.first.products[0].id, quantity: 5},
#   {take_order_id: 5, product_id: Unit.find(2).events.first.products[3].id, quantity: 5}
# ])


# Stock.create ([
#   {unit_id: 1, product_id: 1, location: 'warehouse', description: 'Initial BSA order', quantity: 36},
#   {unit_id: 1, product_id: 2, location: 'warehouse', description: 'Initial BSA order', quantity: 24}, 
#   {unit_id: 1, product_id: 3, location: 'warehouse', description: 'Initial BSA order', quantity: 30},
#   {unit_id: 1, product_id: 4, location: 'warehouse', description: 'Initial BSA order', quantity: 108},
#   {unit_id: 1, product_id: 5, location: 'warehouse', description: 'Initial BSA order', quantity: 24},
#   {unit_id: 1, product_id: 6, location: 'warehouse', description: 'Initial BSA order', quantity: 108},
#   {unit_id: 1, product_id: 7, location: 'warehouse', description: 'Initial BSA order', quantity: 288},
#   {unit_id: 1, product_id: 8, location: 'warehouse', description: 'Initial BSA order', quantity: 108},
#   {unit_id: 1, product_id: 9, location: 'warehouse', description: 'Initial BSA order', quantity: 12},
#   {unit_id: 1, product_id: 10, location: 'warehouse', description: 'Initial BSA order', quantity: 12},
#   {unit_id: 1, product_id: 11, location: 'warehouse', description: 'Initial BSA order', quantity: 12},
#   {unit_id: 1, product_id: 12, location: 'warehouse', description: 'Initial BSA order', quantity: 6},
#   {unit_id: 1, product_id: 13, location: 'warehouse', description: 'Initial BSA order', quantity: 4}, 
#   {unit_id: 1, product_id: 14, location: 'warehouse', description: 'Initial BSA order', quantity: 0}, 
#   {unit_id: 2, product_id: 1, location: 'warehouse', description: 'Initial BSA order', quantity: 36},
#   {unit_id: 2, product_id: 2, location: 'warehouse', description: 'Initial BSA order', quantity: 24}, 
#   {unit_id: 2, product_id: 3, location: 'warehouse', description: 'Initial BSA order', quantity: 30},
#   {unit_id: 2, product_id: 4, location: 'warehouse', description: 'Initial BSA order', quantity: 108},
#   {unit_id: 2, product_id: 5, location: 'warehouse', description: 'Initial BSA order', quantity: 24},
#   {unit_id: 2, product_id: 6, location: 'warehouse', description: 'Initial BSA order', quantity: 108},
#   {unit_id: 2, product_id: 7, location: 'warehouse', description: 'Initial BSA order', quantity: 288},
#   {unit_id: 2, product_id: 8, location: 'warehouse', description: 'Initial BSA order', quantity: 108},
#   {unit_id: 2, product_id: 9, location: 'warehouse', description: 'Initial BSA order', quantity: 12},
#   {unit_id: 2, product_id: 10, location: 'warehouse', description: 'Initial BSA order', quantity: 12},
#   {unit_id: 2, product_id: 11, location: 'warehouse', description: 'Initial BSA order', quantity: 12},
#   {unit_id: 2, product_id: 12, location: 'warehouse', description: 'Initial BSA order', quantity: 6},
#   {unit_id: 2, product_id: 13, location: 'warehouse', description: 'Initial BSA order', quantity: 4}, 
#   {unit_id: 2, product_id: 14, location: 'warehouse', description: 'Initial BSA order', quantity: 0} 
#   ])

