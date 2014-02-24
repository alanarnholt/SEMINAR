# Doing it with Windows

## Having fun --- or Not

OK....does **bash** work with windows?

First, check if the following works at the **R** prompt.


```r
Sys.which("bash")
```

```
                              bash 
"C:\\PROGRA~2\\Git\\bin\\bash.exe" 
```


Cool!  It looks like I am good to go.

Now we will print the working directory from **bash**.


```bash
pwd
```

```
/c/Users/Kayla/Documents/Senior_Seminar/Git_Repositories/SEMINAR/Kayla/shell
```


To see if **sh** will work, test to see if it is found on your system.  
I have **Rtools** installed on my system.  You may want to install [Rtools](http://cran.r-project.org/bin/windows/Rtools/) if you have not already.


```r
Sys.which("sh")
```

```
                              sh 
"C:\\PROGRA~2\\Git\\bin\\sh.exe" 
```


Hot dog!  This is working.  Issue some commands to see what is in the working directory.


```sh
ls -a
```

```
.
..
WindowsCheck.Rmd
WindowsCheck.html
WindowsCheck.md
```


Maybe a little more information. Note: `-al` lists details for hidden and 
unhiddn files and folders.


```sh
ls -al
```

```
total 13
drwxr-xr-x    1 Kayla    Administ     4096 Feb  3 16:43 .
drwxr-xr-x    1 Kayla    Administ        0 Feb  3 15:58 ..
-rw-r--r--    1 Kayla    Administ     1295 Feb  3 16:47 WindowsCheck.Rmd
-rw-r--r--    1 Kayla    Administ    15536 Feb  3 16:43 WindowsCheck.html
-rw-r--r--    1 Kayla    Administ     2055 Feb  3 16:43 WindowsCheck.md
```

`touch` creates an empty file


```sh
touch NewFile
ls
```

```
NewFile
WindowsCheck.Rmd
WindowsCheck.html
WindowsCheck.md
```


```sh
rm NewFile
ls
```

```
WindowsCheck.Rmd
WindowsCheck.html
WindowsCheck.md
```


What time is it?


```bash
date
```

```
Mon Feb  3 16:47:20 EST 2014
```


```bash
pwd
```

```
/c/Users/Kayla/Documents/Senior_Seminar/Git_Repositories/SEMINAR/Kayla/shell
```



```bash
ls
```

```
WindowsCheck.Rmd
WindowsCheck.html
WindowsCheck.md
```



```r
x <- rexp(1000)
hist(x, col = "purple")
```

![plot of chunk unnamed-chunk-11](figure/unnamed-chunk-11.png) 




