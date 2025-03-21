program  prog1
  use InputOutput
  use MolecularInformation
  use DATA
  implicit none 
  character(len=100) :: FilePath
  type(Atom), pointer :: AtomList(:)
  type(Bond), pointer :: TempBondlist(:), FinalBondList(:)
  type(Triple), pointer :: TripleList(:)
  type(Quadruple), pointer :: Quadlist(:)
  type(StretchParameter) :: Stretch(2)
  type(AngleParameter) :: Bending(3)
  type(TorsionParameter) :: Torsional(3)
  type(VanDerWaals) :: VDW(2)
  type(ElectroStatic) :: Electrostatics(2)
  type(Connectivity) :: Conn
  integer :: nTriples
  
  FilePath = 'c4h10.xyz'

  call ReadAtoms(FilePath, AtomList)
  call InitiateParams(Stretch, Bending, Torsional, VDW, ElectroStatics)
  call FindBonds(AtomList, Stretch, TempBondList, FinalBondList)
  call BuildConnectivity(14, FinalBondList, Conn)
  call GetTriples(conn, TripleList, nTriples)
  ! call FindTriples(FinalBondList, TripleList)
  ! call FindQuads(TripleList, QuadList)
  print *, TripleList(1)
  
end program 
