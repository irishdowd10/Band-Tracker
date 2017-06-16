using Xunit;
using System.Collections.Generic;
using System;
using System.Data;
using System.Data.SqlClient;

namespace BandTracker
{
  [Collection("BandTracker")]
  public class BandTest : IDisposable
  {
    public BandTest()
    {
      DBConfiguration.ConnectionString = "Data Source=(localdb)\\mssqllocaldb;Initial Catalog=band_tracker_test;Integrated Security=SSPI;";
    }

    [Fact]
    public void GetAll_GetsCountOfBands_DatabaseEmpty()
    {
      //Arrange, Act
      int result = Band.GetAll().Count;

      //Assert
      Assert.Equal(0, result);
    }

    [Fact]
    public void Equals_ChecksObjectEquality_True()
    {
      //Arrange, Act
      Band firstBand = new Band("Widespread Panic");
      Band secondBand = new Band("Widespread Panic");
      //Assert
      Assert.Equal(firstBand, secondBand);
      }

    [Fact]
    public void Save_DoesSaveToDatabase_True()
      {
      //Arrange
      Band testBand = new Band("Widespread Panic");
      testBand.Save();
      //Act
      List<Band> result = Band.GetAll();
      List<Band> testList = new List<Band>{testBand};
      //Assert
      Assert.Equal(testList, result);
      }

    [Fact]
    public void Find_FindsBandInDatabase_True()
    {
      Band testBand = new Band("Widespread Panic");
      testBand.Save();

      Band foundBand = Band.Find(testBand.GetId());

      Assert.Equal(testBand, foundBand);
    }

    [Fact]
    public void TestVenue_AddVenueToBand_True()
    {
      //Arrange
      Band testBand = new Band("Widespread Panic");
      testBand.Save();

      Venue firstVenue = new Venue("Red Rocks");
      Venue secondVenue = new Venue("Fox");
      firstVenue.Save();
      secondVenue.Save();
      //Add
      testBand.AddVenue(firstVenue);
      testBand.AddVenue(secondVenue);


      List<Venue> result = testBand.GetVenues();
      List<Venue> testList = new List<Venue> {firstVenue, secondVenue};
      //Assert
      Assert.Equal(testList, result);
    }

    [Fact]
    public void GetVenues_ReturnAllBandsVenues_True()
    {
      //Arrange
      Band testBand = new Band("Widespread Panic");
      testBand.Save();

      Venue firstVenue = new Venue("Red Rocks");
      Venue secondVenue = new Venue("Fox");

      firstVenue.Save();
      secondVenue.Save();
      //Act
      testBand.AddVenue(firstVenue);
      List<Venue> savedVenues = testBand.GetVenues();
      List<Venue> testList = new List<Venue>{firstVenue};
      //Assert
      Assert.Equal(testList, savedVenues);
    }

    [Fact]
    public void Delete_DeletesBandAssociationsFromDatabase_BandList()
    {
      //Arrange
      Venue testVenue = new Venue("Red Rocks");
      testVenue.Delete();

      Band testBand = new Band("Widespread Panic");
      testBand.Save();


      //Act
      testBand.AddVenue(testVenue);
      testBand.Delete();

      List<Band> result = testVenue.GetBands();
      List<Band> test = new List<Band> {};

      //Assert
      Assert.Equal(test, result);
    }

    [Fact]
    public void Edit_EditsesBandInDatabase()
    {
      //Arrange
      Band newBand = new Band("Widespread Panic");
      newBand.Save();

      newBand.Edit("WSP");

      //Act
      Assert.Equal(newBand.GetName(), "WSP");
    }




    public void Dispose()
    {

      Band.DeleteAll();
      Venue.DeleteAll();
    }

  }
}
