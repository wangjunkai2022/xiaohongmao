package com.qennnsad.aknkaksd.data.bean;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ConfigBean.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u000fJ2\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00032\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/StreamDeposit;", "", "enable", "", "helpUri", "", "ttl", "", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;)V", "getEnable", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getHelpUri", "()Ljava/lang/String;", "getTtl", "()Ljava/lang/Long;", "Ljava/lang/Long;", "component1", "component2", "component3", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;)Lcom/qennnsad/aknkaksd/data/bean/StreamDeposit;", "equals", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class StreamDeposit {
    @h
    private final Boolean enable;
    @h
    private final String helpUri;
    @h
    private final Long ttl;

    public StreamDeposit(@h Boolean bool, @h String str, @h Long l10) {
        this.enable = bool;
        this.helpUri = str;
        this.ttl = l10;
    }

    public static /* synthetic */ StreamDeposit copy$default(StreamDeposit streamDeposit, Boolean bool, String str, Long l10, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            bool = streamDeposit.enable;
        }
        if ((i4 & 2) != 0) {
            str = streamDeposit.helpUri;
        }
        if ((i4 & 4) != 0) {
            l10 = streamDeposit.ttl;
        }
        return streamDeposit.copy(bool, str, l10);
    }

    @h
    public final Boolean component1() {
        return this.enable;
    }

    @h
    public final String component2() {
        return this.helpUri;
    }

    @h
    public final Long component3() {
        return this.ttl;
    }

    @g
    public final StreamDeposit copy(@h Boolean bool, @h String str, @h Long l10) {
        return new StreamDeposit(bool, str, l10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StreamDeposit) {
            StreamDeposit streamDeposit = (StreamDeposit) obj;
            return Intrinsics.areEqual(this.enable, streamDeposit.enable) && Intrinsics.areEqual(this.helpUri, streamDeposit.helpUri) && Intrinsics.areEqual(this.ttl, streamDeposit.ttl);
        }
        return false;
    }

    @h
    public final Boolean getEnable() {
        return this.enable;
    }

    @h
    public final String getHelpUri() {
        return this.helpUri;
    }

    @h
    public final Long getTtl() {
        return this.ttl;
    }

    public int hashCode() {
        Boolean bool = this.enable;
        int hashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        String str = this.helpUri;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l10 = this.ttl;
        return hashCode2 + (l10 != null ? l10.hashCode() : 0);
    }

    @g
    public String toString() {
        return "StreamDeposit(enable=" + this.enable + ", helpUri=" + this.helpUri + ", ttl=" + this.ttl + ')';
    }
}
