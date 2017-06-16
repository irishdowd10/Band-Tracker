
using System.Collections.Generic;
using System.Data.SqlClient;
using System;

namespace VenueTracker
{
  public class Venue
  {
    private int _id;
    private string _name;


  public Venue(string Name, int Id = 0)
  {
    _id = Id;
    _name = Name;
  }

  public override bool Equals(System.Object otherVenue)
  {
    if(!(otherVenue is Venue))
    {
      return false;
    }
    else
    {
      Venue newVenue = (Venue) otherVenue;
      bool idEquality = (this.GetId() == newVenue.GetId());
      bool nameEquality = (this.GetName() == newVenue.GetName());
      return (idEquality && nameEquality);
    }
  }

  //GETTERS
  public int GetId()
  {
    return _id;
  }

  public string GetName()
  {
    return _name;
  }

  //SETTERS
  public void SetName(string Name)
  {
    _name = Name;
  }


//CLASS METHODS

//GetAll
  public static List<Venue> GetAll()
  {
    List<Venue> allVenues = new List<Venue>{};

    SqlConnection conn = DB.Connection();
    conn.Open();

    SqlCommand cmd = new SqlCommand("SELECT * FROM venues", conn);
    SqlDataReader rdr = cmd.ExecuteReader();

    while(rdr.Read())
    {
      int venuedId = rdr.GetInt32(0);
      string venueName = rdr.GetString(1);

      Venue newVenue = new Venue(venueName, venueId);
      allVenues.Add(newVenue);
    }

    if (rdr != null)
        {
          rdr.Close();
        }
        if (conn != null)
        {
          conn.Close();
        }
        return allVenues;
    }


//DeleteAll
  public static void DeleteAll()
  {
    SqlConnection conn = DB.Connection();
    conn.Open();
    SqlCommand cmd = new SqlCommand("Delete FROM venues;", conn);
    cmd.ExecuteNonQuery();
    conn.Close();
  }



  }
}
