package com.im.freechat.data.sources.api.entities.auth;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: SigninBySmsBody.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B7\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0003\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;", "", "countryCode", "", "phoneNumber", "code", "", "deviceUUID", "device", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getCode", "()I", "getCountryCode", "()Ljava/lang/String;", "getDevice", "getDeviceUUID", "getPhoneNumber", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SigninBySmsBody {
    private final int code;
    @g
    private final String countryCode;
    @g
    private final String device;
    @g
    private final String deviceUUID;
    @g
    private final String phoneNumber;

    public SigninBySmsBody(@com.squareup.moshi.g(name = "nation_code") @g String countryCode, @com.squareup.moshi.g(name = "phone") @g String phoneNumber, @com.squareup.moshi.g(name = "check_code") int i4, @com.squareup.moshi.g(name = "device_id") @g String deviceUUID, @com.squareup.moshi.g(name = "device") @g String device) {
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(phoneNumber, "phoneNumber");
        Intrinsics.checkNotNullParameter(deviceUUID, "deviceUUID");
        Intrinsics.checkNotNullParameter(device, "device");
        this.countryCode = countryCode;
        this.phoneNumber = phoneNumber;
        this.code = i4;
        this.deviceUUID = deviceUUID;
        this.device = device;
    }

    public final int getCode() {
        return this.code;
    }

    @g
    public final String getCountryCode() {
        return this.countryCode;
    }

    @g
    public final String getDevice() {
        return this.device;
    }

    @g
    public final String getDeviceUUID() {
        return this.deviceUUID;
    }

    @g
    public final String getPhoneNumber() {
        return this.phoneNumber;
    }

    public /* synthetic */ SigninBySmsBody(String str, String str2, int i4, String str3, String str4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i4, str3, (i10 & 16) != 0 ? "android" : str4);
    }
}
