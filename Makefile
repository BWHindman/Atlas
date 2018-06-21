### NEED CFITSIO, FFTW, MKL

# Modify the following block as necessary to point to the proper libraries:

######################### BEGIN BLOCK

### LIBRARIES
FITSLOC=/projects/feathern/software/cfitsio/3.4.5
#FITSLOC=/home8/begr7169/SOFTWARE/cfitsio
FITSLIB=$(FITSLOC)/lib
FITSINC=$(FITSLOC)/include

FFTWLOC=/shared/fftw-3.2.1
FFTWLIB=$(FFTWLOC)/lib
FFTWINC=$(FFTWLOC)/include
FFTWINC=$(CURC_MKL_INC)/fftw

MKL = -L/central/intel/mkl/lib/em64t -lmkl_intel_lp64 -lmkl_intel_thread -lmkl_core -liomp5 -lpthread
MKL = -L$(MKLROOT)/lib/intel64 -lmkl_intel_lp64 -lmkl_intel_thread -lmkl_core -liomp5 -lpthread -lm -ldl
#MKL = -mkl
FFTW = -I/shared/fftw/include -L/shared/fftw/lib -lfftw3
FFTW = -I$(CURC_MKL_INC)/fftw

CFITSIO = -L/shared/cfitsio-3.24/lib -lcfitsio 
CFITSIO = -L$(FITSLIB) -lcfitsio
# ALL C LIBRARIES
CLIBS = $(MKL) $(CFITSIO) $(FFTW) -lm 
# ALL FORTRAN LIBRARIES
FLIBS = -I$(FFTWINC) -L$(FFTWLIB) -lfftw3 -L$(FITSLIB) -lcfitsio -I$(FITSINC) $(FLAGS) -I/home8/begr7169/SOFTWARE/openmpi-1.6.5/include -L/home8/begr7169/SOFTWARE/openmpi-1.6.5/lib
FLIBS = -I$(FFTWINC) $(CFITSIO) -I$(FITSINC) $(FLAGS) 

######################### END BLOCK



# FORTRAN COMPILE FLAGS
FFLAGS = -O2 -xCORE-AVX2 -ip -ipo -g -CB -free -qopenmp -I.
# C COMPILE FLAGS
CFLAGS = -O2 -xCORE-AVX2 -ip -ipo -g -I. -I$(FITSINC) -I$(CURC_MKL_INC)
# CROSS-COMPILE FLAGS
ALLFLAGS = -O2 -ip -ipo -qopenmp

# FORTRAN COMPILER
#F90 = /home8/begr7169/SOFTWARE/openmpi-1.6.5/bin/mpif90
F90 = mpif90
F90 = mpiifort
# C COMPILER
ICC = icc

# name of the final binary
EXECUTABLE = atlas

FOBJECTS = ParseInput.o \
		  Communication_Library.o \
		  File_Management.o \
		  Interpolation.o \
		  Timing.o \
		  Fit.o \
		  Pspec.o \
		  Track.o \
		  Grid.o \
		  Main.o

COBJECTS = fit.o \
		  io.o \
		  function.o \
		  errbars.o \
		  ridge.o \
		  mpfit.o \
		  mrf_fit.o \
		  cart_to_polar.o \
		  parse_input.o \
		  fit_wrapper.o

# compile fortran and C parts together
$(EXECUTABLE) : $(FOBJECTS) $(COBJECTS)
	$(F90) $(ALLFLAGS) -o $(EXECUTABLE) $(FOBJECTS) $(COBJECTS) $(FLIBS) $(CLIBS)


# compile C parts
$(COBJECTS) : *.c
	$(ICC) -c $(CFLAGS) *.c $(CLIBS)

# compile FORTRAN parts
#$(FOBJECTS) : *.F90
%.o : %.F90
	$(F90) -c $(FFLAGS) $< $(FLIBS) -o$@


clean : 
	rm -f $(COBJECTS) $(FOBJECTS) *.mod $(EXECUTABLE)

