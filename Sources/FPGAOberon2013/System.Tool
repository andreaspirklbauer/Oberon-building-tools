System.Open ^ System.Recall System.Watch System.Collect
Edit.Open ^  Edit.Recall
Edit.ChangeFont Oberon8.Scn.Fnt
Edit.ChangeFont Oberon10i.Scn.Fnt
Edit.ChangeFont Oberon16.Scn.Fnt
Edit.ChangeFont Times24.Scn.Fnt

System.Directory ^
  *.Mod  *.Bak  *.Tool  *.Text  *.Scn.Fnt  *.smb  *.rsc  *.bin  *.mem

ORP.Compile @  ORP.Compile @/s  ORP.Compile ^/s ORP.Compile ~
System.Free ~
System.Open Draw.Tool
System.CopyFiles ~
System.RenameFiles ~         Stars.Open Stars.Run System.Free Stars~
System.DeleteFiles ~
System.ShowModules  System.ShowCommands ^

PCLink1.Run  PCLink1.Stop    Oberon0Tool.Run  Oberon0Tool.Stop  # run only of of these 2
Hilbert.Draw  Sierpinski.Draw  Blink.Run  Stars.Open
Tools.Inspect 0  Tools.Sector 1  Tools.ShowFile
Tools.Recall  Tools.Clear

# ------------ building the system ----------------

ORP.Compile ORS.Mod/s ORB.Mod/s ~         Edit.Open Build.Tool ~
ORP.Compile ORG.Mod/s ORP.Mod/s ~
ORP.Compile ORL.Mod/s ORX.Mod/s ORTool.Mod/s ~
System.Free ORTool ORP ORG ORB ORS ORL ORX ~

ORP.Compile Kernel.Mod/s FileDir.Mod/s Files.Mod/s Modules.Mod/s ~
ORL.Link Modules ~            # generate a regular boot file
ORL.Load Modules.bin ~     # load the boot file onto the boot area

ORP.Compile Input.Mod/s Display.Mod/s Viewers.Mod/s ~
ORP.Compile Fonts.Mod/s Texts.Mod/s ~
ORP.Compile Oberon.Mod/s ~                      Edit.Open Oberon.Mod
ORP.Compile MenuViewers.Mod/s ~             Edit.Open MenuViewers.Mod
ORP.Compile TextFrames.Mod/s ~                Edit.Open TextFrames.Mod
ORP.Compile System.Mod/s ~                       Edit.Open System.Mod
ORP.Compile Edit.Mod/s Tools.Mod/s ~        Edit.Open Edit.Mod

ORP.Compile PCLink1.Mod/s Clipboard.Mod/s Out.Mod/s ~
ORP.Compile RS232.Mod/s SCC.Mod/s Net.Mod/s ~

ORP.Compile Graphics.Mod/s GraphicFrames.Mod/s ~
ORP.Compile GraphTool.Mod/s MacroTool.Mod/s Draw.Mod/s ~

ORP.Compile Curves.Mod/s Sierpinski.Mod/s ~
ORP.Compile Hilbert.Mod/s Stars.Mod/s ~
ORP.Compile Rectangles.Mod/s Checkers.Mod/s ~
ORP.Compile Math.Mod/s PIO.Mod/s Blink.Mod/s ~
