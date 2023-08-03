package com.jakewharton.rxbinding4.widget;

import android.view.View;
import android.widget.AdapterView;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AdapterViewItemLongClickEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b!\u0010\"J\r\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\bHÆ\u0003J7\u0010\u000e\u001a\u00020\u00002\f\b\u0002\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\bHÆ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0006HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001b\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\f\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\u001e\u001a\u0004\b\u001f\u0010 ¨\u0006#"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/g;", "", "Landroid/widget/AdapterView;", "a", "Landroid/view/View;", "b", "", "c", "", "d", "view", "clickedView", "position", "id", "e", "", "toString", "hashCode", "other", "", "equals", "Landroid/widget/AdapterView;", "j", "()Landroid/widget/AdapterView;", "Landroid/view/View;", "g", "()Landroid/view/View;", "I", ContextChain.TAG_INFRA, "()I", "J", "h", "()J", "<init>", "(Landroid/widget/AdapterView;Landroid/view/View;IJ)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class g {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final AdapterView<?> f43981a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final View f43982b;

    /* renamed from: c  reason: collision with root package name */
    private final int f43983c;

    /* renamed from: d  reason: collision with root package name */
    private final long f43984d;

    public g(@m8.g AdapterView<?> adapterView, @m8.h View view, int i4, long j4) {
        this.f43981a = adapterView;
        this.f43982b = view;
        this.f43983c = i4;
        this.f43984d = j4;
    }

    public static /* synthetic */ g f(g gVar, AdapterView adapterView, View view, int i4, long j4, int i10, Object obj) {
        AdapterView<?> adapterView2 = adapterView;
        if ((i10 & 1) != 0) {
            adapterView2 = gVar.f43981a;
        }
        if ((i10 & 2) != 0) {
            view = gVar.f43982b;
        }
        View view2 = view;
        if ((i10 & 4) != 0) {
            i4 = gVar.f43983c;
        }
        int i11 = i4;
        if ((i10 & 8) != 0) {
            j4 = gVar.f43984d;
        }
        return gVar.e(adapterView2, view2, i11, j4);
    }

    @m8.g
    public final AdapterView<?> a() {
        return this.f43981a;
    }

    @m8.h
    public final View b() {
        return this.f43982b;
    }

    public final int c() {
        return this.f43983c;
    }

    public final long d() {
        return this.f43984d;
    }

    @m8.g
    public final g e(@m8.g AdapterView<?> adapterView, @m8.h View view, int i4, long j4) {
        return new g(adapterView, view, i4, j4);
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            if (obj instanceof g) {
                g gVar = (g) obj;
                return Intrinsics.areEqual(this.f43981a, gVar.f43981a) && Intrinsics.areEqual(this.f43982b, gVar.f43982b) && this.f43983c == gVar.f43983c && this.f43984d == gVar.f43984d;
            }
            return false;
        }
        return true;
    }

    @m8.h
    public final View g() {
        return this.f43982b;
    }

    public final long h() {
        return this.f43984d;
    }

    public int hashCode() {
        AdapterView<?> adapterView = this.f43981a;
        int hashCode = (adapterView != null ? adapterView.hashCode() : 0) * 31;
        View view = this.f43982b;
        return ((((hashCode + (view != null ? view.hashCode() : 0)) * 31) + this.f43983c) * 31) + a5.a.a(this.f43984d);
    }

    public final int i() {
        return this.f43983c;
    }

    @m8.g
    public final AdapterView<?> j() {
        return this.f43981a;
    }

    @m8.g
    public String toString() {
        return "AdapterViewItemLongClickEvent(view=" + this.f43981a + ", clickedView=" + this.f43982b + ", position=" + this.f43983c + ", id=" + this.f43984d + ")";
    }
}
