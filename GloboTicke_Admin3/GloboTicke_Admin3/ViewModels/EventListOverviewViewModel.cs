using CommunityToolkit.Mvvm.ComponentModel;

namespace GloboTicke_Admin3.ViewModels;

public partial class EventListOverviewViewModel : ObservableObject
{
    [ObservableProperty]
    private List<EventListItemViewModel> _events = new();

    public EventListOverviewViewModel()
    {
        Events = new List<EventListItemViewModel>
        {
            new(Guid.Parse("{EE272F8B-6096-4CB6-8625-BB4BB2D89E8B}"),
                "John Egbert Live",
                65,
                DateTime.Now.AddMonths(6),
                new List<string> { "John Egbert", "Jane Egbert" },
                EventStatusEnum.OnSale,
                "https://lindseybroospluralsight.blob.core.windows.net/globoticket/images/banjo.jpg",
                new CategoryViewModel
                {
                    Id = Guid.Parse("B0788D2F-8003-43C1-92A4-EDC76A7C5DDE"),
                    Name = "Concert"
                }),
            new(Guid.Parse("{3448D5A4-0F72-4DD7-BF15-C14A46B26C00}"),
                "The State of Affairs: Michael Live!", 85,
                DateTime.Now.AddMonths(9),
                new List<string> { "John Johnson" },
                EventStatusEnum.OnSale,
                "https://lindseybroospluralsight.blob.core.windows.net/globoticket/images/michael.jpg",
                new CategoryViewModel
                {
                    Id = Guid.Parse("B0788D2F-8003-43C1-92A4-EDC76A7C5DDE"),
                    Name = "Concert"
                })
        };
    }
}