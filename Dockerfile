# start with rocker/verse version 4.0.3, due to the issue
# https://github.com/rocker-org/rocker-versioned2/issues/139
FROM rocker/verse:4.0.3

# add Yihui's LaTeX packages
COPY tlmgr-yihui.sh .
RUN bash tlmgr-yihui.sh

# add additional LaTeX packages
COPY tlmgr-extra.sh .
RUN bash tlmgr-extra.sh