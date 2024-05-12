FROM mcr.microsoft.com/dotnet/sdk:8.0 AS builder
WORKDIR /tmp/build

ARG PROJECT

COPY ./src/${PROJECT}/*.csproj .
RUN dotnet restore

COPY ./src/${PROJECT} .
RUN dotnet publish -c Release -o output

# ----------------------------------------
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app

ARG PROJECT
ENV PROJECT=$PROJECT

RUN adduser --uid 1000 \
    --no-create-home \
    --disabled-password --gecos "" \
    nonroot
RUN chown -R nonroot /app

COPY --from=builder /tmp/build/output .

USER nonroot

CMD dotnet ${PROJECT}.dll
