if did_filetype()
    finish
endif
if getline(1) =~# '^#!.*/python$'
    setfiletype python
endif
