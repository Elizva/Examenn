# Usa una imagen base oficial de Python
FROM python:3.9-slim

# Define el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos locales (código fuente y requirements.txt) al contenedor
COPY . /app

# Instala las dependencias de la aplicación
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto que la aplicación Flask usará (por defecto 5000)
EXPOSE 5000

# Define el comando que se ejecutará para iniciar la aplicación Flask
CMD ["python", "app.py"]
