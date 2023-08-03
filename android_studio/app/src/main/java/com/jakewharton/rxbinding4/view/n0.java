package com.jakewharton.rxbinding4.view;

import android.view.View;
import android.view.ViewGroup;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViewGroupHierarchyChangeEvent.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rHÖ\u0003R\u001a\u0010\u0006\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0015\u001a\u0004\b\u0011\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/jakewharton/rxbinding4/view/n0;", "Lcom/jakewharton/rxbinding4/view/k0;", "Landroid/view/ViewGroup;", "c", "Landroid/view/View;", "d", "view", "child", "e", "", "toString", "", "hashCode", "", "other", "", "equals", "a", "Landroid/view/ViewGroup;", "b", "()Landroid/view/ViewGroup;", "Landroid/view/View;", "()Landroid/view/View;", "<init>", "(Landroid/view/ViewGroup;Landroid/view/View;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class n0 extends k0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final ViewGroup f43881a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final View f43882b;

    public n0(@m8.g ViewGroup viewGroup, @m8.g View view) {
        super(null);
        this.f43881a = viewGroup;
        this.f43882b = view;
    }

    public static /* synthetic */ n0 f(n0 n0Var, ViewGroup viewGroup, View view, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            viewGroup = n0Var.b();
        }
        if ((i4 & 2) != 0) {
            view = n0Var.a();
        }
        return n0Var.e(viewGroup, view);
    }

    @Override // com.jakewharton.rxbinding4.view.k0
    @m8.g
    public View a() {
        return this.f43882b;
    }

    @Override // com.jakewharton.rxbinding4.view.k0
    @m8.g
    public ViewGroup b() {
        return this.f43881a;
    }

    @m8.g
    public final ViewGroup c() {
        return b();
    }

    @m8.g
    public final View d() {
        return a();
    }

    @m8.g
    public final n0 e(@m8.g ViewGroup viewGroup, @m8.g View view) {
        return new n0(viewGroup, view);
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            if (obj instanceof n0) {
                n0 n0Var = (n0) obj;
                return Intrinsics.areEqual(b(), n0Var.b()) && Intrinsics.areEqual(a(), n0Var.a());
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        ViewGroup b10 = b();
        int hashCode = (b10 != null ? b10.hashCode() : 0) * 31;
        View a10 = a();
        return hashCode + (a10 != null ? a10.hashCode() : 0);
    }

    @m8.g
    public String toString() {
        return "ViewGroupHierarchyChildViewRemoveEvent(view=" + b() + ", child=" + a() + ")";
    }
}
