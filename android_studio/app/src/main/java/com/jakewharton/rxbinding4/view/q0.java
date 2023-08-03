package com.jakewharton.rxbinding4.view;

import android.view.View;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViewLayoutChangeEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0004\u0012\u0006\u0010\u0014\u001a\u00020\u0004\u0012\u0006\u0010\u0015\u001a\u00020\u0004¢\u0006\u0004\b*\u0010+J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J\t\u0010\t\u001a\u00020\u0004HÆ\u0003J\t\u0010\n\u001a\u00020\u0004HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0004HÆ\u0003J\t\u0010\f\u001a\u00020\u0004HÆ\u0003Jc\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u0004HÆ\u0001J\t\u0010\u0018\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010\u000e\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010 \u001a\u0004\b!\u0010\"R\u0017\u0010\u000f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010 \u001a\u0004\b#\u0010\"R\u0017\u0010\u0010\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010 \u001a\u0004\b$\u0010\"R\u0017\u0010\u0011\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\b\u0010 \u001a\u0004\b%\u0010\"R\u0017\u0010\u0012\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\t\u0010 \u001a\u0004\b&\u0010\"R\u0017\u0010\u0013\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\n\u0010 \u001a\u0004\b'\u0010\"R\u0017\u0010\u0014\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u000b\u0010 \u001a\u0004\b(\u0010\"R\u0017\u0010\u0015\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\f\u0010 \u001a\u0004\b)\u0010\"¨\u0006,"}, d2 = {"Lcom/jakewharton/rxbinding4/view/q0;", "", "Landroid/view/View;", "a", "", "b", "c", "d", "e", "f", "g", "h", ContextChain.TAG_INFRA, "view", com.google.android.exoplayer2.text.ttml.d.f25720l0, "top", com.google.android.exoplayer2.text.ttml.d.f25723n0, "bottom", "oldLeft", "oldTop", "oldRight", "oldBottom", "j", "", "toString", "hashCode", "other", "", "equals", "Landroid/view/View;", "t", "()Landroid/view/View;", "I", "m", "()I", "s", "r", "l", "o", "q", "p", "n", "<init>", "(Landroid/view/View;IIIIIIII)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class q0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final View f43893a;

    /* renamed from: b  reason: collision with root package name */
    private final int f43894b;

    /* renamed from: c  reason: collision with root package name */
    private final int f43895c;

    /* renamed from: d  reason: collision with root package name */
    private final int f43896d;

    /* renamed from: e  reason: collision with root package name */
    private final int f43897e;

    /* renamed from: f  reason: collision with root package name */
    private final int f43898f;

    /* renamed from: g  reason: collision with root package name */
    private final int f43899g;

    /* renamed from: h  reason: collision with root package name */
    private final int f43900h;

    /* renamed from: i  reason: collision with root package name */
    private final int f43901i;

    public q0(@m8.g View view, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.f43893a = view;
        this.f43894b = i4;
        this.f43895c = i10;
        this.f43896d = i11;
        this.f43897e = i12;
        this.f43898f = i13;
        this.f43899g = i14;
        this.f43900h = i15;
        this.f43901i = i16;
    }

    @m8.g
    public final View a() {
        return this.f43893a;
    }

    public final int b() {
        return this.f43894b;
    }

    public final int c() {
        return this.f43895c;
    }

    public final int d() {
        return this.f43896d;
    }

    public final int e() {
        return this.f43897e;
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            if (obj instanceof q0) {
                q0 q0Var = (q0) obj;
                return Intrinsics.areEqual(this.f43893a, q0Var.f43893a) && this.f43894b == q0Var.f43894b && this.f43895c == q0Var.f43895c && this.f43896d == q0Var.f43896d && this.f43897e == q0Var.f43897e && this.f43898f == q0Var.f43898f && this.f43899g == q0Var.f43899g && this.f43900h == q0Var.f43900h && this.f43901i == q0Var.f43901i;
            }
            return false;
        }
        return true;
    }

    public final int f() {
        return this.f43898f;
    }

    public final int g() {
        return this.f43899g;
    }

    public final int h() {
        return this.f43900h;
    }

    public int hashCode() {
        View view = this.f43893a;
        return ((((((((((((((((view != null ? view.hashCode() : 0) * 31) + this.f43894b) * 31) + this.f43895c) * 31) + this.f43896d) * 31) + this.f43897e) * 31) + this.f43898f) * 31) + this.f43899g) * 31) + this.f43900h) * 31) + this.f43901i;
    }

    public final int i() {
        return this.f43901i;
    }

    @m8.g
    public final q0 j(@m8.g View view, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        return new q0(view, i4, i10, i11, i12, i13, i14, i15, i16);
    }

    public final int l() {
        return this.f43897e;
    }

    public final int m() {
        return this.f43894b;
    }

    public final int n() {
        return this.f43901i;
    }

    public final int o() {
        return this.f43898f;
    }

    public final int p() {
        return this.f43900h;
    }

    public final int q() {
        return this.f43899g;
    }

    public final int r() {
        return this.f43896d;
    }

    public final int s() {
        return this.f43895c;
    }

    @m8.g
    public final View t() {
        return this.f43893a;
    }

    @m8.g
    public String toString() {
        return "ViewLayoutChangeEvent(view=" + this.f43893a + ", left=" + this.f43894b + ", top=" + this.f43895c + ", right=" + this.f43896d + ", bottom=" + this.f43897e + ", oldLeft=" + this.f43898f + ", oldTop=" + this.f43899g + ", oldRight=" + this.f43900h + ", oldBottom=" + this.f43901i + ")";
    }
}
