package com.jakewharton.rxbinding4.widget;

import android.view.KeyEvent;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextViewEditorActionEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0003J)\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/y1;", "", "Landroid/widget/TextView;", "a", "", "b", "Landroid/view/KeyEvent;", "c", "view", "actionId", "keyEvent", "d", "", "toString", "hashCode", "other", "", "equals", "Landroid/widget/TextView;", "h", "()Landroid/widget/TextView;", "I", "f", "()I", "Landroid/view/KeyEvent;", "g", "()Landroid/view/KeyEvent;", "<init>", "(Landroid/widget/TextView;ILandroid/view/KeyEvent;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class y1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final TextView f44069a;

    /* renamed from: b  reason: collision with root package name */
    private final int f44070b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private final KeyEvent f44071c;

    public y1(@m8.g TextView textView, int i4, @m8.h KeyEvent keyEvent) {
        this.f44069a = textView;
        this.f44070b = i4;
        this.f44071c = keyEvent;
    }

    public static /* synthetic */ y1 e(y1 y1Var, TextView textView, int i4, KeyEvent keyEvent, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            textView = y1Var.f44069a;
        }
        if ((i10 & 2) != 0) {
            i4 = y1Var.f44070b;
        }
        if ((i10 & 4) != 0) {
            keyEvent = y1Var.f44071c;
        }
        return y1Var.d(textView, i4, keyEvent);
    }

    @m8.g
    public final TextView a() {
        return this.f44069a;
    }

    public final int b() {
        return this.f44070b;
    }

    @m8.h
    public final KeyEvent c() {
        return this.f44071c;
    }

    @m8.g
    public final y1 d(@m8.g TextView textView, int i4, @m8.h KeyEvent keyEvent) {
        return new y1(textView, i4, keyEvent);
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            if (obj instanceof y1) {
                y1 y1Var = (y1) obj;
                return Intrinsics.areEqual(this.f44069a, y1Var.f44069a) && this.f44070b == y1Var.f44070b && Intrinsics.areEqual(this.f44071c, y1Var.f44071c);
            }
            return false;
        }
        return true;
    }

    public final int f() {
        return this.f44070b;
    }

    @m8.h
    public final KeyEvent g() {
        return this.f44071c;
    }

    @m8.g
    public final TextView h() {
        return this.f44069a;
    }

    public int hashCode() {
        TextView textView = this.f44069a;
        int hashCode = (((textView != null ? textView.hashCode() : 0) * 31) + this.f44070b) * 31;
        KeyEvent keyEvent = this.f44071c;
        return hashCode + (keyEvent != null ? keyEvent.hashCode() : 0);
    }

    @m8.g
    public String toString() {
        return "TextViewEditorActionEvent(view=" + this.f44069a + ", actionId=" + this.f44070b + ", keyEvent=" + this.f44071c + ")";
    }
}
