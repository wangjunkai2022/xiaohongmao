package com.jakewharton.rxbinding4.widget;

import android.text.Editable;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextViewAfterTextChangeEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u001f\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/u1;", "", "Landroid/widget/TextView;", "a", "Landroid/text/Editable;", "b", "view", "editable", "c", "", "toString", "", "hashCode", "other", "", "equals", "Landroid/widget/TextView;", "f", "()Landroid/widget/TextView;", "Landroid/text/Editable;", "e", "()Landroid/text/Editable;", "<init>", "(Landroid/widget/TextView;Landroid/text/Editable;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class u1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final TextView f44051a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final Editable f44052b;

    public u1(@m8.g TextView textView, @m8.h Editable editable) {
        this.f44051a = textView;
        this.f44052b = editable;
    }

    public static /* synthetic */ u1 d(u1 u1Var, TextView textView, Editable editable, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            textView = u1Var.f44051a;
        }
        if ((i4 & 2) != 0) {
            editable = u1Var.f44052b;
        }
        return u1Var.c(textView, editable);
    }

    @m8.g
    public final TextView a() {
        return this.f44051a;
    }

    @m8.h
    public final Editable b() {
        return this.f44052b;
    }

    @m8.g
    public final u1 c(@m8.g TextView textView, @m8.h Editable editable) {
        return new u1(textView, editable);
    }

    @m8.h
    public final Editable e() {
        return this.f44052b;
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            if (obj instanceof u1) {
                u1 u1Var = (u1) obj;
                return Intrinsics.areEqual(this.f44051a, u1Var.f44051a) && Intrinsics.areEqual(this.f44052b, u1Var.f44052b);
            }
            return false;
        }
        return true;
    }

    @m8.g
    public final TextView f() {
        return this.f44051a;
    }

    public int hashCode() {
        TextView textView = this.f44051a;
        int hashCode = (textView != null ? textView.hashCode() : 0) * 31;
        Editable editable = this.f44052b;
        return hashCode + (editable != null ? editable.hashCode() : 0);
    }

    @m8.g
    public String toString() {
        return "TextViewAfterTextChangeEvent(view=" + this.f44051a + ", editable=" + ((Object) this.f44052b) + ")";
    }
}
