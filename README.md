# System building tools for Oberon
System "building tools" for the Project Oberon 2013 and Extended Oberon operating systems, as described in chapter 14 of the book *Project Oberon 2013 Edition*, available at www.projectoberon.com.

Note: In this repository, the term "Project Oberon 2013" refers to a re-implementation of the original "Project Oberon" on an FPGA development board around 2013, as published at www.projectoberon.com.

**PREREQUISITES**: A current version of Project Oberon 2013 (see http://www.projectoberon.com). If you use Extended Oberon (see http://github.com/andreaspirklbauer/Oberon-extended), the functionality is already implemented.

------------------------------------------------------
**Documentation:**

| Topic  | Documentation |
| :------------- | :------------- |
| System building tools (PDF)  | [**The-Oberon-system-building-tools.pdf**](http://github.com/andreaspirklbauer/Oberon-extended/blob/master/Documentation/The-Oberon-system-building-tools.pdf)  |
| System building tools (web)  | [**The-Oberon-system-building-tools.md**](Documentation/The-Oberon-system-building-tools.md)  |

------------------------------------------------------
**Downloading and creating the Oberon system building tools**

If *Extended Oberon* is used, the system building tools are already installed on your system. If *Project Oberon 2013* is used, download the Oberon system building tools from the [**Sources/FPGAOberon2013**](Sources/FPGAOberon2013) directory of this repository.

OPTIONAL: If you use these system building tools in a development environment *different* than the original Oberon system (e.g., the Astrobe tool from http://www.astrobe.com), you can skip this step. But if you want to import and use these files in an original Oberon system, we recommend to first convert the downloaded files to Oberon format (Oberon uses CR as line endings) using the command [**dos2oberon**](dos2oberon), also available in this repository (example shown for Mac or Linux):

     for x in *.Mod *.Tool ; do ./dos2oberon $x $x ; done  # OPTIONAL

and then import the files to your Oberon system. If you use an emulator (e.g., **https://github.com/pdewacht/oberon-risc-emu**) to run the Oberon system, click on the *PCLink1.Run* link in the *System.Tool* viewer, copy the files to the emulator directory, and execute the following command on the command shell of your host system:

     cd oberon-risc-emu
     for x in *.Mod *.Tool ; do ./pcreceive.sh $x ; sleep 1 ; done

Create a modified version of the compiler which configures a larger string area (only needed to compile *System1.Mod*):

     ORP.Compile ORG.Mod/s ~
     System.Free ORTool ORP ORG ORB ORS ~

Create the Oberon system building tools:

     ORP.Compile ORL.Mod/s ORX.Mod/s ~    # generate the boot linker/loader and boot converter

