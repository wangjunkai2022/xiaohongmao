package com.jakewharton.rxbinding4.widget;

import android.widget.TextView;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextViewTextChangeEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b!\u0010\"J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\b\u001a\u00020\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\u0006HÆ\u0003J;\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u0006HÆ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0006HÖ\u0001J\u0013\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\f\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\r\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\b\u0010\u001c\u001a\u0004\b\u001f\u0010\u001eR\u0017\u0010\u000e\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\t\u0010\u001c\u001a\u0004\b \u0010\u001e¨\u0006#"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/b2;", "", "Landroid/widget/TextView;", "a", "", "b", "", "c", "d", "e", "view", "text", com.google.android.exoplayer2.text.ttml.d.f25725o0, com.google.android.exoplayer2.text.ttml.d.f25711c0, "count", "f", "", "toString", "hashCode", "other", "", "equals", "Landroid/widget/TextView;", "l", "()Landroid/widget/TextView;", "Ljava/lang/CharSequence;", "k", "()Ljava/lang/CharSequence;", "I", "j", "()I", "h", ContextChain.TAG_INFRA, "<init>", "(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class b2 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final TextView f43949a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f43950b;

    /* renamed from: c  reason: collision with root package name */
    private final int f43951c;

    /* renamed from: d  reason: collision with root package name */
    private final int f43952d;

    /* renamed from: e  reason: collision with root package name */
    private final int f43953e;

    public b2(@m8.g TextView textView, @m8.g CharSequence charSequence, int i4, int i10, int i11) {
        this.f43949a = textView;
        this.f43950b = charSequence;
        this.f43951c = i4;
        this.f43952d = i10;
        this.f43953e = i11;
    }

    public static /* synthetic */ b2 g(b2 b2Var, TextView textView, CharSequence charSequence, int i4, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            textView = b2Var.f43949a;
        }
        if ((i12 & 2) != 0) {
            charSequence = b2Var.f43950b;
        }
        CharSequence charSequence2 = charSequence;
        if ((i12 & 4) != 0) {
            i4 = b2Var.f43951c;
        }
        int i13 = i4;
        if ((i12 & 8) != 0) {
            i10 = b2Var.f43952d;
        }
        int i14 = i10;
        if ((i12 & 16) != 0) {
            i11 = b2Var.f43953e;
        }
        return b2Var.f(textView, charSequence2, i13, i14, i11);
    }

    @m8.g
    public final TextView a() {
        return this.f43949a;
    }

    @m8.g
    public final CharSequence b() {
        return this.f43950b;
    }

    public final int c() {
        return this.f43951c;
    }

    public final int d() {
        return this.f43952d;
    }

    public final int e() {
        return this.f43953e;
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            if (obj instanceof b2) {
                b2 b2Var = (b2) obj;
                return Intrinsics.areEqual(this.f43949a, b2Var.f43949a) && Intrinsics.areEqual(this.f43950b, b2Var.f43950b) && this.f43951c == b2Var.f43951c && this.f43952d == b2Var.f43952d && this.f43953e == b2Var.f43953e;
            }
            return false;
        }
        return true;
    }

    @m8.g
    public final b2 f(@m8.g TextView textView, @m8.g CharSequence charSequence, int i4, int i10, int i11) {
        return new b2(textView, charSequence, i4, i10, i11);
    }

    public final int h() {
        return this.f43952d;
    }

    public int hashCode() {
        TextView textView = this.f43949a;
        int hashCode = (textView != null ? textView.hashCode() : 0) * 31;
        CharSequence charSequence = this.f43950b;
        return ((((((hashCode + (charSequence != null ? charSequence.hashCode() : 0)) * 31) + this.f43951c) * 31) + this.f43952d) * 31) + this.f43953e;
    }

    public final int i() {
        return this.f43953e;
    }

    public final int j() {
        return this.f43951c;
    }

    @m8.g
    public final CharSequence k() {
        return this.f43950b;
    }

    @m8.g
    public final TextView l() {
        return this.f43949a;
    }

    @m8.g
    public String toString() {
        return "TextViewTextChangeEvent(view=" + this.f43949a + ", text=" + this.f43950b + ", start=" + this.f43951c + ", before=" + this.f43952d + ", count=" + this.f43953e + ")";
    }
}
