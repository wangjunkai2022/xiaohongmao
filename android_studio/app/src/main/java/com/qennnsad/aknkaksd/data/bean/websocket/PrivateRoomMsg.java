package com.qennnsad.aknkaksd.data.bean.websocket;

/* loaded from: classes3.dex */
public class PrivateRoomMsg {
    private DataBean data;
    private String type;

    /* loaded from: classes3.dex */
    public static class DataBean {
        private int create_time;
        private int money;
        private int point;
        private int update_time;

        public int getCreate_time() {
            return this.create_time;
        }

        public int getMoney() {
            return this.money;
        }

        public int getPoint() {
            return this.point;
        }

        public int getUpdate_time() {
            return this.update_time;
        }

        public void setCreate_time(int i4) {
            this.create_time = i4;
        }

        public void setMoney(int i4) {
            this.money = i4;
        }

        public void setPoint(int i4) {
            this.point = i4;
        }

        public void setUpdate_time(int i4) {
            this.update_time = i4;
        }

        public String toString() {
            return "DataBean{point=" + this.point + ", money=" + this.money + ", create_time=" + this.create_time + ", update_time=" + this.update_time + '}';
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public String getType() {
        return this.type;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "PrivateRoomMsg{type='" + this.type + "', data=" + this.data + '}';
    }
}
