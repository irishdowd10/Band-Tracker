// using Xunit;
// using System.Collections.Generic;
// using System;
// using System.Data;
// using System.Data.SqlClient;
//
// namespace BandTracker
// {
//   [Collection("BandTracker")]
//   public class VenueTest : IDisposable
//   {
//     public VenueTest()
//     {
//       DBConfiguration.ConnectionString = "Data Source=(localdb)\\mssqllocaldb;Initial Catalog=band_tracker_test;Integrated Security=SSPI;";
//     }
//
//     //
//     // [Fact]
//     // public void GetAll_GetsCountOfVenuess_DatabaseEmpty()
//     // {
//     //   //Arrange, Act
//     //   int result = Venue.GetAll().Count;
//     //
//     //   //Assert
//     //   Assert.Equal(0, result);
//     // }
//     //
//     //
//     public void Dispose()
//     {
//
//       Venue.DeleteAll();
//       Band.DeleteAll();
//     }
//
//   }
// }
