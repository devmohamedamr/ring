# Form/Window View - Generated Source Code File 
# Generated by the Ring 1.8 Form Designer
# Date : 06/03/2018
# Time : 22:18:35

Load "stdlib.ring"
Load "guilib.ring"

import System.GUI

if IsMainSourceFile() { 
	new App {
		StyleFusion()
		new findinfilesView { win.show() } 
		exec()
	}
}

class findinfilesView from WindowsViewParent
	win = new MainWindow() { 
		move(0,19)
		resize(1060,725)
		setWindowTitle("Find in files")
		setstylesheet("background-color:;") 
		lblfind = new label(win) {
			move(15,15)
			resize(92,34)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Find")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		lblExtension = new label(win) {
			move(16,138)
			resize(92,34)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Files Extension")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		txtFind = new lineedit(win) {
			move(118,8)
			resize(787,52)
			setstylesheet("color:black;background-color:white;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("")
			setTextChangedEvent("")
			setcursorPositionChangedEvent("")
			seteditingFinishedEvent("")
			setreturnPressedEvent(Method(:search))
			setselectionChangedEvent("")
			settextEditedEvent("")
			
		}
		lblinfolder = new label(win) {
			move(16,76)
			resize(92,34)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("In Folder")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		txtFolder = new lineedit(win) {
			move(119,69)
			resize(787,52)
			setstylesheet("color:black;background-color:white;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("")
			setTextChangedEvent("")
			setcursorPositionChangedEvent("")
			seteditingFinishedEvent("")
			setreturnPressedEvent("")
			setselectionChangedEvent("")
			settextEditedEvent("")
			
		}
		lblOutput = new label(win) {
			move(15,195)
			resize(92,34)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Output")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		TableOutput = new tablewidget(win) {
			move(121,209)
			resize(921,313)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setColumnCount(3)
			setHorizontalHeaderItem(1, new QTableWidgetItem("File"))
			setHorizontalHeaderItem(2, new QTableWidgetItem("Line"))
			setHorizontalHeaderItem(3, new QTableWidgetItem("Text"))
			setColumnwidth(1,400)
			setColumnwidth(2,50)
			setColumnwidth(3,800)
			setSelectionBehavior(QAbstractItemView_SelectRows)
			setAlternatingRowColors(True)
			setcellActivatedEvent("")
			setcellChangedEvent("")
			setcellClickedEvent("")
			setcellDoubleClickedEvent("")
			setcellEnteredEvent("")
			setcellPressedEvent("")
			setcurrentCellChangedEvent("")
			setcurrentItemChangedEvent("")
			setitemActivatedEvent("")
			setitemChangedEvent("")
			setitemClickedEvent("")
			setitemDoubleClickedEvent("")
			setitemEnteredEvent("")
			setitemPressedEvent("")
			setitemSelectionChangedEvent("")
			
		}
		btnSearch = new pushbutton(win) {
			move(907,16)
			resize(137,42)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Search")
			setClickEvent(Method(:search))
			setBtnImage(btnSearch,"")
			
		}
		btnBrowse = new pushbutton(win) {
			move(907,76)
			resize(137,42)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Browse")
			setClickEvent(Method(:browse))
			setBtnImage(btnBrowse,"")
			
		}
		btnClose = new pushbutton(win) {
			move(905,529)
			resize(137,42)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("Close")
			setClickEvent(Method(:Close))
			setBtnImage(btnClose,"")
			
		}
		LayoutFind = new QHBoxLayout() {
			AddWidget(lblfind)
			AddWidget(txtFind)
			AddWidget(btnSearch)
			
		}
		LayoutInFolder = new QHBoxLayout() {
			AddWidget(lblinfolder)
			AddWidget(txtFolder)
			AddWidget(btnBrowse)
			
		}
		LayoutOutput = new QHBoxLayout() {
			AddWidget(lblOutput)
			AddWidget(TableOutput)
			
		}
		txtExtension = new lineedit(win) {
			move(119,131)
			resize(787,48)
			setstylesheet("color:black;background-color:white;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("Arial")
			setfont(oFont)
			oFont.delete()
			setText("ring")
			setTextChangedEvent("")
			setcursorPositionChangedEvent("")
			seteditingFinishedEvent("")
			setreturnPressedEvent("")
			setselectionChangedEvent("")
			settextEditedEvent("")
			
		}
		LayoutExtension = new QHBoxLayout() {
			AddWidget(lblExtension)
			AddWidget(txtExtension)
			
		}
		LayoutMain = new QVBoxLayout() {
			AddLayout(LayoutFind)
			AddLayout(LayoutInFolder)
			AddLayout(LayoutExtension)
			AddLayout(LayoutOutput)
			AddWidget(btnClose)
			
		}

		oMWLayoutWidget = new qWidget() { setLayout(LayoutMain) }
		setCentralWidget(oMWLayoutWidget) 
	}

# End of the Generated Source Code File...