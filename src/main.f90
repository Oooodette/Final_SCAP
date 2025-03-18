program  prog1
  use InputOutput
  use MolecularInformation

  implicit none 
  character(len=100) :: FilePath
  type(Atom), pointer :: AtomList(:)
  FilePath = 'c4h10.xyz'

  call ReadAtoms(FilePath, AtomList)

  print *, Atomlist(1)%type
end program 
