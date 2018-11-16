FROM python
WORKDIR /home/app
COPY . .
RUN pip install pipenv && \
    pipenv install --system
EXPOSE 8000
ENTRYPOINT ["python3", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
