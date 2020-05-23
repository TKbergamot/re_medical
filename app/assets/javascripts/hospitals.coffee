$ ->
  $("#post_code").jpostal({
    postcode : [ "#post_code" ],
    address  : {
                  "#hospital_prefecture" : "%3",
                  "#address"            : "%4%5%6%7",
                }
  })
