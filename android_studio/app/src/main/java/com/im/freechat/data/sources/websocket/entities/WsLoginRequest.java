package com.im.freechat.data.sources.websocket.entities;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: WsRequest.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00032\b\b\u0003\u0010\u0005\u001a\u00020\u00032\b\b\u0003\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0019"}, d2 = {"Lcom/im/freechat/data/sources/websocket/entities/WsLoginRequest;", "Lcom/im/freechat/data/sources/websocket/entities/WsRequest;", "imToken", "", "deviceToken", "deviceName", "type", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDeviceName", "()Ljava/lang/String;", "getDeviceToken", "getImToken", "getType", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class WsLoginRequest implements WsRequest {
    @g
    private final String deviceName;
    @g
    private final String deviceToken;
    @g
    private final String imToken;
    @g
    private final String type;

    public WsLoginRequest(@com.squareup.moshi.g(name = "token") @g String imToken, @com.squareup.moshi.g(name = "device_id") @g String deviceToken, @com.squareup.moshi.g(name = "device_name") @g String deviceName, @com.squareup.moshi.g(name = "type") @g String type) {
        Intrinsics.checkNotNullParameter(imToken, "imToken");
        Intrinsics.checkNotNullParameter(deviceToken, "deviceToken");
        Intrinsics.checkNotNullParameter(deviceName, "deviceName");
        Intrinsics.checkNotNullParameter(type, "type");
        this.imToken = imToken;
        this.deviceToken = deviceToken;
        this.deviceName = deviceName;
        this.type = type;
    }

    public static /* synthetic */ WsLoginRequest copy$default(WsLoginRequest wsLoginRequest, String str, String str2, String str3, String str4, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = wsLoginRequest.imToken;
        }
        if ((i4 & 2) != 0) {
            str2 = wsLoginRequest.deviceToken;
        }
        if ((i4 & 4) != 0) {
            str3 = wsLoginRequest.deviceName;
        }
        if ((i4 & 8) != 0) {
            str4 = wsLoginRequest.type;
        }
        return wsLoginRequest.copy(str, str2, str3, str4);
    }

    @g
    public final String component1() {
        return this.imToken;
    }

    @g
    public final String component2() {
        return this.deviceToken;
    }

    @g
    public final String component3() {
        return this.deviceName;
    }

    @g
    public final String component4() {
        return this.type;
    }

    @g
    public final WsLoginRequest copy(@com.squareup.moshi.g(name = "token") @g String imToken, @com.squareup.moshi.g(name = "device_id") @g String deviceToken, @com.squareup.moshi.g(name = "device_name") @g String deviceName, @com.squareup.moshi.g(name = "type") @g String type) {
        Intrinsics.checkNotNullParameter(imToken, "imToken");
        Intrinsics.checkNotNullParameter(deviceToken, "deviceToken");
        Intrinsics.checkNotNullParameter(deviceName, "deviceName");
        Intrinsics.checkNotNullParameter(type, "type");
        return new WsLoginRequest(imToken, deviceToken, deviceName, type);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WsLoginRequest) {
            WsLoginRequest wsLoginRequest = (WsLoginRequest) obj;
            return Intrinsics.areEqual(this.imToken, wsLoginRequest.imToken) && Intrinsics.areEqual(this.deviceToken, wsLoginRequest.deviceToken) && Intrinsics.areEqual(this.deviceName, wsLoginRequest.deviceName) && Intrinsics.areEqual(this.type, wsLoginRequest.type);
        }
        return false;
    }

    @g
    public final String getDeviceName() {
        return this.deviceName;
    }

    @g
    public final String getDeviceToken() {
        return this.deviceToken;
    }

    @g
    public final String getImToken() {
        return this.imToken;
    }

    @g
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return (((((this.imToken.hashCode() * 31) + this.deviceToken.hashCode()) * 31) + this.deviceName.hashCode()) * 31) + this.type.hashCode();
    }

    @g
    public String toString() {
        return "WsLoginRequest(imToken=" + this.imToken + ", deviceToken=" + this.deviceToken + ", deviceName=" + this.deviceName + ", type=" + this.type + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public /* synthetic */ WsLoginRequest(java.lang.String r1, java.lang.String r2, java.lang.String r3, java.lang.String r4, int r5, kotlin.jvm.internal.DefaultConstructorMarker r6) {
        /*
            r0 = this;
            r6 = r5 & 4
            if (r6 == 0) goto Lb
            java.lang.String r3 = android.os.Build.MODEL
            java.lang.String r6 = "MODEL"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r6)
        Lb:
            r5 = r5 & 8
            if (r5 == 0) goto L15
            com.im.freechat.data.sources.websocket.entities.WsMethod r4 = com.im.freechat.data.sources.websocket.entities.WsMethod.LOGIN
            java.lang.String r4 = r4.getType()
        L15:
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.websocket.entities.WsLoginRequest.<init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
