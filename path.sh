export KALDI_ROOT=$HOME/kaldi
export PATH=$PWD/utils:$KALDI_ROOT/src/bin:$KALDI_ROOT/tools/openfst/bin:$KALDI_ROOT/src/fstbin:$KALDI_ROOT/src/gmmbin:$KALDI_ROOT/src/featbin:$KALDI_ROOT/src/lm:$KALDI_ROOT/src/sgmmbin:$KALDI_ROOT/src/sgmm2bin:$KALDI_ROOT/src/fgmmbin:$KALDI_ROOT/src/latbin:$KALDI_ROOT/src/nnetbin:$KALDI_ROOT/src/nnet2bin:$KALDI_ROOT/src/online2bin:$KALDI_ROOT/src/ivectorbin:$KALDI_ROOT/src/lmbin:$KALDI_ROOT/src/chainbin:$KALDI_ROOT/src/nnet3bin:$KALDI_ROOT/src/rnnlmbin:$PWD:$PATH:$KALDI_ROOT/tools/sph2pipe_v2.5
export PATH=$KALDI_ROOT/tools/ngram-1.3.10/src/bin:$PATH
export LD_LIBRARY_PATH=$KALDI_ROOT/tools/openfst/lib/fst/
export LC_ALL=C
export PATH=$KALDI_ROOT/tools/python:${PATH}
export LIBLBFGS=$KALDI_ROOT/tools/liblbfgs-1.10
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH:-}:${LIBLBFGS}/lib/.libs
export SRILM=$KALDI_ROOT/tools/srilm
export PATH=${PATH}:${SRILM}/bin:${SRILM}/bin/i686-m64