package com.qennnsad.aknkaksd.data.bean.webgame;

/* loaded from: classes3.dex */
public class GameListBean {
    private String icon_url;
    private int id;
    private boolean isSel = false;
    private String name;

    public String getIcon_url() {
        return this.icon_url;
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public boolean isSel() {
        return this.isSel;
    }

    public void setIcon_url(String str) {
        this.icon_url = str;
    }

    public void setId(int i4) {
        this.id = i4;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSel(boolean z9) {
        this.isSel = z9;
    }
}
