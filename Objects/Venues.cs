using System.Collections.Generic;
using System.Data.SqlClient;
using System;

namespace BandTracker
{
  public class Venue
  {
    private int _id;
    private string _name;

  public Venue(string Name, int Id = 0)
  {
    _name = Name;
    _id = Id;
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
      int venueId = rdr.GetInt32(0);
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


    // public void Save()
    // {
    //   SqlConnection conn = DB.Connection();
    //   conn.Open();
    //
    //   SqlCommand cmd = new SqlCommand("INSERT INTO venues (name) OUTPUT INSERTED.id VALUES (@VenueName);", conn);
    //
    //   SqlParameter nameParameter = new SqlParameter();
    //   nameParameter.ParameterName = "@VenueName";
    //   nameParameter.Value = this.GetName();
    //
    //   cmd.Parameters.Add(nameParameter);
    //
    //   SqlDataReader rdr = cmd.ExecuteReader();
    //
    //   while(rdr.Read())
    //   {
    //
    //     this._id = rdr.GetInt32(0);
    //   }
    //   if(rdr != null)
    //   {
    //     rdr.Close();
    //   }
    //   if(conn != null)
    //   {
    //     conn.Close();
    //   }
    // }

// //Find
//     public static Venue Find(int id)
//     {
//       SqlConnection conn = DB.Connection();
//       conn.Open();
//
//       SqlCommand cmd = new SqlCommand("SELECT * FROM venues WHERE id = @VenueId;", conn);
//       SqlParameter VenueIdParameter = new SqlParameter();
//       VenueIdParameter.ParameterName = "@VenueId";
//       VenueIdParameter.Value = id.ToString();
//       cmd.Parameters.Add(VenueIdParameter);
//       SqlDataReader rdr = cmd.ExecuteReader();
//
//       int foundVenueId = 0;
//       string foundVenueName = null;
//       string foundVenueNumber = null;
//
//       while(rdr.Read())
//       {
//         foundVenueId = rdr.GetInt32(0);
//         foundVenueName = rdr.GetString(1);
//       }
//       Venue foundVenue = new Venue(foundVenueName,foundVenueId);
//
//       if (rdr != null)
//       {
//         rdr.Close();
//       }
//       if (conn != null)
//       {
//         conn.Close();
//       }
//       return foundVenue;
//       }

// // AddStudent
//     public void AddStudent(Student newStudent)
//     {
//       SqlConnection conn = DB.Connection();
//       conn.Open();
//
//       SqlCommand cmd = new SqlCommand("INSERT INTO courses_students (course_id, student_id) VALUES (@VenueId, @StudentId);", conn);
//
//       SqlParameter VenueIdParameter = new SqlParameter();
//       VenueIdParameter.ParameterName = "@VenueId";
//       VenueIdParameter.Value = this.GetId();
//       cmd.Parameters.Add(VenueIdParameter);
//
//       SqlParameter StudentIdParameter = new SqlParameter();
//       StudentIdParameter.ParameterName = "@StudentId";
//       StudentIdParameter.Value = newStudent.GetId();
//       cmd.Parameters.Add(StudentIdParameter);
//
//       cmd.ExecuteNonQuery();
//
//       if(conn != null)
//       {
//         conn.Close();
//       }
//     }
//
//     public List<Student> GetStudents()
//     {
//       SqlConnection conn = DB.Connection();
//       conn.Open();
//
//       SqlCommand cmd = new SqlCommand("SELECT students.* FROM courses JOIN courses_students ON (courses.id = courses_students.course_id) JOIN students ON (courses_students.student_id = students.id) WHERE courses.id = @VenueId;", conn);
//
//       SqlParameter VenueIdParameter = new SqlParameter();
//       VenueIdParameter.ParameterName = "@VenueId";
//       VenueIdParameter.Value = this.GetId();
//
//       cmd.Parameters.Add(VenueIdParameter);
//
//       SqlDataReader rdr = cmd.ExecuteReader();
//
//       List<Student> students = new List<Student>{};
//
//       while(rdr.Read())
//       {
//         int studentId = rdr.GetInt32(0);
//         string studentName = rdr.GetString(1);
//         DateTime studentEnrollment = rdr.GetDateTime(2);
//
//         Student newStudent = new Student(studentName, studentEnrollment, studentId);
//         students.Add(newStudent);
//       }
//
//       if(rdr != null)
//       {
//         rdr.Close();
//       }
//       if(conn != null)
//       {
//         conn.Close();
//       }
//       return students;
//     }
//
//   //Delete Venue
//       public void Delete()
//       {
//         SqlConnection conn = DB.Connection();
//         conn.Open();
//
//         SqlCommand cmd = new SqlCommand("DELETE FROM courses WHERE id = @VenueId; DELETE FROM courses_students WHERE course_id = @VenueId;", conn);
//         SqlParameter courseIdParameter = new SqlParameter();
//         courseIdParameter.ParameterName = "@VenueId";
//         courseIdParameter.Value = this.GetId();
//
//         cmd.Parameters.Add(courseIdParameter);
//         cmd.ExecuteNonQuery();
//
//         if (conn != null)
//         {
//           conn.Close();
//         }
//       }
//
//   //Updates a Venue
//       public void Edit(string newName, string NewVenueNumber)
//        {
//          SqlConnection conn = DB.Connection();
//          conn.Open();
//
//          SqlCommand cmd = new SqlCommand("UPDATE courses SET name = @NewName, course_number = @NewVenueNumber OUTPUT INSERTED.name, INSERTED.course_number WHERE id = @VenueId;", conn);
//
//          SqlParameter newNameParameter = new SqlParameter();
//          newNameParameter.ParameterName = "@NewName";
//          newNameParameter.Value = newName;
//          cmd.Parameters.Add(newNameParameter);
//
//          SqlParameter NewVenueNumberParameter = new SqlParameter();
//          NewVenueNumberParameter.ParameterName = "@NewVenueNumber";
//          NewVenueNumberParameter.Value = NewVenueNumber;
//          cmd.Parameters.Add(NewVenueNumberParameter);
//
//          SqlParameter courseIdParameter = new SqlParameter();
//          courseIdParameter.ParameterName = "@VenueId";
//          courseIdParameter.Value = this.GetId();
//          cmd.Parameters.Add(courseIdParameter);
//          SqlDataReader rdr = cmd.ExecuteReader();
//
//          while(rdr.Read())
//          {
//           //  this._id =rdr.GetInt32(0);
//            this._name = rdr.GetString(0);
//            this._courseNumber=rdr.GetString(1);
//
//          }
//
//          if (rdr != null)
//          {
//            rdr.Close();
//          }
//
//          if (conn != null)
//          {
//            conn.Close();
//          }
//         }


//DeleteAll
    public static void DeleteAll()
    {
      SqlConnection conn = DB.Connection();
      conn.Open();
      SqlCommand cmd = new SqlCommand("Delete FROM courses;", conn);
      cmd.ExecuteNonQuery();
      conn.Close();
    }



  }
}
