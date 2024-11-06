using CommunityToolkit.Mvvm.ComponentModel;

namespace GloboTicke_Admin3.ViewModels;

public partial class EventListItemViewModel : ObservableObject
{
    [ObservableProperty]
    private Guid _id;

    [ObservableProperty]
    private string _name = default!;

    [ObservableProperty]
    private double _price;

    [ObservableProperty]
    private string? _imageUrl;

    [ObservableProperty]
    private EventStatusEnum _eventStatus;

    [ObservableProperty]
    private DateTime _date;

    [ObservableProperty]
    private List<string> _artists = new();

    [ObservableProperty]
    private CategoryViewModel? _category;

    public EventListItemViewModel(
        Guid id,
        string name,
        double price,
        DateTime date,
        List<string> artists,
        EventStatusEnum status,
        string? imageUrl = null,
        CategoryViewModel? category = null)
    {
        _id = id;
        _imageUrl = imageUrl;
        _name = name;
        _price = price;
        _date = date;
        _artists = artists;
        _eventStatus = status;
        _category = category;
    }
}