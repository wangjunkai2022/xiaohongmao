package com.qennnsad.aknkaksd.data.bean.games;

import java.util.List;

/* loaded from: classes3.dex */
public class GameConfigBean {
    private int game_id;
    private List<GameNotifyBean> game_notify;
    private boolean profit_notify;

    /* loaded from: classes3.dex */
    public static class GameNotifyBean {
        private double amount;
        private int flag;

        public double getAmount() {
            return this.amount;
        }

        public int getFlag() {
            return this.flag;
        }

        public void setAmount(double d4) {
            this.amount = d4;
        }

        public void setFlag(int i4) {
            this.flag = i4;
        }
    }

    public int getGame_id() {
        return this.game_id;
    }

    public List<GameNotifyBean> getGame_notify() {
        return this.game_notify;
    }

    public boolean isProfit_notify() {
        return this.profit_notify;
    }

    public void setGame_id(int i4) {
        this.game_id = i4;
    }

    public void setGame_notify(List<GameNotifyBean> list) {
        this.game_notify = list;
    }

    public void setProfit_notify(boolean z9) {
        this.profit_notify = z9;
    }
}
