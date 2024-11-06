using GloboTicke_Admin3.Views;

namespace GloboTicke_Admin3;

public partial class App : Application
{
    public App()
    {
        InitializeComponent();

        MainPage = new EventOverviewPage();
    }
}