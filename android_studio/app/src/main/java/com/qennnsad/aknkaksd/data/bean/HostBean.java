package com.qennnsad.aknkaksd.data.bean;

import com.qennnsad.aknkaksd.data.repository.RetrofitApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ConfigBean.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J9\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/HostBean;", "", RetrofitApi.f47692a, "", "web", "static", "websocket", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getApi", "()Ljava/lang/String;", "setApi", "(Ljava/lang/String;)V", "getStatic", "setStatic", "getWeb", "setWeb", "getWebsocket", "setWebsocket", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HostBean {
    @h
    private String api;
    @h

    /* renamed from: static  reason: not valid java name */
    private String f6static;
    @h
    private String web;
    @h
    private String websocket;

    public HostBean(@h String str, @h String str2, @h String str3, @h String str4) {
        this.api = str;
        this.web = str2;
        this.f6static = str3;
        this.websocket = str4;
    }

    public static /* synthetic */ HostBean copy$default(HostBean hostBean, String str, String str2, String str3, String str4, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = hostBean.api;
        }
        if ((i4 & 2) != 0) {
            str2 = hostBean.web;
        }
        if ((i4 & 4) != 0) {
            str3 = hostBean.f6static;
        }
        if ((i4 & 8) != 0) {
            str4 = hostBean.websocket;
        }
        return hostBean.copy(str, str2, str3, str4);
    }

    @h
    public final String component1() {
        return this.api;
    }

    @h
    public final String component2() {
        return this.web;
    }

    @h
    public final String component3() {
        return this.f6static;
    }

    @h
    public final String component4() {
        return this.websocket;
    }

    @g
    public final HostBean copy(@h String str, @h String str2, @h String str3, @h String str4) {
        return new HostBean(str, str2, str3, str4);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HostBean) {
            HostBean hostBean = (HostBean) obj;
            return Intrinsics.areEqual(this.api, hostBean.api) && Intrinsics.areEqual(this.web, hostBean.web) && Intrinsics.areEqual(this.f6static, hostBean.f6static) && Intrinsics.areEqual(this.websocket, hostBean.websocket);
        }
        return false;
    }

    @h
    public final String getApi() {
        return this.api;
    }

    @h
    public final String getStatic() {
        return this.f6static;
    }

    @h
    public final String getWeb() {
        return this.web;
    }

    @h
    public final String getWebsocket() {
        return this.websocket;
    }

    public int hashCode() {
        String str = this.api;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.web;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f6static;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.websocket;
        return hashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final void setApi(@h String str) {
        this.api = str;
    }

    public final void setStatic(@h String str) {
        this.f6static = str;
    }

    public final void setWeb(@h String str) {
        this.web = str;
    }

    public final void setWebsocket(@h String str) {
        this.websocket = str;
    }

    @g
    public String toString() {
        return "HostBean(api=" + this.api + ", web=" + this.web + ", static=" + this.f6static + ", websocket=" + this.websocket + ')';
    }
}
