package com.qennnsad.aknkaksd.data.bean.websocket;

import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.domain.usecase.anchor.j;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: WsReduceFreePreviewRequest.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\nJ$\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/WsReduceFreePreviewRequest;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;", "method", "", j.f47980a, "", "(Ljava/lang/String;Ljava/lang/Integer;)V", "getMethod", "()Ljava/lang/String;", "getTime", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "copy", "(Ljava/lang/String;Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsReduceFreePreviewRequest;", "equals", "", "other", "", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class WsReduceFreePreviewRequest implements WsRequest {
    @SerializedName("_method_")
    @g
    private final String method;
    @h
    private final Integer time;

    public WsReduceFreePreviewRequest(@g String method, @h Integer num) {
        Intrinsics.checkNotNullParameter(method, "method");
        this.method = method;
        this.time = num;
    }

    public static /* synthetic */ WsReduceFreePreviewRequest copy$default(WsReduceFreePreviewRequest wsReduceFreePreviewRequest, String str, Integer num, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = wsReduceFreePreviewRequest.method;
        }
        if ((i4 & 2) != 0) {
            num = wsReduceFreePreviewRequest.time;
        }
        return wsReduceFreePreviewRequest.copy(str, num);
    }

    @g
    public final String component1() {
        return this.method;
    }

    @h
    public final Integer component2() {
        return this.time;
    }

    @g
    public final WsReduceFreePreviewRequest copy(@g String method, @h Integer num) {
        Intrinsics.checkNotNullParameter(method, "method");
        return new WsReduceFreePreviewRequest(method, num);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WsReduceFreePreviewRequest) {
            WsReduceFreePreviewRequest wsReduceFreePreviewRequest = (WsReduceFreePreviewRequest) obj;
            return Intrinsics.areEqual(this.method, wsReduceFreePreviewRequest.method) && Intrinsics.areEqual(this.time, wsReduceFreePreviewRequest.time);
        }
        return false;
    }

    @g
    public final String getMethod() {
        return this.method;
    }

    @h
    public final Integer getTime() {
        return this.time;
    }

    public int hashCode() {
        int hashCode = this.method.hashCode() * 31;
        Integer num = this.time;
        return hashCode + (num == null ? 0 : num.hashCode());
    }

    @g
    public String toString() {
        return "WsReduceFreePreviewRequest(method=" + this.method + ", time=" + this.time + ')';
    }

    public /* synthetic */ WsReduceFreePreviewRequest(String str, Integer num, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? "reduceFreePreview" : str, num);
    }
}
