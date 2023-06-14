require 'rqrcode'
require 'base64'

class GuideDetailsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def edit
    @guide = Guide.find(params[:id])
  end

  def guide_map
    addresses = fetchAddresses

    # 住所を結合してルート情報を作成
    route_info = addresses.join(', ')

    # QRコードの生成
    qr_code = RQRCode::QRCode.new(route_info)

    # QRコードのイメージを作成
    qr_code_image = qr_code.as_png(size: 300)

    # 画像をBase64エンコード
    encoded_image = Base64.encode64(qr_code_image.to_s)

    # レスポンスとしてBase64エンコードされたQRコード画像を送信
    render json: { qr_code_image: encoded_image }
  end

  def create
    # createアクションの処理
  end

  def index
    # indexアクションの処理
  end

  private

  def fetchAddresses
    # Ajaxを使用して住所データを取得する処理
    # 以下はGuideDetailモデルから住所データを取得する例です
    addresses = GuideDetail.pluck(:address)

    # 住所の配列を返す
    addresses
  end

  def guide_details_params
    params.require(:guide_detail).permit(:guide_id, :address, :display_order)
  end
end
