FROM ruby:2.1
MAINTAINER Deshi Xiao<xiaods@gmail.com>

RUN apt-get update \
&& apt-get install -y --no-install-recommends nodejs \
&& apt-get clean \
&& gem sources --remove https://rubygems.org/ \
&& gem sources -a https://ruby.taobao.org/ \
&& gem install --no-ri --no-rdoc github-pages

WORKDIR /app
COPY . /app/
EXPOSE 4000

ENTRYPOINT ["jekyll", "serve", "--watch", "--drafts", "--baseurl", ""]
