module MarkupCalculator
	# calculate the total cost for the job
	def self.calculate(base_price, labour_effort, markup)
      	base_amount = base_markup(base_price)
      	labour_price = labour_markup(base_amount, labour_effort)
      	material_wise_price = material_markup(base_amount, markup)
        total_amount =  base_amount + labour_price + material_wise_price
        total_amount.round(2)
	end

	#calculate the basic markup imposed on all jobs
	def self.base_markup(base_price)
		(0.05 * base_price) + base_price
	end

	#calculate the markup for the labour effort needed for the job
	def self.labour_markup(base_amount, labour_effort)
		(0.012 * labour_effort) * base_amount
	end

	#calculate the markup based on the type of materials involved
	def self.material_markup(base_amount, markup)
		case markup
		when 'pharmaceuticals', 'drugs'
            0.075 * base_amount
		when 'food'
            0.13 * base_amount
		when 'electronics'
            0.02 * base_amount
        else
            0
        end
	end
end