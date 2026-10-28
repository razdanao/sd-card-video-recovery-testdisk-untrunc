@echo off
REM Run this inside the folder that contains untrunc.exe, good.mov
REM (a healthy clip from the SAME camera/settings) and the *_mdat.mov files.
REM Outputs are saved as <name>_mdat.mov_fixed-dyn.mov and are not re-processed
REM because they do not match the *_mdat.mov pattern.
for %%f in (*_mdat.mov) do (
  untrunc.exe ".\good.mov" "%%f"
)
pause
