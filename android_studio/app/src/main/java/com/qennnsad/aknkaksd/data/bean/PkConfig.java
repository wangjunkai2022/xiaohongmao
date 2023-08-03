package com.qennnsad.aknkaksd.data.bean;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ConfigBean.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0006J\u001a\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/PkConfig;", "", "enable", "", "(Ljava/lang/Boolean;)V", "getEnable", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "copy", "(Ljava/lang/Boolean;)Lcom/qennnsad/aknkaksd/data/bean/PkConfig;", "equals", "other", "hashCode", "", "toString", "", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PkConfig {
    @h
    private final Boolean enable;

    public PkConfig(@h Boolean bool) {
        this.enable = bool;
    }

    public static /* synthetic */ PkConfig copy$default(PkConfig pkConfig, Boolean bool, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            bool = pkConfig.enable;
        }
        return pkConfig.copy(bool);
    }

    @h
    public final Boolean component1() {
        return this.enable;
    }

    @g
    public final PkConfig copy(@h Boolean bool) {
        return new PkConfig(bool);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PkConfig) && Intrinsics.areEqual(this.enable, ((PkConfig) obj).enable);
    }

    @h
    public final Boolean getEnable() {
        return this.enable;
    }

    public int hashCode() {
        Boolean bool = this.enable;
        if (bool == null) {
            return 0;
        }
        return bool.hashCode();
    }

    @g
    public String toString() {
        return "PkConfig(enable=" + this.enable + ')';
    }
}
