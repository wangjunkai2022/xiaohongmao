package com.im.freechat.domain;

import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CacheManager.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u001d\u0010\u001eJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J'\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\"\u0010\n\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/im/freechat/domain/r;", "", "Lcom/im/freechat/domain/CacheFileType;", "a", "", "b", "", "c", "filesType", "totalSize", "toRemove", "d", "", "toString", "", "hashCode", "other", "equals", "Lcom/im/freechat/domain/CacheFileType;", "f", "()Lcom/im/freechat/domain/CacheFileType;", "J", "h", "()J", "Z", "g", "()Z", ContextChain.TAG_INFRA, "(Z)V", "<init>", "(Lcom/im/freechat/domain/CacheFileType;JZ)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class r {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final CacheFileType f41332a;

    /* renamed from: b  reason: collision with root package name */
    private final long f41333b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f41334c;

    public r(@m8.g CacheFileType filesType, long j4, boolean z9) {
        Intrinsics.checkNotNullParameter(filesType, "filesType");
        this.f41332a = filesType;
        this.f41333b = j4;
        this.f41334c = z9;
    }

    public static /* synthetic */ r e(r rVar, CacheFileType cacheFileType, long j4, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            cacheFileType = rVar.f41332a;
        }
        if ((i4 & 2) != 0) {
            j4 = rVar.f41333b;
        }
        if ((i4 & 4) != 0) {
            z9 = rVar.f41334c;
        }
        return rVar.d(cacheFileType, j4, z9);
    }

    @m8.g
    public final CacheFileType a() {
        return this.f41332a;
    }

    public final long b() {
        return this.f41333b;
    }

    public final boolean c() {
        return this.f41334c;
    }

    @m8.g
    public final r d(@m8.g CacheFileType filesType, long j4, boolean z9) {
        Intrinsics.checkNotNullParameter(filesType, "filesType");
        return new r(filesType, j4, z9);
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof r) {
            r rVar = (r) obj;
            return this.f41332a == rVar.f41332a && this.f41333b == rVar.f41333b && this.f41334c == rVar.f41334c;
        }
        return false;
    }

    @m8.g
    public final CacheFileType f() {
        return this.f41332a;
    }

    public final boolean g() {
        return this.f41334c;
    }

    public final long h() {
        return this.f41333b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.f41332a.hashCode() * 31) + a5.a.a(this.f41333b)) * 31;
        boolean z9 = this.f41334c;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        return hashCode + i4;
    }

    public final void i(boolean z9) {
        this.f41334c = z9;
    }

    @m8.g
    public String toString() {
        return "StorageUsageStatistics(filesType=" + this.f41332a + ", totalSize=" + this.f41333b + ", toRemove=" + this.f41334c + ')';
    }

    public /* synthetic */ r(CacheFileType cacheFileType, long j4, boolean z9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(cacheFileType, j4, (i4 & 4) != 0 ? true : z9);
    }
}
