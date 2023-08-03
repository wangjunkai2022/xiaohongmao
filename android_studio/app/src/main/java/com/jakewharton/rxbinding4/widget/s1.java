package com.jakewharton.rxbinding4.widget;

import android.widget.SeekBar;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SeekBarChangeEvent.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nHÖ\u0003R\u001a\u0010\u0004\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u000e\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/s1;", "Lcom/jakewharton/rxbinding4/widget/o1;", "Landroid/widget/SeekBar;", "b", "view", "c", "", "toString", "", "hashCode", "", "other", "", "equals", "a", "Landroid/widget/SeekBar;", "()Landroid/widget/SeekBar;", "<init>", "(Landroid/widget/SeekBar;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class s1 extends o1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final SeekBar f44043a;

    public s1(@m8.g SeekBar seekBar) {
        super(null);
        this.f44043a = seekBar;
    }

    public static /* synthetic */ s1 d(s1 s1Var, SeekBar seekBar, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            seekBar = s1Var.a();
        }
        return s1Var.c(seekBar);
    }

    @Override // com.jakewharton.rxbinding4.widget.o1
    @m8.g
    public SeekBar a() {
        return this.f44043a;
    }

    @m8.g
    public final SeekBar b() {
        return a();
    }

    @m8.g
    public final s1 c(@m8.g SeekBar seekBar) {
        return new s1(seekBar);
    }

    public boolean equals(@m8.h Object obj) {
        if (this != obj) {
            return (obj instanceof s1) && Intrinsics.areEqual(a(), ((s1) obj).a());
        }
        return true;
    }

    public int hashCode() {
        SeekBar a10 = a();
        if (a10 != null) {
            return a10.hashCode();
        }
        return 0;
    }

    @m8.g
    public String toString() {
        return "SeekBarStartChangeEvent(view=" + a() + ")";
    }
}
