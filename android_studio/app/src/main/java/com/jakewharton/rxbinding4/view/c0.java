package com.jakewharton.rxbinding4.view;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViewAttachEvent.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nHÖ\u0003R\u001a\u0010\u0004\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u000e\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/jakewharton/rxbinding4/view/c0;", "Lcom/jakewharton/rxbinding4/view/e0;", "Landroid/view/View;", "b", "view", "c", "", "toString", "", "hashCode", "", "other", "", "equals", "a", "Landroid/view/View;", "()Landroid/view/View;", "<init>", "(Landroid/view/View;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class c0 extends e0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final View f43849a;

    public c0(@m8.g View view) {
        super(null);
        this.f43849a = view;
    }

    public static /* synthetic */ c0 d(c0 c0Var, View view, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            view = c0Var.a();
        }
        return c0Var.c(view);
    }

    @Override // com.jakewharton.rxbinding4.view.e0
    @m8.g
    public View a() {
        return this.f43849a;
    }

    @m8.g
    public final View b() {
        return a();
    }

    @m8.g
    public final c0 c(@m8.g View view) {
        return new c0(view);
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            return (obj instanceof c0) && Intrinsics.areEqual(a(), ((c0) obj).a());
        }
        return true;
    }

    public int hashCode() {
        View a10 = a();
        if (a10 != null) {
            return a10.hashCode();
        }
        return 0;
    }

    @m8.g
    public String toString() {
        return "ViewAttachAttachedEvent(view=" + a() + ")";
    }
}
