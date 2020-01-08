module PlacesHelper
  def check_location lat, lon, minlat, minlon
    if (minlat-2) <= lat && lat <= minlat && (minlon-2)<= lon && lon <= (minlon+2)
      return 1
    else
      return 0
    end
  end
end
