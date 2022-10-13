window.onscroll = function () { stickyhead() };

var header = document.getElementById("myHeader");
var sticky = header.offsetTop;

function stickyhead() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}

var slider = document.getElementById("myRange1");
var output1 = document.getElementById("demo1");
output1.innerHTML = slider.value;

slider.oninput = function () {
  output1.innerHTML = this.value;

}

var slider = document.getElementById("myRange2");
var output2 = document.getElementById("demo2");
output2.innerHTML = slider.value;

slider.oninput = function () {
  output2.innerHTML = this.value;

}

var slider = document.getElementById("myRange3");
var output3 = document.getElementById("demo3");
output3.innerHTML = slider.value;

slider.oninput = function () {
  output3.innerHTML = this.value;

}
let dollarValue = document.getElementById("dollar_price").innerHTML
let euroValue = document.getElementById("euro_price").innerHTML
let gbpValue = document.getElementById("gbp_price").innerHTML
let aznValueForUSD = document.getElementById("azn_price_for_usd").innerHTML
let aznValueForEUR = document.getElementById("azn_price_for_eur").innerHTML
let aznValueForGBP = document.getElementById("azn_price_for_gbp").innerHTML
$('#selling').on("input change", function () {
  var val = $("#selling_select").val()
  if (val = "AZN") {
    console.log("manat")
    if ($("#buying_select").val() == "USD") {
      $('#buying').text(parseFloat($("#selling").val() / parseFloat(dollarValue).toFixed(4)).toFixed(4))
    } else if ($("#buying_select").val() == "EUR") {
      $('#buying').text(parseFloat($("#selling").val() / parseFloat(euroValue).toFixed(4)).toFixed(4))
    }
    else if ($("#buying_select").val() == "GBP") {
      $('#buying').text(parseFloat($("#selling").val() / parseFloat(gbpValue).toFixed(4)).toFixed(4))
    }
    $("#buying_select").change(function () {
      if ($("#buying_select").val() == "USD") {
        $('#buying').text(parseFloat($("#selling").val() / parseFloat(dollarValue).toFixed(4)).toFixed(2))
      } else if ($("#buying_select").val() == "EUR") {
        $('#buying').text(parseFloat($("#selling").val() / parseFloat(euroValue).toFixed(4)).toFixed(2))
      } else if ($("#buying_select").val() == "GBP") {
        $('#buying').text(parseFloat($("#selling").val() / parseFloat(gbpValue).toFixed(4)).toFixed(2))
      }

    })
  }
  else if (val = "EUR") {
    console.log("EUR")
    if ($("#buying_select").val() == "AZN") {
      $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForEUR).toFixed(4)).toFixed(2))
    } else if ($("#buying_select").val() == "USD") {
      $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForEUR).toFixed(4) / parseFloat(usdValue)).toFixed(2))
    }
    else if ($("#buying_select").val() == "GBP") {
      $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForEUR).toFixed(4) / parseFloat(euroValue)).toFixed(2))
    }
    $("#buying_select").change(function () {
      if ($("#buying_select").val() == "AZN") {
        $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForEUR).toFixed(4)).toFixed(2))
      } else if ($("#buying_select").val() == "USD") {
        $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForEUR).toFixed(4) / parseFloat(usdValue)).toFixed(2))
      }
      else if ($("#buying_select").val() == "GBP") {
        $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForEUR).toFixed(4) / parseFloat(gbpValue)).toFixed(2))
      }

    })
  }
  else if (val = "USD") {
    console.log("USD")
    if ($("#buying_select").val() == "AZN") {
      $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForUSD).toFixed(4)).toFixed(2))
    } else if ($("#buying_select").val() == "EUR") {
      $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForUSD).toFixed(4) / parseFloat(euroValue)).toFixed(2))
    }
    else if ($("#buying_select").val() == "GBP") {
      $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForUSD).toFixed(4) / parseFloat(gbpValue)).toFixed(2))
    }
    $("#buying_select").change(function () {
      if ($("#buying_select").val() == "AZN") {
        $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForUSD).toFixed(4)).toFixed(2))
      } else if ($("#buying_select").val() == "EUR") {
        $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForUSD).toFixed(4) / parseFloat(euroValue)).toFixed(2))
      }
      else if ($("#buying_select").val() == "GBP") {
        $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForUSD).toFixed(4) / parseFloat(gbpValue)).toFixed(2))
      }

    })
  }
  else if (val = "GBP") {
    console.log("GBP")
    if ($("#buying_select").val() == "AZN") {
      $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForGBP).toFixed(4)).toFixed(2))
    } else if ($("#buying_select").val() == "EUR") {
      $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForGBP).toFixed(4) / parseFloat(euroValue)).toFixed(2))
    }
    else if ($("#buying_select").val() == "USD") {
      $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForGBP).toFixed(4) / parseFloat(usdValue)).toFixed(2))
    }
    $("#buying_select").change(function () {
      if ($("#buying_select").val() == "AZN") {
        $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForGBP).toFixed(4)).toFixed(2))
      } else if ($("#buying_select").val() == "EUR") {
        $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForGBP).toFixed(4) / parseFloat(euroValue)).toFixed(2))
      }
      else if ($("#buying_select").val() == "USD") {
        $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForGBP).toFixed(4) / parseFloat(usdValue)).toFixed(2))
      }

    })
  }
});
$("#selling_select").change(function () {
  var val = $(this).val();
  if (val == "AZN") {
    $("#buying_select").html("<option value='USD'>$</option><option value='GBP'>£</option><option value='EUR'>€</option>");
    if ($("#buying_select").val() == "USD") {
      $('#buying').text(parseFloat($("#selling").val() / parseFloat(dollarValue).toFixed(4)).toFixed(2))
    } else if ($("#buying_select").val() == "EUR") {
      $('#buying').text(parseFloat($("#selling").val() / parseFloat(euroValue).toFixed(4)).toFixed(2))
    } else if ($("#buying_select").val() == "GBP") {
      $('#buying').text(parseFloat($("#selling").val() / parseFloat(gbpValue).val().toFixed(4)).toFixed(2))
    }
    $("#buying_select").change(function () {
      if ($("#buying_select").val() == "USD") {
        $('#buying').text(parseFloat($("#selling").val() / parseFloat(dollarValue).toFixed(4)).toFixed(2))
      } else if ($("#buying_select").val() == "EUR") {
        $('#buying').text(parseFloat($("#selling").val() / parseFloat(euroValue).toFixed(4)).toFixed(2))
      } else if ($("#buying_select").val() == "GBP") {
        $('#buying').text(parseFloat($("#selling").val() / parseFloat(gbpValue).val().toFixed(4)).toFixed(2))
      }
    })
  }
  if (val == "USD") {
    $("#buying_select").html("<option value='AZN'>₼</option><option value='GBP'>£</option><option value='EUR'>€</option>");
    if ($("#buying_select").val() == "AZN") {
      $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForUSD).toFixed(4)).toFixed(2))
    }
    $("#buying_select").change(function () {
      if ($("#buying_select").val() == "EUR") {
        $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForUSD).toFixed(4) / parseFloat(euroValue)).toFixed(2))
      }
      else if ($("#buying_select").val() == "GBP") {
        $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForUSD).toFixed(4) / parseFloat(gbpValue).toFixed(4)).toFixed(2))
      }
    })
  }
  else if (val == "EUR") {
    $("#buying_select").html("<option value='AZN'>₼</option><option value='GBP'>£</option><option value='USD'>$</option>");
    if ($("#buying_select").val() == "AZN") {
      $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForEUR).toFixed(4)).toFixed(2))
    }
    $("#buying_select").change(function () {
      if ($("#buying_select").val() == "USD") {
        $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForEUR).toFixed(4) / parseFloat(usdValue)).toFixed(2))
      }
      else if ($("#buying_select").val() == "GBP") {
        $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForEUR).toFixed(4) / parseFloat(gbpValue).toFixed(4)).toFixed(2))
      }
    })
  }
  else if (val == "GBP") {
    $("#buying_select").html("<option value='AZN'>₼</option><option value='EUR'>€</option><option value='USD'>$</option>");
    if ($("#buying_select").val() == "AZN") {
      $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForGBP).toFixed(4)).toFixed(2))
    }
    $("#buying_select").change(function () {
      if ($("#buying_select").val() == "EUR") {
        $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForGBP).toFixed(4) / parseFloat(euroValue)).toFixed(2))
      }
      else if ($("#buying_select").val() == "GBP") {
        $('#buying').text(parseFloat($("#selling").val() * parseFloat(aznValueForGBP).toFixed(4) / parseFloat(gbpValue).toFixed(4)).toFixed(2))
      }
    })
  }
});



