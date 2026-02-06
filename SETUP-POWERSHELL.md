# Using R in PowerShell (this repo)

The file `.bashrc` only runs in **Git Bash**. In **PowerShell** it is ignored, so `source .bashrc` does nothing and R is not in your PATH.

## If "running scripts is disabled" (ExecutionPolicy)

Use the **one-liner** below (no script file, no policy change). Or allow scripts once:  
`Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`  
then you can use `. .\env-r.ps1`.

## One-liner: add R to this session (no script)

Paste this in PowerShell (from any folder):

```powershell
$env:PATH = "C:\Users\amp388\AppData\Local\Programs\R\R-4.5.2\bin\x64;$env:PATH"
```

Then run `Rscript --version` or `Rscript 01_query_api\02_example.R`. Repeat in each new PowerShell window if needed.

## Option 1: Load R via script (if scripts are allowed)

From the repo root (`dsai`), run:

```powershell
. .\env-r.ps1
```

Then you can run:

- `Rscript 01_query_api\02_example.R`
- `Rscript --version`

You need to run `. .\env-r.ps1` again in each new PowerShell window.

## Option 2: Add R to Windows PATH (permanent)

1. Press **Win**, type **environment**, open **Edit environment variables for your account**.
2. Under **User variables**, select **Path** → **Edit** → **New**.
3. Add: `C:\Users\amp388\AppData\Local\Programs\R\R-4.5.2\bin\x64`
4. OK out, then **close and reopen** PowerShell (or Cursor’s terminal).

After that, `Rscript` works in any folder. For the version, use `Rscript --version` (in PowerShell, `R` is reserved for history).

## Run your R script right now (no setup)

From the repo root:

```powershell
& "C:\Users\amp388\AppData\Local\Programs\R\R-4.5.2\bin\x64\Rscript.exe" 01_query_api\02_example.R
```

From `01_query_api`:

```powershell
& "C:\Users\amp388\AppData\Local\Programs\R\R-4.5.2\bin\x64\Rscript.exe" 02_example.R
```
