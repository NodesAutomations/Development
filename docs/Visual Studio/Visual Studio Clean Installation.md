### Check

- [ ]  First Install New Version on Secondary PC
- [ ]  Check Sample Project Building and Debugging
- [ ]  Check Main Project Build
- [ ]  Check All Extension
- [ ]  Update Visual Studio on Main

<aside>
⚠️ Latest Stable Version 16.4.10

</aside>

### Steps for Semi Clean Installation

- This for case when there's problem with VSTO  Debugging like unable to retrieve value for name range or datarange but it is working in release build
- Uninstall visual studio using visual studio installer, keep Installer
- Clean Up Visual Studio Files from Appdata>Local>Microsoft>(Visual Studio+Visual Studio Service)
- Reinstall Visual studio with visual studio installer
- Test with sample excel workbook project

### Steps for Clean Installation

- Uninstall visual Studio using Visual studio installer
- Uninstall Visual Studio Installer using BC installer
- Uninstall office 365 using BC installer
- Clean Up Visual Studio Files from Appdata>Local>Microsoft>(Visual Studio+Visual Studio Service)
- Restart PC
- Install 64bit Version of Office 365 using Latest Installer
- Install Visual Studio using this [Link](https://docs.microsoft.com/en-us/visualstudio/releases/2019/history) (Latest working Version 16.4.10 download Link with Progessional tag)
- Install Visual Studio Installer, Close it after completion and Reopen for New Updates
- Install Visual Studio Community 2019 with (Desktop+Office) Development Setup Use Default Setting
- After Installation Complete
    - Create new Console App with .net framework for Testing
    - Create New Excel Document Level Addin for Testing
    - Test Vsto Setup [Link](https://nodesauto-my.sharepoint.com/personal/vivek_nodesautomations_com/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fvivek%5Fnodesautomations%5Fcom%2FDocuments%2FRepos%2FExcelWorkbook%5FCSharp%5FSample)
- Reopen Visual Studio Update it's core extension like Live Sharing
- Install All Visual Studio extension except Roslynator
- Restart Visual Studio to Install Roslynator
- Test Rolsynator with Sample Console App

### Sample Code

```csharp
using System.Diagnostics;
using Microsoft.Office.Tools.Ribbon;
using ExcelModel;
using Microsoft.Office.Interop.Excel;

namespace ExcelWorkbook1
{
    public partial class Ribbon1
    {
        private void Ribbon1_Load(object sender, RibbonUIEventArgs e)
        {
            Globals.Ribbons.Ribbon1.tab1.RibbonUI.ActivateTab("tab1");
            Debug.WriteLine(Globals.Sheet1.test.Value2);

            int rows = Globals.Sheet1.tblTest.DataBodyRange.Rows.Count;
            int cols= Globals.Sheet1.tblTest.DataBodyRange.Columns.Count;
            for (int i = 0; i < rows; i++)
            {
                string str =default;
                for (int j = 0; j < cols; j++)
                {
                    Range rng = Globals.Sheet1.tblTest.DataBodyRange.get_Range("A1").get_Offset(i, j);
                    str += System.Convert.ToString(rng.Value)+",";
                }
                Debug.WriteLine(str);
            }
        }
       
        private void button1_Click(object sender, RibbonControlEventArgs e)
        {
            var _TempNameRange = new NamedRange();
            _TempNameRange.Name = "test";
            _TempNameRange.Formula = "0";
            _TempNameRange.Detail = "0";
            _TempNameRange.IsOptionalInput =false;

            Debug.WriteLine(Globals.Sheet1.test.Value2);
            Debug.WriteLine(Globals.Sheet1.test.Value2);
            var data = DataValidation.GetString(Globals.Sheet1.test, _TempNameRange);
            Debug.Print(data);
        }

        private void button2_Click(object sender, RibbonControlEventArgs e)
        {
            var _TempTableRange = new TableRange();
            _TempTableRange.Name = "tblTest";
            _TempTableRange.Detail = "Table for test";
            _TempTableRange.IsMissing = false;

            Range rng = Globals.Sheet1.tblTest.DataBodyRange.get_Range("A1").get_Offset(0, 1);
            var data = DataValidation.GetString(ref rng, ref _TempTableRange);
            Debug.Print(data);
        }
    }
}
```