FROM rust:latest

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos necesarios de tu proyecto al directorio de trabajo en el contenedor
COPY . .

# Compila tu aplicación Rust (ajusta el nombre de tu archivo principal)
RUN cargo build --release

# Expón el puerto en el que tu API escuchará (ajusta según tu aplicación)
EXPOSE 8080

# Comando para ejecutar tu aplicación (ajusta según tu aplicación y el nombre del binario)
CMD cargo run