Spree::OptionValue.class_eval do

  has_attached_file :image,
    :styles        => { mini: '32x32>', normal: '128x128>' },
    :default_style => SolidusVariantOptions::VariantConfig[:option_value_default_style],
    :url           => SolidusVariantOptions::VariantConfig[:option_value_url],
    :path          => SolidusVariantOptions::VariantConfig[:option_value_path]
    
  validates_attachment_size :image, :less_than => 2.megabytes
  validates_attachment_content_type :image, :content_type => /\Aimage/    

  def has_image?
    image_file_name && !image_file_name.empty?
  end

  default_scope { order("#{quoted_table_name}.position") }
  scope :for_product, lambda { |product| select("DISTINCT #{table_name}.*").where("spree_option_values_variants.variant_id IN (?)", product.variant_ids).joins(:variants) }
end
