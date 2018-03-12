Rails.application.routes.draw do
  get 'home/index'
  get 'home/marketplacedeactivesubpartner'

  get 'home/subscriberselect'
  get 'home/proapi'
  get 'home/apiplus'
  get 'home/informationsmsservice'

  get 'home/selectsubscriberdetail'
  get 'home/deactivatesubscriber'
  get 'home/ccproxysaleform'
  get 'home/ccproxysale3dform'
  get 'home/wdticketsale3durlproxy'
  get 'home/wdticketsaleurlproxy'
  get 'home/marketplaceaddsubpartner'
  get 'home/marketplaceupdatesubpartner'
  get 'home/marketplacesale3dsec'
  get 'home/marketplacempsale'
  get 'home/marketplacereleasepayment'
  get 'home/transactionrequestorder'
  get 'home/transactionrequestbympay'
  get 'home/success'
  get 'home/fail'

  post 'home/index'  
  post 'home/subscriberselect'  
  post 'home/proapi'  
  post 'home/apiplus'  
  post 'home/subscriberselect'  
  post 'home/selectsubscriberdetail'  
  post 'home/deactivatesubscriber'  
  post 'home/ccproxysaleform'
  post 'home/ccproxysale3dform'
  post 'home/wdticketsaleurlproxy'
  post 'home/wdticketsale3durlproxy'
  post 'home/marketplaceaddsubpartner'
  post 'home/marketplaceupdatesubpartner'
  post 'home/marketplacedeactivesubpartner'
  post 'home/marketplacesale3dsec'
  post 'home/marketplacempsale'
  post 'home/marketplacereleasepayment'
  post 'home/informationsmsservice'

  post 'home/transactionrequestorder'
  post 'home/transactionrequestbympay'


  
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
