# encoding: utf-8
class PartnersController < ApplicationController
  def index
    @partners = Partner.order('name')
  end

end
