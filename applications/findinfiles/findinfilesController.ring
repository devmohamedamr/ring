# Application : Find in files 
# Author      : Mahmoud Fayed <msfclipper@yahoo.com>
# Date        : 2018.03.06

load "findinfilesview.ring"
import System.GUI
if isMainSourceFile() { 
	new App
		{
			StyleFusion()
			open_window(:findinfilesController)
			exec()
		}
}

class findinfilesController from WindowsControllerParent

	oView = new findinfilesView
	oView.txtFolder.setText(CurrentDir())

	func search

		oView {
			cText = txtFind.text()
			cFolder = txtFolder.text()
			cExtension = txtExtension.text()
			try { 
				aFiles = ListAllFiles(cFolder,cExtension)
			Catch 
				msginfo("Sorry","Can't open the folder!")
				return 
			} 
			nRow = 0
			TableOutput.setRowCount(0)
			for cFile in aFiles step 1 { 
				cFileText = read(cFile)
				aList = str2list(cFileText)
				nMax = len(aList)
				for x = 1 to nMax step 1 { 
					cLine = aList[x]
					nPos = substr(cLine,cText)
					cLine = substr(cLine,Tab,"")
					cLine = trim(cLine)
					if nPos { 
						nRow++
						TableOutput.setRowCount(nRow)
						oItem = new TableWidgetItem(cFile)
						TableOutput.setItem(nRow,1,oItem)
						oItem = new TableWidgetItem(""+x)
						TableOutput.setItem(nRow,2,oItem)
						oItem = new TableWidgetItem(cLine)
						TableOutput.setItem(nRow,3,oItem)
					}
				}
			}
			if nRow = 0 { 
				msginfo("Sorry","No Output!")
			}
		}

	func browse

		new QFileDialog(oView.win)
		{
			cFolder = getExistingDirectory(this.oView.win,"Open Directory","Folder",0)
		}
		oView.txtFolder.setText(cFolder)

	func close

		oView.win.close()
