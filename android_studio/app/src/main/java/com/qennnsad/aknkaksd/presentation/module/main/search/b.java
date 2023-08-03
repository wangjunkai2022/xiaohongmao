package com.qennnsad.aknkaksd.presentation.module.main.search;

import com.qennnsad.aknkaksd.data.bean.AnchorSummary;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SearchUserAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\"\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;", "", "Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;", "a", "", "b", "anchorSummary", "isFollowed", "c", "", "toString", "", "hashCode", "other", "equals", "Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;", "e", "()Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;", "Z", "f", "()Z", "g", "(Z)V", "<init>", "(Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;Z)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final AnchorSummary f52009a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f52010b;

    public b(@m8.g AnchorSummary anchorSummary, boolean z9) {
        Intrinsics.checkNotNullParameter(anchorSummary, "anchorSummary");
        this.f52009a = anchorSummary;
        this.f52010b = z9;
    }

    public static /* synthetic */ b d(b bVar, AnchorSummary anchorSummary, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            anchorSummary = bVar.f52009a;
        }
        if ((i4 & 2) != 0) {
            z9 = bVar.f52010b;
        }
        return bVar.c(anchorSummary, z9);
    }

    @m8.g
    public final AnchorSummary a() {
        return this.f52009a;
    }

    public final boolean b() {
        return this.f52010b;
    }

    @m8.g
    public final b c(@m8.g AnchorSummary anchorSummary, boolean z9) {
        Intrinsics.checkNotNullParameter(anchorSummary, "anchorSummary");
        return new b(anchorSummary, z9);
    }

    @m8.g
    public final AnchorSummary e() {
        return this.f52009a;
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return Intrinsics.areEqual(this.f52009a, bVar.f52009a) && this.f52010b == bVar.f52010b;
        }
        return false;
    }

    public final boolean f() {
        return this.f52010b;
    }

    public final void g(boolean z9) {
        this.f52010b = z9;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.f52009a.hashCode() * 31;
        boolean z9 = this.f52010b;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        return hashCode + i4;
    }

    @m8.g
    public String toString() {
        return "SearchResultWrapper(anchorSummary=" + this.f52009a + ", isFollowed=" + this.f52010b + ')';
    }
}
