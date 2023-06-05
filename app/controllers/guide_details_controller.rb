require 'rqrcode'

class GuideDetailsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def edit
    @guide = Guide.find(params[:id])
  end

  def guide_map
    route_data = params[:routeData]

    # QRコードのデータを生成
    qr_code_data = route_data.to_json

    # QRコードを生成
    qr_code = RQRCode::QRCode.new(qr_code_data)

    # 生成したQRコードを画像として出力
    qr_code_image = qr_code.as_png(size: 300)

    # 画像を一時ファイルとして保存
    qr_code_file = Tempfile.new(['qrcode', '.png'])
    qr_code_file.binmode
    qr_code_file.write(qr_code_image.to_s)
    qr_code_file.rewind

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

  def guide_details_params
    params.require(:guide_detail).permit(:guide_id, :address, :display_order)
  end
end
