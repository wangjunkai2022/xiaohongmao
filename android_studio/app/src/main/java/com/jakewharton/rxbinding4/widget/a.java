package com.jakewharton.rxbinding4.widget;

import android.widget.AbsListView;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AbsListViewScrollEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J;\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u0004HÆ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\n\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0018\u001a\u0004\b\u001b\u0010\u001aR\u0017\u0010\f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0018\u001a\u0004\b\u001c\u0010\u001aR\u0017\u0010\r\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\b\u0010\u0018\u001a\u0004\b\u001d\u0010\u001a¨\u0006 "}, d2 = {"Lcom/jakewharton/rxbinding4/widget/a;", "", "Landroid/widget/AbsListView;", "a", "", "b", "c", "d", "e", "view", "scrollState", "firstVisibleItem", "visibleItemCount", "totalItemCount", "f", "", "toString", "hashCode", "other", "", "equals", "Landroid/widget/AbsListView;", "k", "()Landroid/widget/AbsListView;", "I", ContextChain.TAG_INFRA, "()I", "h", "l", "j", "<init>", "(Landroid/widget/AbsListView;IIII)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class a {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final AbsListView f43935a;

    /* renamed from: b  reason: collision with root package name */
    private final int f43936b;

    /* renamed from: c  reason: collision with root package name */
    private final int f43937c;

    /* renamed from: d  reason: collision with root package name */
    private final int f43938d;

    /* renamed from: e  reason: collision with root package name */
    private final int f43939e;

    public a(@m8.g AbsListView absListView, int i4, int i10, int i11, int i12) {
        this.f43935a = absListView;
        this.f43936b = i4;
        this.f43937c = i10;
        this.f43938d = i11;
        this.f43939e = i12;
    }

    public static /* synthetic */ a g(a aVar, AbsListView absListView, int i4, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            absListView = aVar.f43935a;
        }
        if ((i13 & 2) != 0) {
            i4 = aVar.f43936b;
        }
        int i14 = i4;
        if ((i13 & 4) != 0) {
            i10 = aVar.f43937c;
        }
        int i15 = i10;
        if ((i13 & 8) != 0) {
            i11 = aVar.f43938d;
        }
        int i16 = i11;
        if ((i13 & 16) != 0) {
            i12 = aVar.f43939e;
        }
        return aVar.f(absListView, i14, i15, i16, i12);
    }

    @m8.g
    public final AbsListView a() {
        return this.f43935a;
    }

    public final int b() {
        return this.f43936b;
    }

    public final int c() {
        return this.f43937c;
    }

    public final int d() {
        return this.f43938d;
    }

    public final int e() {
        return this.f43939e;
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                return Intrinsics.areEqual(this.f43935a, aVar.f43935a) && this.f43936b == aVar.f43936b && this.f43937c == aVar.f43937c && this.f43938d == aVar.f43938d && this.f43939e == aVar.f43939e;
            }
            return false;
        }
        return true;
    }

    @m8.g
    public final a f(@m8.g AbsListView absListView, int i4, int i10, int i11, int i12) {
        return new a(absListView, i4, i10, i11, i12);
    }

    public final int h() {
        return this.f43937c;
    }

    public int hashCode() {
        AbsListView absListView = this.f43935a;
        return ((((((((absListView != null ? absListView.hashCode() : 0) * 31) + this.f43936b) * 31) + this.f43937c) * 31) + this.f43938d) * 31) + this.f43939e;
    }

    public final int i() {
        return this.f43936b;
    }

    public final int j() {
        return this.f43939e;
    }

    @m8.g
    public final AbsListView k() {
        return this.f43935a;
    }

    public final int l() {
        return this.f43938d;
    }

    @m8.g
    public String toString() {
        return "AbsListViewScrollEvent(view=" + this.f43935a + ", scrollState=" + this.f43936b + ", firstVisibleItem=" + this.f43937c + ", visibleItemCount=" + this.f43938d + ", totalItemCount=" + this.f43939e + ")";
    }
}
