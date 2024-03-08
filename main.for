       SUBROUTINE DFLUX(FLUX,SOL,KSTEP,KINC,TIME,NOEL,NPT,COORDS,
     1    JLTYP,TEMP,PRESS,SNAME)
          include 'aba_param.inc'
          include 'param.inc'
          character*80 CMNAME
          DIMENSION FLUX(2), TIME(2), COORDS(3)
!		  DOUBLE PRECISION TEMP
		  
		  double precision CURENT_FLUX
		  COMMON /PASS_FLUX/ CURENT_FLUX
	      JLTYP  = 1

!	      FLUX(1) =  microtraps_flux(SOL, TIME(1))
		
! 	      if (noel .eq. 1) then
!           open(16,file="D:\work\spring\Hydrogen_diffusion\debug.txt")
!           write(16,*) "main start"
!           write(16,*) CURENT_FLUX
!          end if
          FLUX(1) = CURENT_FLUX
!		  FLUX(1) = 0
	  return
	  end



! ========== Functions=========================================================================
!      function microtraps(Conc,C_mu_prev, t, dt) result(C_mu_next)
!          include 'aba_param.inc'
!		  A = k_mu*Conc + p_mu
!		  B = k_mu*Conc*bet
!		  E = k_mu*Conc*alf
!		  C = exp(A*t0)*(C_mu_t0-B*t0/A + B/A/A -E/A)
!		  
!          microflux = -A*C*exp(-A*t) + B/A
!          return
!      end function

!      function macrotraps_flux(FASES,FASEF,CUR_T) result(macroflux)
!          include 'aba_param.inc'
!          real :: FASES,FASEF
!		  
!          fase = (CUR_T - FASES) / (FASEF-FASES)
!          return
!      end function

