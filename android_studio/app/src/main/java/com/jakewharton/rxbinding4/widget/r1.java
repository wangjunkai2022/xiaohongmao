package com.jakewharton.rxbinding4.widget;

import android.widget.SeekBar;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SeekBarChangeEvent.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J'\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fHÖ\u0003R\u001a\u0010\b\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0012\u0010\u0014R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/r1;", "Lcom/jakewharton/rxbinding4/widget/o1;", "Landroid/widget/SeekBar;", "b", "", "c", "", "d", "view", "progress", "fromUser", "e", "", "toString", "hashCode", "", "other", "equals", "a", "Landroid/widget/SeekBar;", "()Landroid/widget/SeekBar;", "I", "h", "()I", "Z", "g", "()Z", "<init>", "(Landroid/widget/SeekBar;IZ)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class r1 extends o1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final SeekBar f44036a;

    /* renamed from: b  reason: collision with root package name */
    private final int f44037b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f44038c;

    public r1(@m8.g SeekBar seekBar, int i4, boolean z9) {
        super(null);
        this.f44036a = seekBar;
        this.f44037b = i4;
        this.f44038c = z9;
    }

    public static /* synthetic */ r1 f(r1 r1Var, SeekBar seekBar, int i4, boolean z9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            seekBar = r1Var.a();
        }
        if ((i10 & 2) != 0) {
            i4 = r1Var.f44037b;
        }
        if ((i10 & 4) != 0) {
            z9 = r1Var.f44038c;
        }
        return r1Var.e(seekBar, i4, z9);
    }

    @Override // com.jakewharton.rxbinding4.widget.o1
    @m8.g
    public SeekBar a() {
        return this.f44036a;
    }

    @m8.g
    public final SeekBar b() {
        return a();
    }

    public final int c() {
        return this.f44037b;
    }

    public final boolean d() {
        return this.f44038c;
    }

    @m8.g
    public final r1 e(@m8.g SeekBar seekBar, int i4, boolean z9) {
        return new r1(seekBar, i4, z9);
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            if (obj instanceof r1) {
                r1 r1Var = (r1) obj;
                return Intrinsics.areEqual(a(), r1Var.a()) && this.f44037b == r1Var.f44037b && this.f44038c == r1Var.f44038c;
            }
            return false;
        }
        return true;
    }

    public final boolean g() {
        return this.f44038c;
    }

    public final int h() {
        return this.f44037b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        SeekBar a10 = a();
        int hashCode = (((a10 != null ? a10.hashCode() : 0) * 31) + this.f44037b) * 31;
        boolean z9 = this.f44038c;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        return hashCode + i4;
    }

    @m8.g
    public String toString() {
        return "SeekBarProgressChangeEvent(view=" + a() + ", progress=" + this.f44037b + ", fromUser=" + this.f44038c + ")";
    }
}
