package com.fasterxml.jackson.core.sym;

import java.util.Arrays;

/* compiled from: NameN.java */
/* loaded from: classes.dex */
public final class g extends f {

    /* renamed from: c  reason: collision with root package name */
    private final int f14216c;

    /* renamed from: d  reason: collision with root package name */
    private final int f14217d;

    /* renamed from: e  reason: collision with root package name */
    private final int f14218e;

    /* renamed from: f  reason: collision with root package name */
    private final int f14219f;

    /* renamed from: g  reason: collision with root package name */
    private final int f14220g;

    /* renamed from: h  reason: collision with root package name */
    private final int[] f14221h;

    g(String str, int i4, int i10, int i11, int i12, int i13, int[] iArr, int i14) {
        super(str, i4);
        this.f14216c = i10;
        this.f14217d = i11;
        this.f14218e = i12;
        this.f14219f = i13;
        this.f14221h = iArr;
        this.f14220g = i14;
    }

    private final boolean f(int[] iArr) {
        int i4 = this.f14220g - 4;
        for (int i10 = 0; i10 < i4; i10++) {
            if (iArr[i10 + 4] != this.f14221h[i10]) {
                return false;
            }
        }
        return true;
    }

    public static g g(String str, int i4, int[] iArr, int i10) {
        if (i10 >= 4) {
            return new g(str, i4, iArr[0], iArr[1], iArr[2], iArr[3], i10 + (-4) > 0 ? Arrays.copyOfRange(iArr, 4, i10) : null, i10);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.fasterxml.jackson.core.sym.f
    public boolean a(int i4) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.f
    public boolean b(int i4, int i10) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.f
    public boolean c(int i4, int i10, int i11) {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0040 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0054 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0055 A[RETURN] */
    @Override // com.fasterxml.jackson.core.sym.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean d(int[] r7, int r8) {
        /*
            r6 = this;
            int r0 = r6.f14220g
            r1 = 0
            if (r8 == r0) goto L6
            return r1
        L6:
            r0 = r7[r1]
            int r2 = r6.f14216c
            if (r0 == r2) goto Ld
            return r1
        Ld:
            r0 = 1
            r2 = r7[r0]
            int r3 = r6.f14217d
            if (r2 == r3) goto L15
            return r1
        L15:
            r2 = 2
            r3 = r7[r2]
            int r4 = r6.f14218e
            if (r3 == r4) goto L1d
            return r1
        L1d:
            r3 = 3
            r4 = r7[r3]
            int r5 = r6.f14219f
            if (r4 == r5) goto L25
            return r1
        L25:
            switch(r8) {
                case 4: goto L55;
                case 5: goto L4b;
                case 6: goto L41;
                case 7: goto L37;
                case 8: goto L2d;
                default: goto L28;
            }
        L28:
            boolean r7 = r6.f(r7)
            return r7
        L2d:
            r8 = 7
            r8 = r7[r8]
            int[] r4 = r6.f14221h
            r3 = r4[r3]
            if (r8 == r3) goto L37
            return r1
        L37:
            r8 = 6
            r8 = r7[r8]
            int[] r3 = r6.f14221h
            r2 = r3[r2]
            if (r8 == r2) goto L41
            return r1
        L41:
            r8 = 5
            r8 = r7[r8]
            int[] r2 = r6.f14221h
            r2 = r2[r0]
            if (r8 == r2) goto L4b
            return r1
        L4b:
            r8 = 4
            r7 = r7[r8]
            int[] r8 = r6.f14221h
            r8 = r8[r1]
            if (r7 == r8) goto L55
            return r1
        L55:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.sym.g.d(int[], int):boolean");
    }
}
