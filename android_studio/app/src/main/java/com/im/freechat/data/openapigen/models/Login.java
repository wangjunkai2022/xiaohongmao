package com.im.freechat.data.openapigen.models;

import com.im.freechat.data.openapigen.models.SocketMessage;
import com.qennnsad.aknkaksd.data.websocket.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Login.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001bB-\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u00052\b\b\u0003\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001c"}, d2 = {"Lcom/im/freechat/data/openapigen/models/Login;", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", "type", "Lcom/im/freechat/data/openapigen/models/Login$Type;", "token", "", "deviceId", "deviceName", "(Lcom/im/freechat/data/openapigen/models/Login$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDeviceId", "()Ljava/lang/String;", "getDeviceName", "getToken", "getType", "()Lcom/im/freechat/data/openapigen/models/Login$Type;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Type", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class Login implements SocketMessage {
    @g
    private final String deviceId;
    @g
    private final String deviceName;
    @g
    private final String token;
    @g
    private final Type type;

    /* compiled from: Login.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/data/openapigen/models/Login$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", b.f47819k, "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum Type {
        login("Login");
        
        @g
        private final String value;

        Type(String str) {
            this.value = str;
        }

        @g
        public final String getValue() {
            return this.value;
        }
    }

    public Login(@com.squareup.moshi.g(name = "type") @g Type type, @com.squareup.moshi.g(name = "token") @g String token, @com.squareup.moshi.g(name = "device_id") @g String deviceId, @com.squareup.moshi.g(name = "device_name") @g String deviceName) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Intrinsics.checkNotNullParameter(deviceName, "deviceName");
        this.type = type;
        this.token = token;
        this.deviceId = deviceId;
        this.deviceName = deviceName;
    }

    public static /* synthetic */ Login copy$default(Login login, Type type, String str, String str2, String str3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            type = login.type;
        }
        if ((i4 & 2) != 0) {
            str = login.token;
        }
        if ((i4 & 4) != 0) {
            str2 = login.deviceId;
        }
        if ((i4 & 8) != 0) {
            str3 = login.deviceName;
        }
        return login.copy(type, str, str2, str3);
    }

    @g
    public final Type component1() {
        return this.type;
    }

    @g
    public final String component2() {
        return this.token;
    }

    @g
    public final String component3() {
        return this.deviceId;
    }

    @g
    public final String component4() {
        return this.deviceName;
    }

    @g
    public final Login copy(@com.squareup.moshi.g(name = "type") @g Type type, @com.squareup.moshi.g(name = "token") @g String token, @com.squareup.moshi.g(name = "device_id") @g String deviceId, @com.squareup.moshi.g(name = "device_name") @g String deviceName) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Intrinsics.checkNotNullParameter(deviceName, "deviceName");
        return new Login(type, token, deviceId, deviceName);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Login) {
            Login login = (Login) obj;
            return this.type == login.type && Intrinsics.areEqual(this.token, login.token) && Intrinsics.areEqual(this.deviceId, login.deviceId) && Intrinsics.areEqual(this.deviceName, login.deviceName);
        }
        return false;
    }

    @Override // com.im.freechat.data.openapigen.models.SocketMessage
    @g
    public String getClassName() {
        return SocketMessage.DefaultImpls.getClassName(this);
    }

    @g
    public final String getDeviceId() {
        return this.deviceId;
    }

    @g
    public final String getDeviceName() {
        return this.deviceName;
    }

    @g
    public final String getToken() {
        return this.token;
    }

    @g
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        return (((((this.type.hashCode() * 31) + this.token.hashCode()) * 31) + this.deviceId.hashCode()) * 31) + this.deviceName.hashCode();
    }

    @g
    public String toString() {
        return "Login(type=" + this.type + ", token=" + this.token + ", deviceId=" + this.deviceId + ", deviceName=" + this.deviceName + ')';
    }
}
