
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yazlab2.1.1.aspx.cs" Inherits="yazlab2._1._1.yazlab2__1__1" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Remove a Polyline</title>


    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
       #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
         <p id="demo"></p>
         <form id="form1" runat="server">

 <script>
     function flightPath() {

              var pathfile = " C:\\latlng.txt";
              var latlng = new Array[];
              var str;
              var txtFile = new File(filepath);
              txtFile.open("r");
              while (!txtFile.eof) {
                  // read each line of text
                  str += txtFile.readln() + "\n";
              }
              //  document.getElementById('demo').innerHTML = "ffgwgkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkre";

              document.getElementById("demo").innerHTML = "Hello Dolly!";

              var ayraclar = new char['\n', ','];
              latlng = str.Split(ayraclar);
              for (var i = 0; latlng.lenght; i++) {
                  document.getElementById("ListBox1").innerHTML = latlng[i];
              }
     }

 </script>    
            
 <script>

     function initMap() {

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 3,
          center: {lat: 0, lng: -180},
          mapTypeId: 'terrain'
        });

        var flightPlanCoordinates = [
          {lat: 37.772, lng: -122.214},
          {lat: 21.291, lng: -157.821},
          {lat: -18.142, lng: 178.431},
          {lat: -27.467, lng: 153.027}
        ];
        var flightPath = new google.maps.Polyline({
          path: flightPlanCoordinates,
          geodesic: true,
          strokeColor: '#FF0000',
          strokeOpacity: 1.0,
          strokeWeight: 2
        });

        flightPath.setMap(map);
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC0gtRStN-GpHuLsNQ3E1NdQkcQONxWKeM&callback=initMap">
    </script>
   
              <asp:ListBox ID="ListBox1" runat="server" Height="205px" Width="235px"></asp:ListBox>
              <asp:ListBox ID="ListBox2" runat="server" Height="199px" style="margin-top: 0px" Width="230px"></asp:ListBox>
           
              <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
              <asp:Button ID="Button2" runat="server" Text="Button" OnCliick="Button2_Click"/>
          </form>

    <div id="map"style="width:600px;height:50%;"></div>

              </body>
</html>