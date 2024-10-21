from flask import Blueprint, request,jsonify
from model.DB import DB

select_person_information = Blueprint('select_person_info', __name__)

# Flask 路由
@select_person_information.route('/info', methods=['POST'])
def get_person_information():
    try:
        # 從請求中獲取 'feature'
        data = request.values.get('feature')
        print(data)
        data = data.split(',')
        # 構建 SQL 查詢中的 feature 列表
        data_text = "(" 
        for i in range(len(data)):
            if(i == len(data)-1): data_text += f"'{data[i]}' )"
            else:  data_text += f"'{data[i]}' ,"
        print(data_text)
        # 構建 SQL 查詢
        sql = f"""
        SELECT p.id, p.inCamera, p.Picture, 
               GROUP_CONCAT(concat(f2.color, ' ', f2.feature)) as feature,
               p.startTime, p.endTime
        FROM personinformation p
        INNER JOIN (
            SELECT
                f.personId,
                SUM(
                    CASE
                    WHEN CONCAT(f.color, ' ', f.feature) IN {data_text} THEN 1
                    ELSE 0
                    END
                ) AS calculatedSum
            FROM feature f
            WHERE CONCAT(f.color, ' ', f.feature) IN {data_text}
            GROUP BY f.personId
        ) f
        ON p.id = f.personId
        INNER JOIN feature f2
        ON p.id = f2.personId
        GROUP BY p.id
        ORDER BY f.calculatedSum DESC, p.endTime DESC;
        """

        # 執行 SQL 查詢
        result = DB(sql,"查詢")
        # 分割 feature 字串
        # 返回結果
        return jsonify({
            "status" : 200,
            "message": "查詢成功",
            "result": result,
        })
    
    except Exception as e:
        # 處理錯誤
        return jsonify({
            "status" : 404,
            "message": "查詢失敗",
            "error": str(e),
        })
