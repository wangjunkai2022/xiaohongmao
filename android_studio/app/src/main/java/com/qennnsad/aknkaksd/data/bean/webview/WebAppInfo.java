package com.qennnsad.aknkaksd.data.bean.webview;

import com.qennnsad.aknkaksd.e;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: WebAppInfo.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J;\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/webview/WebAppInfo;", "", "plat", "", "ver", "issued", "lob", "", "rid", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V", "getIssued", "()Ljava/lang/String;", "getLob", "()I", "getPlat", "getRid", "getVer", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class WebAppInfo {
    @g
    private final String issued;
    private final int lob;
    @g
    private final String plat;
    private final int rid;
    @g
    private final String ver;

    public WebAppInfo(@g String plat, @g String ver, @g String issued, int i4, int i10) {
        Intrinsics.checkNotNullParameter(plat, "plat");
        Intrinsics.checkNotNullParameter(ver, "ver");
        Intrinsics.checkNotNullParameter(issued, "issued");
        this.plat = plat;
        this.ver = ver;
        this.issued = issued;
        this.lob = i4;
        this.rid = i10;
    }

    public static /* synthetic */ WebAppInfo copy$default(WebAppInfo webAppInfo, String str, String str2, String str3, int i4, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = webAppInfo.plat;
        }
        if ((i11 & 2) != 0) {
            str2 = webAppInfo.ver;
        }
        String str4 = str2;
        if ((i11 & 4) != 0) {
            str3 = webAppInfo.issued;
        }
        String str5 = str3;
        if ((i11 & 8) != 0) {
            i4 = webAppInfo.lob;
        }
        int i12 = i4;
        if ((i11 & 16) != 0) {
            i10 = webAppInfo.rid;
        }
        return webAppInfo.copy(str, str4, str5, i12, i10);
    }

    @g
    public final String component1() {
        return this.plat;
    }

    @g
    public final String component2() {
        return this.ver;
    }

    @g
    public final String component3() {
        return this.issued;
    }

    public final int component4() {
        return this.lob;
    }

    public final int component5() {
        return this.rid;
    }

    @g
    public final WebAppInfo copy(@g String plat, @g String ver, @g String issued, int i4, int i10) {
        Intrinsics.checkNotNullParameter(plat, "plat");
        Intrinsics.checkNotNullParameter(ver, "ver");
        Intrinsics.checkNotNullParameter(issued, "issued");
        return new WebAppInfo(plat, ver, issued, i4, i10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WebAppInfo) {
            WebAppInfo webAppInfo = (WebAppInfo) obj;
            return Intrinsics.areEqual(this.plat, webAppInfo.plat) && Intrinsics.areEqual(this.ver, webAppInfo.ver) && Intrinsics.areEqual(this.issued, webAppInfo.issued) && this.lob == webAppInfo.lob && this.rid == webAppInfo.rid;
        }
        return false;
    }

    @g
    public final String getIssued() {
        return this.issued;
    }

    public final int getLob() {
        return this.lob;
    }

    @g
    public final String getPlat() {
        return this.plat;
    }

    public final int getRid() {
        return this.rid;
    }

    @g
    public final String getVer() {
        return this.ver;
    }

    public int hashCode() {
        return (((((((this.plat.hashCode() * 31) + this.ver.hashCode()) * 31) + this.issued.hashCode()) * 31) + this.lob) * 31) + this.rid;
    }

    @g
    public String toString() {
        return "WebAppInfo(plat=" + this.plat + ", ver=" + this.ver + ", issued=" + this.issued + ", lob=" + this.lob + ", rid=" + this.rid + ')';
    }

    public /* synthetic */ WebAppInfo(String str, String str2, String str3, int i4, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "android" : str, (i11 & 2) != 0 ? e.f48514f : str2, (i11 & 4) != 0 ? e.f48531w : str3, i4, (i11 & 16) != 0 ? 1 : i10);
    }
}
