using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace GloboTicke_Admin3.ViewModels;

public class CategoryViewModel : INotifyPropertyChanged
{
    private Guid _id;
    private string _name = default!;
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
    public event PropertyChangedEventHandler? PropertyChanged;
    public void OnPropertyChanged([CallerMemberName]string? propertyName = null) 
        => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

}