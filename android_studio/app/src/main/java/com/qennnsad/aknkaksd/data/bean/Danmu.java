package com.qennnsad.aknkaksd.data.bean;

import android.graphics.Bitmap;

/* loaded from: classes3.dex */
public class Danmu {
    public Bitmap avatarUrl;
    public String content;
    public int effectid;
    public long id;
    public String type;
    public int userId;

    public Danmu(long j4, int i4, String str, String str2) {
        this.id = j4;
        this.userId = i4;
        this.type = str;
        this.content = str2;
    }

    public void setAvatarUrl(Bitmap bitmap) {
        this.avatarUrl = bitmap;
    }

    public Danmu(long j4, int i4, String str, String str2, int i10) {
        this.id = j4;
        this.userId = i4;
        this.type = str;
        this.content = str2;
        this.effectid = i10;
    }

    public Danmu() {
    }
}
