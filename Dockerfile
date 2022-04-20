FROM qmcgaw/latexdevcontainer

RUN apt update && apt install -y lmodern && \
    tlmgr repository remove http://ctan.math.utah.edu/ctan/tex-archive/systems/texlive/tlnet && \
    tlmgr repository add https://ftp.tu-chemnitz.de/pub/tug/historic/systems/texlive/2021/tlnet-final/ && \
    tlmgr update --self && \
    tlmgr install collection-latexextra collection-langgerman eurosym && \
    texhash