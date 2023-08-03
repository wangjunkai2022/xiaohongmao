package com.im.freechat.domain;

import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NetworkUsage.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J'\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0012\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016R\"\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lcom/im/freechat/domain/m;", "", "", "a", "b", "Lcom/im/freechat/domain/NetworkType;", "c", "receivedBytes", "transmittedBytes", "type", "d", "", "toString", "", "hashCode", "other", "", "equals", "J", "f", "()J", ContextChain.TAG_INFRA, "(J)V", "g", "j", "Lcom/im/freechat/domain/NetworkType;", "h", "()Lcom/im/freechat/domain/NetworkType;", "k", "(Lcom/im/freechat/domain/NetworkType;)V", "<init>", "(JJLcom/im/freechat/domain/NetworkType;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private long f41329a;

    /* renamed from: b  reason: collision with root package name */
    private long f41330b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private NetworkType f41331c;

    public m(long j4, long j10, @m8.g NetworkType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.f41329a = j4;
        this.f41330b = j10;
        this.f41331c = type;
    }

    public static /* synthetic */ m e(m mVar, long j4, long j10, NetworkType networkType, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            j4 = mVar.f41329a;
        }
        long j11 = j4;
        if ((i4 & 2) != 0) {
            j10 = mVar.f41330b;
        }
        long j12 = j10;
        if ((i4 & 4) != 0) {
            networkType = mVar.f41331c;
        }
        return mVar.d(j11, j12, networkType);
    }

    public final long a() {
        return this.f41329a;
    }

    public final long b() {
        return this.f41330b;
    }

    @m8.g
    public final NetworkType c() {
        return this.f41331c;
    }

    @m8.g
    public final m d(long j4, long j10, @m8.g NetworkType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new m(j4, j10, type);
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m) {
            m mVar = (m) obj;
            return this.f41329a == mVar.f41329a && this.f41330b == mVar.f41330b && this.f41331c == mVar.f41331c;
        }
        return false;
    }

    public final long f() {
        return this.f41329a;
    }

    public final long g() {
        return this.f41330b;
    }

    @m8.g
    public final NetworkType h() {
        return this.f41331c;
    }

    public int hashCode() {
        return (((a5.a.a(this.f41329a) * 31) + a5.a.a(this.f41330b)) * 31) + this.f41331c.hashCode();
    }

    public final void i(long j4) {
        this.f41329a = j4;
    }

    public final void j(long j4) {
        this.f41330b = j4;
    }

    public final void k(@m8.g NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "<set-?>");
        this.f41331c = networkType;
    }

    @m8.g
    public String toString() {
        return "NetworkUsageStatistics(receivedBytes=" + this.f41329a + ", transmittedBytes=" + this.f41330b + ", type=" + this.f41331c + ')';
    }

    public /* synthetic */ m(long j4, long j10, NetworkType networkType, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0L : j4, (i4 & 2) != 0 ? 0L : j10, networkType);
    }
}
