package com.qennnsad.aknkaksd.presentation.ui.room.player.pk;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PkPlayerManager.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0015\u0010\u0016J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;", "", "", "a", "", "b", "pullUrl", "durationLeft", "c", "toString", "", "hashCode", "other", "", "equals", "Ljava/lang/String;", "f", "()Ljava/lang/String;", "J", "e", "()J", "<init>", "(Ljava/lang/String;J)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class i {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f53634a;

    /* renamed from: b  reason: collision with root package name */
    private final long f53635b;

    public i(@m8.g String pullUrl, long j4) {
        Intrinsics.checkNotNullParameter(pullUrl, "pullUrl");
        this.f53634a = pullUrl;
        this.f53635b = j4;
    }

    public static /* synthetic */ i d(i iVar, String str, long j4, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = iVar.f53634a;
        }
        if ((i4 & 2) != 0) {
            j4 = iVar.f53635b;
        }
        return iVar.c(str, j4);
    }

    @m8.g
    public final String a() {
        return this.f53634a;
    }

    public final long b() {
        return this.f53635b;
    }

    @m8.g
    public final i c(@m8.g String pullUrl, long j4) {
        Intrinsics.checkNotNullParameter(pullUrl, "pullUrl");
        return new i(pullUrl, j4);
    }

    public final long e() {
        return this.f53635b;
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            return Intrinsics.areEqual(this.f53634a, iVar.f53634a) && this.f53635b == iVar.f53635b;
        }
        return false;
    }

    @m8.g
    public final String f() {
        return this.f53634a;
    }

    public int hashCode() {
        return (this.f53634a.hashCode() * 31) + a5.a.a(this.f53635b);
    }

    @m8.g
    public String toString() {
        return "SecondaryPlayerData(pullUrl=" + this.f53634a + ", durationLeft=" + this.f53635b + ')';
    }
}
