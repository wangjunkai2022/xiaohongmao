package com.im.freechat.data.sources.api.entities.auth;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: RequestSmsBody.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/auth/RequestSmsBody;", "", "countryCode", "", "phoneNumber", "(Ljava/lang/String;Ljava/lang/String;)V", "getCountryCode", "()Ljava/lang/String;", "getPhoneNumber", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class RequestSmsBody {
    @g
    private final String countryCode;
    @g
    private final String phoneNumber;

    public RequestSmsBody(@com.squareup.moshi.g(name = "nation_code") @g String countryCode, @com.squareup.moshi.g(name = "phone") @g String phoneNumber) {
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(phoneNumber, "phoneNumber");
        this.countryCode = countryCode;
        this.phoneNumber = phoneNumber;
    }

    @g
    public final String getCountryCode() {
        return this.countryCode;
    }

    @g
    public final String getPhoneNumber() {
        return this.phoneNumber;
    }
}
