using CommunityToolkit.Mvvm.ComponentModel;

namespace GloboTicke_Admin3.ViewModels;

public partial class CategoryViewModel : ObservableObject
{
    [ObservableProperty]
    private Guid _id;
    
    [ObservableProperty]
    private string _name = default!;
}