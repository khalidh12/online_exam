module EcetHelper
	def multi_paginate(models, page, per_page)

      WillPaginate::Collection.create(page, per_page) do |pager|

        models.keep_if {|m| m.count>0 }
        # set total entries
        pager.total_entries = 0
        counts = []
        offsets = []
        limits = []
        for model in models
              pager.total_entries += model.count
              counts << model.count
              offset = pager.offset-offsets.sum
              offset = offset>model.count ? model.count : offset 
              offsets << (offset<0 ? 0 : offset)
        end

        result = []
        for i in 0...models.count
              limits << pager.per_page-result.length
              result += models[i].limit(pager.per_page-result.length).offset(offsets[i]).to_a
        end

        puts '-'*100
        print counts,"\n",offsets,"\n",limits,"\n"
        print "pages offset:", pager.offset,"\n"
        puts '-'*100

        pager.replace(result)
      end

    end
end
