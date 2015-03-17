Spree::Product.class_eval do
  def disable
    update_attributes({ enabled: false })
  end

  def enable
    update_attributes({ enabled: true })
  end

  def self.active(currency = nil)
    not_deleted.enabled.available(nil, currency)
  end

  def self.enabled
    where(enabled: true)
  end

  search_scopes << :enabled
  
end