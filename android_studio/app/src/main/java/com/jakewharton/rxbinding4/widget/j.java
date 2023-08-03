package com.jakewharton.rxbinding4.widget;

import android.view.View;
import android.widget.AdapterView;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AdapterViewSelectionEvent.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\"\u0010#J\r\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\bHÆ\u0003J7\u0010\u000e\u001a\u00020\u00002\f\b\u0002\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\bHÆ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0006HÖ\u0001J\u0013\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003R\u001e\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0016\u0010\u0018R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\f\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001f\u001a\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/j;", "Lcom/jakewharton/rxbinding4/widget/m;", "Landroid/widget/AdapterView;", "b", "Landroid/view/View;", "c", "", "d", "", "e", "view", "selectedView", "position", "id", "f", "", "toString", "hashCode", "", "other", "", "equals", "a", "Landroid/widget/AdapterView;", "()Landroid/widget/AdapterView;", "Landroid/view/View;", "j", "()Landroid/view/View;", "I", ContextChain.TAG_INFRA, "()I", "J", "h", "()J", "<init>", "(Landroid/widget/AdapterView;Landroid/view/View;IJ)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class j extends m {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final AdapterView<?> f43995a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final View f43996b;

    /* renamed from: c  reason: collision with root package name */
    private final int f43997c;

    /* renamed from: d  reason: collision with root package name */
    private final long f43998d;

    public j(@m8.g AdapterView<?> adapterView, @m8.h View view, int i4, long j4) {
        super(null);
        this.f43995a = adapterView;
        this.f43996b = view;
        this.f43997c = i4;
        this.f43998d = j4;
    }

    public static /* synthetic */ j g(j jVar, AdapterView adapterView, View view, int i4, long j4, int i10, Object obj) {
        AdapterView<?> adapterView2 = adapterView;
        if ((i10 & 1) != 0) {
            adapterView2 = jVar.a();
        }
        if ((i10 & 2) != 0) {
            view = jVar.f43996b;
        }
        View view2 = view;
        if ((i10 & 4) != 0) {
            i4 = jVar.f43997c;
        }
        int i11 = i4;
        if ((i10 & 8) != 0) {
            j4 = jVar.f43998d;
        }
        return jVar.f(adapterView2, view2, i11, j4);
    }

    @Override // com.jakewharton.rxbinding4.widget.m
    @m8.g
    public AdapterView<?> a() {
        return this.f43995a;
    }

    @m8.g
    public final AdapterView<?> b() {
        return a();
    }

    @m8.h
    public final View c() {
        return this.f43996b;
    }

    public final int d() {
        return this.f43997c;
    }

    public final long e() {
        return this.f43998d;
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            if (obj instanceof j) {
                j jVar = (j) obj;
                return Intrinsics.areEqual(a(), jVar.a()) && Intrinsics.areEqual(this.f43996b, jVar.f43996b) && this.f43997c == jVar.f43997c && this.f43998d == jVar.f43998d;
            }
            return false;
        }
        return true;
    }

    @m8.g
    public final j f(@m8.g AdapterView<?> adapterView, @m8.h View view, int i4, long j4) {
        return new j(adapterView, view, i4, j4);
    }

    public final long h() {
        return this.f43998d;
    }

    public int hashCode() {
        AdapterView<?> a10 = a();
        int hashCode = (a10 != null ? a10.hashCode() : 0) * 31;
        View view = this.f43996b;
        return ((((hashCode + (view != null ? view.hashCode() : 0)) * 31) + this.f43997c) * 31) + a5.a.a(this.f43998d);
    }

    public final int i() {
        return this.f43997c;
    }

    @m8.h
    public final View j() {
        return this.f43996b;
    }

    @m8.g
    public String toString() {
        return "AdapterViewItemSelectionEvent(view=" + a() + ", selectedView=" + this.f43996b + ", position=" + this.f43997c + ", id=" + this.f43998d + ")";
    }
}
