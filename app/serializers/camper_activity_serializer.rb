class CamperActivitySerializer < CamperSerializer
  # connects our camper data to our activity data. Keep in mind CamperActivitySerilaizer
  # is coming directly from CamperSerializer
  has_many :activities
end
