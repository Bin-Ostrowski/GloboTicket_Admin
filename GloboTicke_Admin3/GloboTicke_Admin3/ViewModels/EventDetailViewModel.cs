using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace GloboTicke_Admin3.ViewModels;

public class EventDetailViewModel : INotifyPropertyChanged
{
    private Guid _id;
    private string _name = default!;
    private double _price;
    private string _imageUrl;
    private EventStatusEnum _eventStatus;
    private DateTime _date = DateTime.Now;
    private string _description;
    private List<string> _artists = new();
    private CategoryViewModel _category = new();

    public Guid Id
    {
        get => _id;
        set
        {
            if (!value.Equals(_id))
            {
                _id = value;
                OnPropertyChanged();
            }
        }
    }

    public string Name
    {
        get => _name;
        set
        {
            if (!value.Equals(_name))
            {
                _name = value;
                OnPropertyChanged();
            }
        }
    }

    public double Price
    {
        get => _price;
        set
        {
            if (!value.Equals(_price))
            {
                _price = value;
                OnPropertyChanged();
            }
        }
    }

    public string ImageUrl
    {
        get => _imageUrl;
        set
        {
            if (!value.Equals(_imageUrl))
            {
                _imageUrl = value;
                OnPropertyChanged();
            }
        }
    }

    public EventStatusEnum EventStatus
    {
        get => _eventStatus;
        set
        {
            if (!value.Equals(_eventStatus))
            {
                _eventStatus = value;
                OnPropertyChanged();
            }
        }
    }

    public DateTime Date
    {
        get => _date;
        set
        {
            if (!value.Equals(_date))
            {
                _date = value;
                OnPropertyChanged();
            }
        }
    }

    public string Description
    {
        get => _description;
        set
        {
            if (!value.Equals(_description))
            {
                _description = value;
                OnPropertyChanged();
            }
        }
    }

    public List<string> Artists
    {
        get => _artists;
        set
        {
            if (!value.Equals(_artists))
            {
                _artists = value;
                OnPropertyChanged();
            }
        }
    }

    public CategoryViewModel Category
    {
        get => _category;
        set
        {
            if (!value.Equals(_category))
            {
                _category = value;
                OnPropertyChanged();
            }
        }
    }
    
    private bool _showLargerImage;

    public bool ShowLargerImage
    {
        get => _showLargerImage;
        set
        {
            if (!value.Equals(_showLargerImage))
            {
                _showLargerImage = value;
                OnPropertyChanged();
                OnPropertyChanged(nameof(ShowThumbnailImage));
            }
        }
    }
    
    public bool ShowThumbnailImage => !ShowLargerImage;

    public EventDetailViewModel()
    {
        Id = Guid.Parse("{EE272F8B-6096-4CB6-8625-BB4BB2D89E8B}");
        Name = "John Egberts Live";
        Price = 65;
        ImageUrl = "https://lindseybroospluralsight.blob.core.windows.net/globoticket/images/banjo.jpg";
        EventStatus = EventStatusEnum.OnSale;
        Date = DateTime.Now.AddMonths(6);
        Description = "Join John for his farwell tour across 15 continents. John really needs no introduction since he has already mesmerized the world with his banjo.";
        Artists = new List<string> { "John Egbert", "Jane Egbert" };
        Category = new CategoryViewModel
        {
            Id = Guid.Parse("B0788D2F-8003-43C1-92A4-EDC76A7C5DDE"),
            Name = "Concert"
        };
    }
    
    public event PropertyChangedEventHandler? PropertyChanged;
    public void OnPropertyChanged([CallerMemberName]string? propertyName = null) 
        => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
}