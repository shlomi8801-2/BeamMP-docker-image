FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install liblua5.3 liblua5.3-dev g++ -y 
# USER container
WORKDIR /home/container
COPY . .
# ENV AuthKey="dc1422ee-7a95-49f1-a0b5-f0726aee8de5"
# ENV Debug=false
# ENV Description="^lThis is a free server provided by VanishedServers! To get a server of your own, head over to ^nhttps://beam-mp.vanishedmc.com^r^l or join the discord server over at ^nhttps://discord.gg/jrKQmdDtGa^r^l!"
# ENV Map="/levels/gridmap_v2/info.json"
# ENV MaxCars=1
# ENV MaxPlayers=5
# ENV Name="^a^l⭐ BeamMP Server ⭐ ^f^l- ^b^l^nFree Beam-MP Server^r^b^l provided by ^e^nVanishedServers!"
# ENV Port=5004
# ENV Private=false
ENV ResourceFolder='Resources'
# RUN chmod +x ./BeamMPServer
CMD ["./BeamMPServer"]