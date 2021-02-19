Teebox.destroy_all
Golfcourse.destroy_all

#courses

fossil = Golfcourse.create(
    name: "Fossil Trace Golf Club",
    address: "3050 Illinois St.",
    city: "Golden",
    state: "CO",
    zip: "80401",
    phone: "303-277-8750",
    latitude: 39.737427,
    longitude: -105.211667,
    website: "https://fossiltrace.com/",
    teetimes: "https://secure.west.prophetservices.com/FossilTraceV3/(S(02os0hyv5wclmjocqxcs1d5s))/Home/WidgetView",
    holes: 18,
    par: 72
)

commonground = Golfcourse.create(
    name: "CommonGround Golf Course",
    address: "10300 E. Golfers Way",
    city: "Aurora",
    state: "CO",
    zip: "80010",
    phone: "303-340-1520",
    latitude: 39.717005,
    longitude: -104.868135,
    website: "https://www.commongroundgc.com/",
    teetimes: "https://foreupsoftware.com/index.php/booking/18949/673#/teetimes",
    holes: 18,
    par: 71
)

overland = Golfcourse.create(
    name: "Overland Park Golf Course",
    address: "1801 S Huron St",
    city: "Denver",
    state: "CO",
    zip: "80223",
    phone: "720-865-0430",
    latitude: 39.683047,
    longitude: -104.997498,
    website: "https://www.cityofdenvergolf.com/overland_park/",
    teetimes: "https://denver.ezlinksgolf.com/index.html#/search",
    holes: 18,
    par: 72
)

williscase = Golfcourse.create(
    name: "Willis Case Golf Course",
    address: "4999 Vrain St.",
    city: "Denver",
    state: "CO",
    zip: "80212",
    phone: "720-865-0700",
    latitude: 39.785985,
    longitude: -105.046471,
    website: "https://www.cityofdenvergolf.com/willis_case/",
    teetimes: "https://denver.ezlinksgolf.com/index.html#/search",
    holes: 18,
    par: 70
)

# Tee Boxes

Teebox.create(
    golfcourse: fossil,
    color: "Black",
    distance: 6831,
    slope: 141,
    rating: 72.0
)

Teebox.create(
    golfcourse: fossil,
    color: "Blue",
    distance: 6241,
    slope: 136,
    rating: 70.9
)

Teebox.create(
    golfcourse: fossil,
    color: "White",
    distance: 5559,
    slope: 114,
    rating: 66.2
)

Teebox.create(
    golfcourse: fossil,
    color: "Gold",
    distance: 4681,
    slope: 115,
    rating: 67.0
)

Teebox.create(
    golfcourse: commonground,
    color: "Black",
    distance: 7229,
    slope: 131,
    rating: 73.2
)

Teebox.create(
    golfcourse: commonground,
    color: "Gold",
    distance: 6721,
    slope: 128,
    rating: 70.6
)

Teebox.create(
    golfcourse: commonground,
    color: "White",
    distance: 6365,
    slope: 122,
    rating: 68.9
)

Teebox.create(
    golfcourse: commonground,
    color: "Red",
    distance: 5543,
    slope: 111,
    rating: 65.1
)

Teebox.create(
    golfcourse: overland,
    color: "Bronze",
    distance: 6727,
    slope: 119,
    rating: 69.6
)

Teebox.create(
    golfcourse: overland,
    color: "Gold",
    distance: 6117,
    slope: 113,
    rating: 67.4
)

Teebox.create(
    golfcourse: overland,
    color: "Black",
    distance: 5529,
    slope: 104,
    rating: 64.8
)

Teebox.create(
    golfcourse: overland,
    color: "Silver",
    distance: 4969,
    slope: 100,
    rating: 62.3
)

Teebox.create(
    golfcourse: williscase,
    color: "Bronze",
    distance: 6293,
    slope: 117,
    rating: 69.1
)

Teebox.create(
    golfcourse: williscase,
    color: "Gold",
    distance: 6018,
    slope: 116,
    rating: 67.6
)

Teebox.create(
    golfcourse: williscase,
    color: "Black",
    distance: 5372,
    slope: 112,
    rating: 64.5
)

Teebox.create(
    golfcourse: williscase,
    color: "Silver",
    distance: 5043,
    slope: 106,
    rating: 63.4
)




