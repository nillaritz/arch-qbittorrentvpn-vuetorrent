FROM alpine/git AS git
RUN git clone --single-branch --branch latest-release https://github.com/VueTorrent/VueTorrent.git /vuetorrent 

FROM binhex/arch-qbittorrentvpn:latest
COPY --from=git /vuetorrent /vuetorrent
