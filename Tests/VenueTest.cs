using Xunit;
using System.Collections.Generic;
using System;
using System.Data;
using System.Data.SqlClient;

namespace BandTracker
{
  [Collection("BandTracker")]
  public class VenueTest : IDisposable
  {
    public VenueTest()
    {
      DBConfiguration.ConnectionString = "Data Source=(localdb)\\mssqllocaldb;Initial Catalog=band_tracker_test;Integrated Security=SSPI;";
    }


    [Fact]
    public void GetAll_GetsCountOfVenuess_DatabaseEmpty()
    {
      //Arrange, Act
      int result = Venue.GetAll().Count;

      //Assert
      Assert.Equal(0, result);
    }

    [Fact]
    public void Equals_ChecksObjectEquality_True()
    {
      //Arrange, Act
      Venue firstVenue = new Venue("Red Rocks");
      Venue secondVenue = new Venue("Red Rocks");
      //Assert
      Assert.Equal(firstVenue, secondVenue);
    }

    [Fact]
    public void Save_DoesSaveToDatabase_True()
    {
      //Arrange
      Venue testVenue = new Venue("Widespread Panic");
      testVenue.Save();
      //Act
      List<Venue> result = Venue.GetAll();
      List<Venue> testList = new List<Venue>{testVenue};
      //Assert
      Assert.Equal(testList, result);
    }

    [Fact]
    public void Find_FindsVenueInDatabase_True()
    {
      Venue testVenue = new Venue("Widepsread Panic");
      testVenue.Save();

      Venue foundVenue = Venue.Find(testVenue.GetId());

      Assert.Equal(testVenue, foundVenue);
    }

    [Fact]
    public void AddBand_AddBandToVenue_True()
    {
      //Arrange
      Venue testVenue = new Venue("Red Rocks");
      testVenue.Save();

      Band firstBand = new Band("Widespread Panic");
      Band secondBand = new Band("The Band");
      firstBand.Save();
      secondBand.Save();
      //Add
      testVenue.AddBand(firstBand);
      testVenue.AddBand(secondBand);

      List<Band> result = testVenue.GetBands();
      List<Band> testList = new List<Band> {firstBand, secondBand};
      //Assert
      Assert.Equal(testList, result);
    }

    [Fact]
    public void GetBands_ReturnAllVenuesBands_True()
    {
      //Arrange
      Venue testVenue = new Venue("Red Rocks");
      testVenue.Save();

      Band testBand1 = new Band("Widespread Panic");
      Band testBand2 = new Band("The Band");
      testBand1.Save();
      testBand2.Save();
      //Act
      testVenue.AddBand(testBand1);
      List<Band> savedBands = testVenue.GetBands();
      List<Band> testList = new List<Band>{testBand1};
      //Assert
      Assert.Equal(testList, savedBands);
    }

    [Fact]
    public void Delete_DeletesVenueAssociationsFromDatabase_VenueList()
    {
      //Arrange
      Band testBand = new Band("Widespread Panic");
      testBand.Save();

      Venue testVenue = new Venue("Red Rocks");
      testVenue.Delete();


      //Act
      testVenue.AddBand(testBand);
      testVenue.Delete();

      List<Venue> result = testBand.GetVenues();
      List<Venue> test = new List<Venue> {};

      //Assert
      Assert.Equal(test, result);
    }

    [Fact]
    public void Edit_EditsesVenueInDatabase()
    {
      //Arrange
      Venue newVenue = new Venue("Red Rock");
      newVenue.Save();
      newVenue.Edit("Red Socks");

     //Act
    //  Venue newerVenue = new Venue("Red Socks");

     Assert.Equal(newVenue.GetName(), "Red Socks");
    }


    //
    public void Dispose()
    {

      Venue.DeleteAll();
      Band.DeleteAll();
    }

  }
}
