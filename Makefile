CFLAGS=-I/opt/EmotivResearch_2.0.0.20/include
LDDIRS=-L/opt/EmotivResearch_2.0.0.20/lib -L/opt/intel/composer_xe_2015.0.090/compiler/lib/intel64 -L/opt/intel/composer_xe_2015.0.090/mkl/lib/intel64
#-lboost_md5 <- not found for some reason
LDFLAGS= -lcryptopp_64 -ludev -lmkl_rt -liomp5 -l:libboost_serialization.so.1.51.0  -l:libboost_system.so.1.51.0 -l:libboost_regex.so.1.51.0 -l:libboost_md5.so.1.51.0 -l:libboost_filesystem.so.1.51.0 -lpng12 -lQtCore -lQtGui -ledk_utils_linux -ledk 


# need to put env  LD_LIBRARY_PATH=/opt/EmotivResearch_2.0.0.20/lib somehow here
test-bin:
	g++ -g $(CFLAGS) -o $@ main.c $(LDDIRS) $(LDFLAGS)

all: test-bin

clean:
	rm -f test-bin
