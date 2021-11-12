FROM rocker/verse:4.0.3
# https://github.com/rocker-org/rocker-versioned2/issues/139
COPY tlmgr-yihui.sh .
RUN bash tlmgr-yihui.sh
COPY tlmgr-stat.sh .
RUN bash tlmgr-stat.sh
RUN R -e "install.packages('styler')"
RUN R -e "install.packages('cowplot')"
COPY tlmgr-extra.sh .
RUN bash tlmgr-extra.sh
RUN R -e "install.packages('GGally')"
