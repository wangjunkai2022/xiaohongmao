package com.qennnsad.aknkaksd.data.bean;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import p.a;

/* compiled from: ConfigBean.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/Yunxin;", "", a.f93054h, "", "url", "(Ljava/lang/String;Ljava/lang/String;)V", "getAppkey", "()Ljava/lang/String;", "getUrl", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Yunxin {
    @h
    private final String appkey;
    @h
    private final String url;

    public Yunxin(@h String str, @h String str2) {
        this.appkey = str;
        this.url = str2;
    }

    public static /* synthetic */ Yunxin copy$default(Yunxin yunxin, String str, String str2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = yunxin.appkey;
        }
        if ((i4 & 2) != 0) {
            str2 = yunxin.url;
        }
        return yunxin.copy(str, str2);
    }

    @h
    public final String component1() {
        return this.appkey;
    }

    @h
    public final String component2() {
        return this.url;
    }

    @g
    public final Yunxin copy(@h String str, @h String str2) {
        return new Yunxin(str, str2);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Yunxin) {
            Yunxin yunxin = (Yunxin) obj;
            return Intrinsics.areEqual(this.appkey, yunxin.appkey) && Intrinsics.areEqual(this.url, yunxin.url);
        }
        return false;
    }

    @h
    public final String getAppkey() {
        return this.appkey;
    }

    @h
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.appkey;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.url;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @g
    public String toString() {
        return "Yunxin(appkey=" + this.appkey + ", url=" + this.url + ')';
    }
}
