FROM bitnami/dotnet-sdk:7-debian-11
RUN apt update && apt install wget git -y
RUN git clone https://github.com/maheshryali123/poojastores.git
WORKDIR /poojastores/ppojastores/trunk/PoojaStores
RUN dotnet build
EXPOSE 5000
CMD [ "dotnet","run","--urls","http://0.0.0.0:5000" ]
