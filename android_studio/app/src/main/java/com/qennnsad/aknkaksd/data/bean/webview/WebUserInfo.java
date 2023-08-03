package com.qennnsad.aknkaksd.data.bean.webview;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import m8.g;
import m8.h;

/* compiled from: WebUserInfo.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/webview/WebUserInfo;", "", "isIm", "", "id", "(II)V", "getId", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class WebUserInfo {
    private final int id;
    @SerializedName("is_im")
    private final int isIm;

    public WebUserInfo(int i4, int i10) {
        this.isIm = i4;
        this.id = i10;
    }

    public static /* synthetic */ WebUserInfo copy$default(WebUserInfo webUserInfo, int i4, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = webUserInfo.isIm;
        }
        if ((i11 & 2) != 0) {
            i10 = webUserInfo.id;
        }
        return webUserInfo.copy(i4, i10);
    }

    public final int component1() {
        return this.isIm;
    }

    public final int component2() {
        return this.id;
    }

    @g
    public final WebUserInfo copy(int i4, int i10) {
        return new WebUserInfo(i4, i10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WebUserInfo) {
            WebUserInfo webUserInfo = (WebUserInfo) obj;
            return this.isIm == webUserInfo.isIm && this.id == webUserInfo.id;
        }
        return false;
    }

    public final int getId() {
        return this.id;
    }

    public int hashCode() {
        return (this.isIm * 31) + this.id;
    }

    public final int isIm() {
        return this.isIm;
    }

    @g
    public String toString() {
        return "WebUserInfo(isIm=" + this.isIm + ", id=" + this.id + ')';
    }
}
