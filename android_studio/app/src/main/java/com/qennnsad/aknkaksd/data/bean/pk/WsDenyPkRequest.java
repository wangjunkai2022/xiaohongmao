package com.qennnsad.aknkaksd.data.bean.pk;

import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.websocket.WsRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: WsPkRequest.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0004HÖ\u0001R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/pk/WsDenyPkRequest;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;", "()V", "method", "", "(Ljava/lang/String;)V", "getMethod", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class WsDenyPkRequest implements WsRequest {
    @SerializedName("_method_")
    @g
    private final String method;

    public WsDenyPkRequest(@g String method) {
        Intrinsics.checkNotNullParameter(method, "method");
        this.method = method;
    }

    public static /* synthetic */ WsDenyPkRequest copy$default(WsDenyPkRequest wsDenyPkRequest, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = wsDenyPkRequest.method;
        }
        return wsDenyPkRequest.copy(str);
    }

    @g
    public final String component1() {
        return this.method;
    }

    @g
    public final WsDenyPkRequest copy(@g String method) {
        Intrinsics.checkNotNullParameter(method, "method");
        return new WsDenyPkRequest(method);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof WsDenyPkRequest) && Intrinsics.areEqual(this.method, ((WsDenyPkRequest) obj).method);
    }

    @g
    public final String getMethod() {
        return this.method;
    }

    public int hashCode() {
        return this.method.hashCode();
    }

    @g
    public String toString() {
        return "WsDenyPkRequest(method=" + this.method + ')';
    }

    public WsDenyPkRequest() {
        this("interactionDeny");
    }
}
