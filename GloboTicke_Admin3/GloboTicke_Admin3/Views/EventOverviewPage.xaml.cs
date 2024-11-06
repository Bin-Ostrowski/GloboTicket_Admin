using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GloboTicke_Admin3.ViewModels;

namespace GloboTicke_Admin3.Views;

public partial class EventOverviewPage : ContentPage
{
    public EventOverviewPage()
    {
        InitializeComponent();
        BindingContext = new EventListOverviewViewModel();
    }
}