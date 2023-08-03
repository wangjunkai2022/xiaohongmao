package org.bouncycastle.pqc.crypto.qtesla;

/* loaded from: classes5.dex */
final class IntSlicer {
    private int base;
    private final int[] values;

    IntSlicer(int[] iArr, int i4) {
        this.values = iArr;
        this.base = i4;
    }

    final int at(int i4) {
        return this.values[this.base + i4];
    }

    final int at(int i4, int i10) {
        this.values[this.base + i4] = i10;
        return i10;
    }

    final int at(int i4, long j4) {
        int[] iArr = this.values;
        int i10 = this.base + i4;
        int i11 = (int) j4;
        iArr[i10] = i11;
        return i11;
    }

    final IntSlicer copy() {
        return new IntSlicer(this.values, this.base);
    }

    final IntSlicer from(int i4) {
        return new IntSlicer(this.values, this.base + i4);
    }

    final void incBase(int i4) {
        this.base += i4;
    }
}
