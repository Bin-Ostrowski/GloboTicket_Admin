using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GloboTicke_Admin3.ViewModels;

namespace GloboTicke_Admin3.Views;

public partial class EventDetailPage : ContentPage
{
    public EventDetailPage()
    {
        InitializeComponent();
        BindingContext = new EventDetailViewModel();
        
        // can bind this way but is better to set bindings in xmal
        // LabelEventName.SetBinding(Label.TextProperty, nameof(EventDetailViewModel.Name),
        //     BindingMode.OneWay);
        // in EventDetailPage.xaml would need to add Name within Label. x:Name="LabelEventName"
    }
}