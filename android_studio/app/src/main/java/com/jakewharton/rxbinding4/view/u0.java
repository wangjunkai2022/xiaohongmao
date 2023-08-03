package com.jakewharton.rxbinding4.view;

import android.view.View;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViewLayoutChangeEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J;\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u0004HÆ\u0001J\t\u0010\u0010\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\n\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0018\u001a\u0004\b\u001b\u0010\u001aR\u0017\u0010\f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0018\u001a\u0004\b\u001c\u0010\u001aR\u0017\u0010\r\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\b\u0010\u0018\u001a\u0004\b\u001d\u0010\u001a¨\u0006 "}, d2 = {"Lcom/jakewharton/rxbinding4/view/u0;", "", "Landroid/view/View;", "a", "", "b", "c", "d", "e", "view", "scrollX", "scrollY", "oldScrollX", "oldScrollY", "f", "", "toString", "hashCode", "other", "", "equals", "Landroid/view/View;", "l", "()Landroid/view/View;", "I", "j", "()I", "k", "h", ContextChain.TAG_INFRA, "<init>", "(Landroid/view/View;IIII)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class u0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final View f43913a;

    /* renamed from: b  reason: collision with root package name */
    private final int f43914b;

    /* renamed from: c  reason: collision with root package name */
    private final int f43915c;

    /* renamed from: d  reason: collision with root package name */
    private final int f43916d;

    /* renamed from: e  reason: collision with root package name */
    private final int f43917e;

    public u0(@m8.g View view, int i4, int i10, int i11, int i12) {
        this.f43913a = view;
        this.f43914b = i4;
        this.f43915c = i10;
        this.f43916d = i11;
        this.f43917e = i12;
    }

    public static /* synthetic */ u0 g(u0 u0Var, View view, int i4, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            view = u0Var.f43913a;
        }
        if ((i13 & 2) != 0) {
            i4 = u0Var.f43914b;
        }
        int i14 = i4;
        if ((i13 & 4) != 0) {
            i10 = u0Var.f43915c;
        }
        int i15 = i10;
        if ((i13 & 8) != 0) {
            i11 = u0Var.f43916d;
        }
        int i16 = i11;
        if ((i13 & 16) != 0) {
            i12 = u0Var.f43917e;
        }
        return u0Var.f(view, i14, i15, i16, i12);
    }

    @m8.g
    public final View a() {
        return this.f43913a;
    }

    public final int b() {
        return this.f43914b;
    }

    public final int c() {
        return this.f43915c;
    }

    public final int d() {
        return this.f43916d;
    }

    public final int e() {
        return this.f43917e;
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            if (obj instanceof u0) {
                u0 u0Var = (u0) obj;
                return Intrinsics.areEqual(this.f43913a, u0Var.f43913a) && this.f43914b == u0Var.f43914b && this.f43915c == u0Var.f43915c && this.f43916d == u0Var.f43916d && this.f43917e == u0Var.f43917e;
            }
            return false;
        }
        return true;
    }

    @m8.g
    public final u0 f(@m8.g View view, int i4, int i10, int i11, int i12) {
        return new u0(view, i4, i10, i11, i12);
    }

    public final int h() {
        return this.f43916d;
    }

    public int hashCode() {
        View view = this.f43913a;
        return ((((((((view != null ? view.hashCode() : 0) * 31) + this.f43914b) * 31) + this.f43915c) * 31) + this.f43916d) * 31) + this.f43917e;
    }

    public final int i() {
        return this.f43917e;
    }

    public final int j() {
        return this.f43914b;
    }

    public final int k() {
        return this.f43915c;
    }

    @m8.g
    public final View l() {
        return this.f43913a;
    }

    @m8.g
    public String toString() {
        return "ViewScrollChangeEvent(view=" + this.f43913a + ", scrollX=" + this.f43914b + ", scrollY=" + this.f43915c + ", oldScrollX=" + this.f43916d + ", oldScrollY=" + this.f43917e + ")";
    }
}
