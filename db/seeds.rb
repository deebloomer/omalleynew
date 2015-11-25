# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
=begin
puts "PROJECTS TYPES DELETED" if Project_type.delete_all

puts "PROJECTS DELETED" if Project.delete_all

begin # Project.create..
  Project.create!({project_id: 1, name: "St. Mel´s Cathedral, Longford", description: "Re-plastering of the entire interior of St. Mel's C...", design_team: '', project_type_id: 2, running_order: 100 })
  Project.create!({project_id: 3, name: 'Belvedere House, Dublin', description: 'Restoration of the Michael Stapleton ceilings and m...', design_team: '', project_type_id: 1, running_order: nil })
  Project.create!({project_id: 6, name: 'Fota House Orangery', description: 'Repair to lime rendering of the beautiful orangery ...', design_team: '', project_type_id: 2, running_order: nil })
  Project.create!({project_id: 7, name: 'Ligouri House. UCD, Blackrock', description: 'Stabilising and conserving the original decorative ...', design_team: '', project_type_id: 1, running_order: nil })
  Project.create!({project_id: 11, name: 'Castletown House Celbridge', description: '', design_team: '', project_type_id: 1, running_order: 400 })
  Project.create!({project_id: 12, name: 'Newman House ', description: 'UCD Dublin', design_team: '', project_type_id: 1, running_order: 500 })
  Project.create!({project_id: 13, name: 'Catholic University School', description: 'Leeson Street Dublin ', design_team: '', project_type_id: 2, running_order: 600 })
  Project.create!({project_id: 14, name: 'Brewery Hostel', description: 'Thomas Street Dublin', design_team: '', project_type_id: 1, running_order: 700 })
  Project.create!({project_id: 31, name: 'Chapel at Dunnes Stores Cornelscourt', description: '', design_team: nil, project_type_id: 7, running_order: nil })
  Project.create!({project_id: 44, name: 'Emo Court', description: 'External Lime plastering to this 18th Century neo-c...', design_team: '', project_type_id: 3, running_order: 200 })
end
=end

puts "PHOTOS DELETED" if Photo.delete_all
begin # Photos.create...
  Photo.create!({project_id:1, caption: 'Barrel Vaulted Ceiling Restored', image_url:'long_ruin.jpg', running_order: 100 })
  Photo.create!({project_id:1, caption: 'Barrel Vaulted Ceiling Restored', image_url:'long_samp_db.jpg', running_order: 100 })
  Photo.create!({project_id:1, caption: 'Barrel Vaulted Ceiling Restored', image_url:'long_geor.JPG', running_order: 100 })
  Photo.create!({project_id:1, caption: 'Barrel Vaulted Ceiling Restored', image_url:'long_apse_db.JPG', running_order: 100 })

  Photo.create!({project_id:1, caption: 'Barrel Vaulted Ceiling Restored', image_url:'long_prog_1.JPG', running_order: 100 })
  Photo.create!({project_id:1, caption: 'Barrel Vaulted Ceiling Restored', image_url:'long_prog_2.JPG', running_order: 100 })
  Photo.create!({project_id:1, caption: 'st mel 3', image_url:'BLF 08_DETAILS OF THE CORNICE.JPG', running_order: 400 })
  Photo.create!({project_id:1, caption: 'st mel 4', image_url:'BLF 14_TINA SMILES VIEWING THE FINISHED CEILING.JPG', running_order: 500 })
  Photo.create!({project_id:1, caption: 'st mel 5', image_url:'BLF 15_CENTRE PIECES IN PERSPECTIVE.JPG', running_order: 600 })
  Photo.create!({project_id:1, caption: 'st mel 6', image_url:'165BLF 16_CENTRE PIECE.JPG', running_order: 700 })
  Photo.create!({project_id:1, caption: 'st mel 7', image_url:'165ceiling 04 02 14_9999_57.JPG', running_order: 800 })
  # Photo.create!({project_id:1, caption: 'st mel 8', image_url:'long_det_3.JPG', running_order: 900 })
  Photo.create!({project_id:1, caption: 'st mel 8', image_url:'long_ceil_db.JPG', running_order: 900 })
  # Photo.create!({project_id:1, caption: 'st mel 8', image_url:'long_laths.JPG', running_order: 900 })
  Photo.create!({project_id:1, caption: 'st mel 8', image_url:'long_side.JPG', running_order: 900 })
  # Longford_ceiling_L.JPG



  Photo.create!({project_id:3, caption: 'Michael Stapleton Ceiling Restored', image_url:'belv_db_3.jpg', running_order: 100 })
  Photo.create!({project_id:3, caption: 'Ceiling at Belvedere House', image_url:'BH-Blessing&ReOpening005_hrz.jpg', running_order: 200 })
  Photo.create!({project_id:3, caption: 'belv', image_url:'BH-Blessing&ReOpening009_hrz.jpg', running_order: 300 })
  Photo.create!({project_id:3, caption: 'belv repeat', image_url:'belv_db3.jpg', running_order: 400 })
  Photo.create!({project_id:3, caption: 'Ceiling at Belvedere House', image_url:'Belvedere_ceiling_L.jpg', running_order: 500 })
  Photo.create!({project_id:3, caption: 'belv', image_url:'belv_db4.JPG', running_order: 600 })
  Photo.create!({project_id:3, caption: 'belv repeat', image_url:'belv_db_7.jpg', running_order: 700 })
  Photo.create!({project_id:3, caption: 'belv repeat', image_url:'belv_db_8.jpg', running_order: 800 })
  Photo.create!({project_id:3, caption: 'belv repeat', image_url:'belv_db_9.jpg', running_order: 900 })

  Photo.create!({project_id:6, caption: 'External Lime Render', image_url:'Fota_House_La.jpg', running_order: 100 })
  Photo.create!({project_id:6, caption: 'repeat 1', image_url:'Fota-House3.jpg', running_order: 200 })
  Photo.create!({project_id:6, caption: 'repeat 2', image_url:'fota_front.jpg', running_order: 300 })
  Photo.create!({project_id:6, caption: 'repeat 3', image_url:'Fota_House_La.jpg', running_order: 400 })
  Photo.create!({project_id:7, caption: 'Repair to decorative plasterwork', image_url:'Liguri-House-03.jpg', running_order: 100 })
  Photo.create!({project_id:7, caption: 'Ligouri', image_url:'Liguri-House-01.jpg', running_order: 200 })
  Photo.create!({project_id:7, caption: 'repeat 1', image_url:'Liguri-House-05.jpg', running_order: 300 })
  Photo.create!({project_id:7, caption: 'repeat 2', image_url:'Liguri-House-06.jpg', running_order: 400 })
  Photo.create!({project_id:44, caption: 'Emo Court', image_url:'Emo-Court-01.jpg', running_order: 100 })
  Photo.create!({project_id:44, caption: 'repeat 1', image_url:'Emo-Court-02.jpg', running_order: 200 })
  Photo.create!({project_id:44, caption: 'repeat 2', image_url:'Emo-Court-03.jpg', running_order: 300 })
  Photo.create!({project_id:44, caption: 'repeat 3', image_url:'Emo-Court-04.jpg', running_order: 400 })
  Photo.create!({project_id:50, caption: 'Converted Cow House', image_url:'cow_house11.jpg', running_order: 100 })
  Photo.create!({project_id:50, caption: 'repeat 1', image_url:'cow_house2.jpg', running_order: 200 })
  Photo.create!({project_id:50, caption: 'repeat 2', image_url:'cow_house3.jpg', running_order: 300 })
  Photo.create!({project_id:31, caption: 'Cornelscourt Chapel', image_url:'Chapel-Cornelscourt3.jpg', running_order: 100 })
  Photo.create!({project_id:31, caption: 'repeat 1', image_url:'Chapel-Cornelscourt3.jpg', running_order: 200 })
  Photo.create!({project_id:31, caption: 'repeat 2', image_url:'Chapel-Cornelscourt3.jpg', running_order: 300 })
  Photo.create!({project_id:31, caption: 'repeat 3', image_url:'Chapel-Cornelscourt3.jpg', running_order: 400 })
  Photo.create!({project_id:11, caption: 'Castletown House', image_url:'Castletown-House-04.jpg', running_order: 100 })
  Photo.create!({project_id:11, caption: 'repeat 1', image_url:'Castletown-House-02.jpg', running_order: 200 })
  Photo.create!({project_id:11, caption: 'repeat 2', image_url:'Castletown-House.jpg', running_order: 300 })
  Photo.create!({project_id:11, caption: 'repeat 3', image_url:'Castletown-House-03.jpg', running_order: 400 })
  Photo.create!({project_id:52, caption: 'Hueston Station', image_url:'Heuston-Station4.jpg', running_order: 100 })
  Photo.create!({project_id:52, caption: 'repeat 1', image_url:'Heuston-Station3.jpg', running_order: 200 })
  Photo.create!({project_id:52, caption: 'repeat 2', image_url:'Heuston-Station2.jpg', running_order: 300 })
  Photo.create!({project_id:12, caption: 'Newman hse', image_url:'Newman-House-01_hrz.jpg', running_order: 100 })
  Photo.create!({project_id:12, caption: 'repeat 1', image_url:'Newman-House-01b.jpg', running_order: 200 })
  Photo.create!({project_id:12, caption: 'repeat 2', image_url:'Newman-House-04.jpg', running_order: 300 })
  Photo.create!({project_id:12, caption: 'repeat 3', image_url:'Newman-House-03.jpg', running_order: 400 })
  Photo.create!({project_id:13, caption: 'Before', image_url:'CUS Leeson-St01.jpg', running_order: 100 })
  Photo.create!({project_id:13, caption: 'repeat 1', image_url:'CUS Leeson-St02.jpg', running_order: 200 })
  Photo.create!({project_id:13, caption: 'repeat 2', image_url:'CUS Leeson-St04.jpg', running_order: 300 })
  Photo.create!({project_id:13, caption: 'repeat 3', image_url:'CUS-Leeson-St05.jpg', running_order: 400 })
  Photo.create!({project_id:14, caption: 'Brewery Hostel', image_url:'Brewery-Hostel-01.jpg', running_order: 100 })
  Photo.create!({project_id:14, caption: 'repeat 1', image_url:'Brewery-Hostel-03ab.jpg', running_order: 200 })
  Photo.create!({project_id:14, caption: 'repeat 2', image_url:'Brewery-Hostel-04.jpg', running_order: 300 })
  Photo.create!({project_id:14, caption: 'repeat 3', image_url:'Brewery-Hostel-05.jpg', running_order: 400 })
  Photo.create!({project_id:51, caption: 'Ardmore House', image_url:'Ardmore-House01.jpg', running_order: 100 })
  Photo.create!({project_id:51, caption: 'repeat 1', image_url:'Ardmore-House02.jpg', running_order: 200 })
  Photo.create!({project_id:51, caption: 'repeat 2', image_url:'Ardmore-House03.jpg', running_order: 300 })
  Photo.create!({project_id:51, caption: 'repeat 3', image_url:'Ardmore-House04.jpg', running_order: 400 })

end