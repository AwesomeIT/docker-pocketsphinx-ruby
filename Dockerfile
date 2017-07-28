FROM dstancu/alpine-heroku-cli

RUN wget https://cache.ruby-lang.org/pub/ruby/2.4/ruby-2.4.1.tar.bz2
RUN tar -xvf ruby-2.4.1.tar.bz2
RUN cd ruby-2.4.1 && ./configure && make install

RUN git clone https://github.com/cmusphinx/sphinxbase.git
RUN git clone https://github.com/cmusphinx/pocketsphinx.git
RUN cd sphinxbase && ./autogen.sh && make install
RUN cd pocketsphinx && ./autogen.sh && make install
