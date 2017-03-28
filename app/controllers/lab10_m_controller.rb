require 'nokogiri'
require 'open-uri'

class Lab10MController < ApplicationController
  def input
  end

  def output
    @xml = Nokogiri::XML(open('http://127.0.0.1:3000/lab10/server.xml?n=' + params[:n].to_s))
    params[:to_xml] ? (render xml: @xml) : (@res = Nokogiri::XSLT(File.read('template.xslt')).transform(@xml))
  end
end
