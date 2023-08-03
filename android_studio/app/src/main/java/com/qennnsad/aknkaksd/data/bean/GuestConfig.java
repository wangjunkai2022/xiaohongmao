package com.qennnsad.aknkaksd.data.bean;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ConfigBean.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0006J\u001a\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/GuestConfig;", "", "status", "", "(Ljava/lang/Integer;)V", "getStatus", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "copy", "(Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/data/bean/GuestConfig;", "equals", "", "other", "hashCode", "toString", "", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GuestConfig {
    @h
    private final Integer status;

    public GuestConfig(@h Integer num) {
        this.status = num;
    }

    public static /* synthetic */ GuestConfig copy$default(GuestConfig guestConfig, Integer num, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            num = guestConfig.status;
        }
        return guestConfig.copy(num);
    }

    @h
    public final Integer component1() {
        return this.status;
    }

    @g
    public final GuestConfig copy(@h Integer num) {
        return new GuestConfig(num);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof GuestConfig) && Intrinsics.areEqual(this.status, ((GuestConfig) obj).status);
    }

    @h
    public final Integer getStatus() {
        return this.status;
    }

    public int hashCode() {
        Integer num = this.status;
        if (num == null) {
            return 0;
        }
        return num.hashCode();
    }

    @g
    public String toString() {
        return "GuestConfig(status=" + this.status + ')';
    }
}
