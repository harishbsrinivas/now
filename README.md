Description
---
Simple shell script to track what I am doing everyday. Inspired by ruby gem called 'doing'.


Installation
---
  * Copy this script into $HOME/bin  
  * set executable permission on the script
           chmod +x $HOME/bin/now.sh  
  * add an aliases in .bashrc  
           alias now=$HOME/scripts/now.sh
  * set NV_PATH to point to any folder you like
  * reload bash configuration
           source ~/.bashrc
           
Usage
---
 __Log Task__
 To log what you are doing 
         now "Start: Working on normal priority task 1"  
 this will result in a a file being created named $MONTH_$YEAR with a line similar to the one below
        2014-09-04 18:20:00 - Start: Working on normal priority task 1
        
__Switch Task__  
To context switch to another task   
       now "Pause: Working on normal priority task 1"   
followed by   
        now "Start: Working on Higher priority task 2"    
This will put in two additional lines in the same file like the ones below   
		  2014-09-04 18:21:05 - Pause: Working on normal priority task 1   
		  2014-09-04 18:21:12 - Start: Working on Higher priority task 2   
		  
__Restart Task__		  
To restart paused task   
       now "Continue: Working on normal priority task 1"     
This will put in a line in the same file like the one below    
           2014-09-04 18:23:45 - Continue: Working on normal priority task 1 
           

__Finish Task__  	
To Finish a task   
       now "Done: Working on normal priority task 1"     
This will put in a line in the same file like the one below    
           2014-09-04 18:24:38 - Done: Working on normal priority task 1
           

Backups
---
Setting NV_PATH to a folder in dropbox will automatically allow you to access these files from multiple computers and 
 ensure you have an offline backup of your files.


nvALT Integration  
---
nvALT is an excellent clone of notational velocity for Mac. It is developed by brett terpstra. 
simply set NV_PATH to the location where nvALT saves its files. This should make the files available
inside nvALT. they are fully editable/searchable.

SimpleNote sync
---
If you choose to use nvALT  then syncing the files to simple note is trivial. Just add your simple note 
credentials in the nvALT settings.
