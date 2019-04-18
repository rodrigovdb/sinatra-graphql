# frozen_string_literal: true

Dir.glob(Pathname(__FILE__).sub_ext('/*.rb'), &method(:require))
