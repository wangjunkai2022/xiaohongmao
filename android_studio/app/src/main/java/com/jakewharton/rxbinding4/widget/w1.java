package com.jakewharton.rxbinding4.widget;

import android.widget.TextView;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextViewBeforeTextChangeEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b!\u0010\"J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\b\u001a\u00020\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\u0006HÆ\u0003J;\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u0006HÆ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0006HÖ\u0001J\u0013\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\f\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\r\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\b\u0010\u001c\u001a\u0004\b\u001f\u0010\u001eR\u0017\u0010\u000e\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\t\u0010\u001c\u001a\u0004\b \u0010\u001e¨\u0006#"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/w1;", "", "Landroid/widget/TextView;", "a", "", "b", "", "c", "d", "e", "view", "text", com.google.android.exoplayer2.text.ttml.d.f25725o0, "count", com.google.android.exoplayer2.text.ttml.d.f25712d0, "f", "", "toString", "hashCode", "other", "", "equals", "Landroid/widget/TextView;", "l", "()Landroid/widget/TextView;", "Ljava/lang/CharSequence;", "k", "()Ljava/lang/CharSequence;", "I", "j", "()I", ContextChain.TAG_INFRA, "h", "<init>", "(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class w1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final TextView f44061a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f44062b;

    /* renamed from: c  reason: collision with root package name */
    private final int f44063c;

    /* renamed from: d  reason: collision with root package name */
    private final int f44064d;

    /* renamed from: e  reason: collision with root package name */
    private final int f44065e;

    public w1(@m8.g TextView textView, @m8.g CharSequence charSequence, int i4, int i10, int i11) {
        this.f44061a = textView;
        this.f44062b = charSequence;
        this.f44063c = i4;
        this.f44064d = i10;
        this.f44065e = i11;
    }

    public static /* synthetic */ w1 g(w1 w1Var, TextView textView, CharSequence charSequence, int i4, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            textView = w1Var.f44061a;
        }
        if ((i12 & 2) != 0) {
            charSequence = w1Var.f44062b;
        }
        CharSequence charSequence2 = charSequence;
        if ((i12 & 4) != 0) {
            i4 = w1Var.f44063c;
        }
        int i13 = i4;
        if ((i12 & 8) != 0) {
            i10 = w1Var.f44064d;
        }
        int i14 = i10;
        if ((i12 & 16) != 0) {
            i11 = w1Var.f44065e;
        }
        return w1Var.f(textView, charSequence2, i13, i14, i11);
    }

    @m8.g
    public final TextView a() {
        return this.f44061a;
    }

    @m8.g
    public final CharSequence b() {
        return this.f44062b;
    }

    public final int c() {
        return this.f44063c;
    }

    public final int d() {
        return this.f44064d;
    }

    public final int e() {
        return this.f44065e;
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            if (obj instanceof w1) {
                w1 w1Var = (w1) obj;
                return Intrinsics.areEqual(this.f44061a, w1Var.f44061a) && Intrinsics.areEqual(this.f44062b, w1Var.f44062b) && this.f44063c == w1Var.f44063c && this.f44064d == w1Var.f44064d && this.f44065e == w1Var.f44065e;
            }
            return false;
        }
        return true;
    }

    @m8.g
    public final w1 f(@m8.g TextView textView, @m8.g CharSequence charSequence, int i4, int i10, int i11) {
        return new w1(textView, charSequence, i4, i10, i11);
    }

    public final int h() {
        return this.f44065e;
    }

    public int hashCode() {
        TextView textView = this.f44061a;
        int hashCode = (textView != null ? textView.hashCode() : 0) * 31;
        CharSequence charSequence = this.f44062b;
        return ((((((hashCode + (charSequence != null ? charSequence.hashCode() : 0)) * 31) + this.f44063c) * 31) + this.f44064d) * 31) + this.f44065e;
    }

    public final int i() {
        return this.f44064d;
    }

    public final int j() {
        return this.f44063c;
    }

    @m8.g
    public final CharSequence k() {
        return this.f44062b;
    }

    @m8.g
    public final TextView l() {
        return this.f44061a;
    }

    @m8.g
    public String toString() {
        return "TextViewBeforeTextChangeEvent(view=" + this.f44061a + ", text=" + this.f44062b + ", start=" + this.f44063c + ", count=" + this.f44064d + ", after=" + this.f44065e + ")";
    }
}
