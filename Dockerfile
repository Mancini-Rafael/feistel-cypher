FROM ruby:2.6.5

# Copy contents of the current directory to the /app directory in the container
COPY . /app

# Set the working directory to /app
WORKDIR /app

# Install the required gems
RUN gem install --file Gemfile

# Trigger entrypoint, default to running the app
ENTRYPOINT [ "./docker-entrypoint.sh" ]

CMD ["ruby", "run.rb"]