class EbayDeal::Deal
    attr_accessor :name ,:url,:price,:availability
     def self.today
         
    self.scrape_items
    end

    def self.scrape_items
       items=[]
       items << self.scrape_ebay
       items << self.scrape_ebay_1
       items << self.scrape_ebay_2
       items << self.scrape_ebay_3
       items << self.scrape_ebay_4
       items << self.scrape_ebay_5
       items << self.scrape_ebay_6
       #items << self.scrape_ebay_7
       items
    end


    def self.scrape_ebay
        doc=Nokogiri::HTML(open("https://www.ebay.com/itm/For-Samsung-Note-3-4-5-8-9-Cute-3D-Cartoon-Hot-New-Soft-Silicon-Phone-Case-Cover/112788069425?var=413226401875&_trkparms=%26rpp_cid%3D5accd9d22806d0082be7117f%26rpp_icid%3D5accbceee1ab7f494b9cdb65"))
        item=self.new
        item.name= doc.search("h1.it-ttl").text
        item.price= doc.search("span#prcIsum.notranslate").inner_text
        item.url=doc.search("#e2").css("a").first.attr("href")
        item.availability=true
        item
    end
    
    def self.scrape_ebay_1
        doc=Nokogiri::HTML(open("https://www.ebay.com/itm/Clear-Soft-Silicone-TPU-Phone-Case-Cover-For-iPhone-7-8-Plus-XS-MAX-XR-Accessory/192542735939?var=492644195861&_trkparms=%26rpp_cid%3D5accd9d22806d0082be7117f%26rpp_icid%3D5accbceee1ab7f494b9cdb65"))
        item=self.new
        item.name= doc.search("h1.it-ttl").text
        item.price= doc.search("span#prcIsum.notranslate").inner_text
        item.url=doc.search("#e2").css("a").first.attr("href")
        item.availability=true
        item
    end
    def self.scrape_ebay_2
        doc=Nokogiri::HTML(open("https://www.ebay.com/itm/Waterproof-Underwater-Phone-Pouch-Bag-Case-Cover-For-Iphone-Samsung-Cell-Phone/362352896509?var=631548876243&_trkparms=%26rpp_cid%3D5accd9d22806d0082be7117f%26rpp_icid%3D5accbceee1ab7f494b9cdb65"))
        item=self.new
        item.name= doc.search("h1.it-ttl").text
        item.price= doc.search("span#prcIsum.notranslate").inner_text
        item.url=doc.search("#e2").css("a").first.attr("href")
        item.availability=true
        item
    end
    def self.scrape_ebay_3
        doc=Nokogiri::HTML(open("https://www.ebay.com/itm/Anti-Gravity-Nano-Suction-Tech-Magic-Selfie-Phone-Case-For-iPhone-7-8-6S-Plus/331964603242?var=541015271287&_trkparms=%26rpp_cid%3D5accd9d22806d0082be7117f%26rpp_icid%3D5accbceee1ab7f494b9cdb65"))
        item=self.new
        item.name= doc.search("h1.it-ttl").text
        item.price= doc.search("span#prcIsum.notranslate").inner_text
        item.url=doc.search("#e2").css("a").first.attr("href")
        item.availability=true
        item
    end

    def self.scrape_ebay_4
        doc=Nokogiri::HTML(open("https://www.ebay.com/itm/16x52-Zoom-Hiking-Monocular-Telescope-Lens-Camera-HD-Scope-Hunting-Phone-Holder/362484840261?_trkparms=aid%3D333200%26algo%3DCOMP.MBE%26ao%3D1%26asc%3D58206%26meid%3D352d65a787704877b911f0cc2d170332%26pid%3D100008%26rk%3D4%26rkt%3D12%26sd%3D331964603242%26itm%3D362484840261&_trksid=p2047675.c100008.m2219"))
        item=self.new
        item.name= doc.search("h1.it-ttl").text
        item.price= doc.search("span#prcIsum.notranslate").inner_text
        item.url=doc.search("#e2").css("a").first.attr("href")
        item.availability=true
        item
    end

    def self.scrape_ebay_5
        doc=Nokogiri::HTML(open("https://www.ebay.com/itm/Original-Genuine-Case-Silicone-Case-Cover-for-Apple-iphone-X-6-6s-7-8-Plus-Case/302993171821?_trkparms=aid%3D333200%26algo%3DCOMP.MBE%26ao%3D1%26asc%3D58206%26meid%3D352d65a787704877b911f0cc2d170332%26pid%3D100008%26rk%3D5%26rkt%3D12%26sd%3D331964603242%26itm%3D302993171821&_trksid=p2047675.c100008.m2219"))
        item=self.new
        item.name= doc.search("h1.it-ttl").text
        item.price= doc.search("span#prcIsum.notranslate").inner_text
        item.url=doc.search("#e2").css("a").first.attr("href")
        item.availability=true
        item
    end

    

    def self.scrape_ebay_6
        doc=Nokogiri::HTML(open("https://www.ebay.com/itm/3D-Cartoon-Cute-Soft-Silicone-Phone-Case-Cover-For-iPhone-iPod-Touch-5-6-Gen/112855889401?var=413271918177&_trkparms=%26rpp_cid%3D5accd9d22806d0082be7117f%26rpp_icid%3D5accbceee1ab7f494b9cdb65"))
        item=self.new
        item.name= doc.search("h1.it-ttl").text
        item.price= doc.search("span#prcIsum.notranslate").inner_text
        item.url=doc.search("#e2").css("a").first.attr("href")
        item.availability=true
        item
    end
   
 end