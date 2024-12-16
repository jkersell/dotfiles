if did_filetype()
    finish
endif
if getline(1) =~# '^#!.*/python$'
    setfiletype python
elseif getline(1) =~# '^#!.*/bash$'
    setfiletype bash
endif
