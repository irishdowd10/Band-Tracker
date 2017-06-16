using System.Collections.Generic;
using Nancy;
using Nancy.ViewEngines.Razor;

namespace BandTracker
{
  public class HomeModule : NancyModule
  {
    public HomeModule()
    {
      Get["/"] = _ => {
        List<Venue> AllVenues = Venue.GetAll();
        return View["index.cshtml", AllVenues];
      };
      Get["/bands"] = _ => {
        List<Band> AllBands = Band.GetAll();
        return View["bands.cshtml", AllBands];
      };
      Get["/venues"] = _ => {
        List<Venue> AllVenues = Venue.GetAll();
        return View["venues.cshtml", AllVenues];
      };
    //   Get["/venues/new"] = _ => {
    //     return View["venues_form.cshtml"];
    //   };
    //   Post["/venues/new"] = _ => {
    //     Venue newVenue = new Venue(Request.Form["venue-name"]);
    //     newVenue.Save();
    //     return View["success.cshtml"];
    //   };
    //   Get["/bands/new"] = _ => {
    //     List<Venue> AllVenues = Venue.GetAll();
    //     return View["bands_form.cshtml", AllVenues];
    //   };
    //   Post["/bands/new"] = _ => {
    //     Band newBand = new Band(Request.Form["band-name"]);
    //     newBand.Save();
    //     return View["success.cshtml"];
    //   };
    //   Post["/bands/delete"] = _ => {
    //     Band.DeleteAll();
    //     return View["cleared.cshtml"];
    //   };
    // Get["venues/{id}"] = parameters => {
    //   Dictionary<string, object> model = new Dictionary<string, object>();
    //   Venue SelectedVenue = Venue.Find(parameters.id);
    //   List<Band> VenueBands = SelectedVenue.GetBands();
    //   List<Band> AllBands = Band.GetAll();
    //   model.Add("venue", SelectedVenue);
    //   model.Add("venueBands", VenueBands);
    //   model.Add("allBands", AllBands);
    //   return View["venue.cshtml", model];
    //  };
    // Get["bands/{id}"] = parameters => {
    //    Dictionary<string, object> model = new Dictionary<string, object>();
    //    Band SelectedBand = Band.Find(parameters.id);
    //    List<Venue> BandVenues = SelectedBand.GetVenues();
    //    List<Venue> AllVenues = Venue.GetAll();
    //    model.Add("band", SelectedBand);
    //    model.Add("bandVenues", BandVenues);
    //    model.Add("allVenues", AllVenues);
    //    return View["band.cshtml", model];
    //  };
    // Get["venue/delete/{id}"] = parameters => {
    //    Venue SelectedVenue = Venue.Find(parameters.id);
    //    return View["venue_delete.cshtml", SelectedVenue];
    // };
    // Delete["venue/delete/{id}"] = parameters => {
    //    Venue SelectedVenue = Venue.Find(parameters.id);
    //    SelectedVenue.Delete();
    //    return View["success.cshtml"];
    // };
    // Get["band/delete/{id}"] = parameters => {
    //    Band SelectedBand = Band.Find(parameters.id);
    //   return View["band_delete.cshtml", SelectedBand];
    // };
    // Delete["band/delete/{id}"] = parameters => {
    //  Band SelectedBand = Band.Find(parameters.id);
    //  SelectedBand.Delete();
    //  return View["success.cshtml"];
    // };
    // Post["band/add_venue"] = _ => {
    //   Venue venue = Venue.Find(Request.Form["venue-id"]);
    //   Band band = Band.Find(Request.Form["band-id"]);
    //   band.AddVenue(venue);
    //   return View["success.cshtml"];
    // };
    // Post["venue/add_band"] = _ => {
    //   Venue venue = Venue.Find(Request.Form["venue-id"]);
    //   Band band = Band.Find(Request.Form["band-id"]);
    //   venue.AddBand(band);
    //   return View["success.cshtml"];
    //   };
    // Get["venue/edit/{id}"] = parameters => {
    //     Venue SelectedVenue = Venue.Find(parameters.id);
    //     return View["venue_edit.cshtml", SelectedVenue];
    //   };
    //
    // Patch["venue/edit/{id}"] = parameters => {
    //   Venue SelectedVenue = Venue.Find(parameters.id);
    //   SelectedVenue.Edit(Request.Form["venue-name"]);
    //   return View["success.cshtml"];
    //   };
    // Get["band/edit/{id}"] = parameters => {
    //   Band SelectedBand = Band.Find(parameters.id);
    //   return View["band_edit.cshtml", SelectedBand];
    //     };
    //
    // Patch["band/edit/{id}"] = parameters => {
    //   Band SelectedBand = Band.Find(parameters.id);
    //   SelectedBand.Edit(Request.Form["band-name"]);
    //   return View["success.cshtml"];
    //     };
    }
  }
}
