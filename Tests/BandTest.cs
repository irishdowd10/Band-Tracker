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




    public void Dispose()
    {

      Band.DeleteAll();
      Band.DeleteAll();
    }

  }
}
