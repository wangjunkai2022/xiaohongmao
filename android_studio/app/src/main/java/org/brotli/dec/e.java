package org.brotli.dec;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Decode.java */
/* loaded from: classes5.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final int f91604a = 8;

    /* renamed from: b  reason: collision with root package name */
    private static final int f91605b = 16;

    /* renamed from: c  reason: collision with root package name */
    private static final int f91606c = 256;

    /* renamed from: d  reason: collision with root package name */
    private static final int f91607d = 704;

    /* renamed from: e  reason: collision with root package name */
    private static final int f91608e = 26;

    /* renamed from: f  reason: collision with root package name */
    private static final int f91609f = 6;

    /* renamed from: g  reason: collision with root package name */
    private static final int f91610g = 2;

    /* renamed from: h  reason: collision with root package name */
    private static final int f91611h = 8;

    /* renamed from: i  reason: collision with root package name */
    private static final int f91612i = 255;

    /* renamed from: j  reason: collision with root package name */
    private static final int f91613j = 18;

    /* renamed from: l  reason: collision with root package name */
    private static final int f91615l = 16;

    /* renamed from: k  reason: collision with root package name */
    private static final int[] f91614k = {1, 2, 3, 4, 0, 5, 17, 6, 16, 7, 8, 9, 10, 11, 12, 13, 14, 15};

    /* renamed from: m  reason: collision with root package name */
    private static final int[] f91616m = {3, 2, 1, 0, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2};

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f91617n = {0, 0, 0, 0, -1, 1, -2, 2, -3, 3, -1, 1, -2, 2, -3, 3};

    /* renamed from: o  reason: collision with root package name */
    private static final int[] f91618o = {131072, 131076, 131075, 196610, 131072, 131076, 131075, 262145, 131072, 131076, 131075, 196610, 131072, 131076, 131075, 262149};

    e() {
    }

    private static void a(l lVar) {
        a aVar = lVar.f91655c;
        byte[] bArr = lVar.f91656d;
        int i4 = lVar.f91659g;
        if (i4 <= 0) {
            a.k(aVar);
            lVar.f91653a = 1;
            return;
        }
        int min = Math.min(lVar.Q - lVar.f91670r, i4);
        a.c(aVar, bArr, lVar.f91670r, min);
        lVar.f91659g -= min;
        int i10 = lVar.f91670r + min;
        lVar.f91670r = i10;
        int i11 = lVar.Q;
        if (i10 == i11) {
            lVar.f91654b = 5;
            lVar.Y = i11;
            lVar.X = 0;
            lVar.f91653a = 12;
            return;
        }
        a.k(aVar);
        lVar.f91653a = 1;
    }

    private static void b(l lVar, int i4) {
        int i10;
        a aVar = lVar.f91655c;
        int[] iArr = lVar.f91668p;
        int i11 = i4 * 2;
        a.d(aVar);
        int i12 = i4 * 1080;
        int r9 = r(lVar.f91657e, i12, aVar);
        lVar.f91666n[i4] = m(lVar.f91658f, i12, aVar);
        if (r9 == 1) {
            i10 = iArr[i11 + 1] + 1;
        } else {
            i10 = r9 == 0 ? iArr[i11] : r9 - 2;
        }
        int[] iArr2 = lVar.f91667o;
        if (i10 >= iArr2[i4]) {
            i10 -= iArr2[i4];
        }
        int i13 = i11 + 1;
        iArr[i11] = iArr[i13];
        iArr[i13] = i10;
    }

    private static void c(l lVar) {
        b(lVar, 1);
        lVar.F = lVar.f91664l.f91629c[lVar.f91668p[3]];
    }

    private static int d(int i4, byte[] bArr, a aVar) {
        a.j(aVar);
        int h4 = h(aVar) + 1;
        if (h4 == 1) {
            n.a(bArr, 0, i4);
            return h4;
        }
        int i10 = a.i(aVar, 1) == 1 ? a.i(aVar, 4) + 1 : 0;
        int[] iArr = new int[1080];
        n(h4 + i10, iArr, 0, aVar);
        int i11 = 0;
        while (i11 < i4) {
            a.j(aVar);
            a.d(aVar);
            int r9 = r(iArr, 0, aVar);
            if (r9 == 0) {
                bArr[i11] = 0;
            } else if (r9 <= i10) {
                for (int i12 = (1 << r9) + a.i(aVar, r9); i12 != 0; i12--) {
                    if (i11 < i4) {
                        bArr[i11] = 0;
                        i11++;
                    } else {
                        throw new c("Corrupted context map");
                    }
                }
                continue;
            } else {
                bArr[i11] = (byte) (r9 - i10);
            }
            i11++;
        }
        if (a.i(aVar, 1) == 1) {
            j(bArr, i4);
        }
        return h4;
    }

    private static void e(l lVar) {
        b(lVar, 2);
        lVar.C = lVar.f91668p[5] << 2;
    }

    private static void f(l lVar) {
        b(lVar, 0);
        int i4 = lVar.f91668p[1];
        int i10 = i4 << 6;
        lVar.B = i10;
        int i11 = lVar.A[i10] & 255;
        lVar.f91674v = i11;
        lVar.f91675w = lVar.f91663k.f91629c[i11];
        byte b10 = lVar.f91678z[i4];
        int[] iArr = d.f91603b;
        lVar.D = iArr[b10];
        lVar.E = iArr[b10 + 1];
    }

    private static void g(a aVar, l lVar) {
        boolean z9 = a.i(aVar, 1) == 1;
        lVar.f91660h = z9;
        lVar.f91659g = 0;
        lVar.f91661i = false;
        lVar.f91662j = false;
        if (!z9 || a.i(aVar, 1) == 0) {
            int i4 = a.i(aVar, 2) + 4;
            if (i4 == 7) {
                lVar.f91662j = true;
                if (a.i(aVar, 1) == 0) {
                    int i10 = a.i(aVar, 2);
                    if (i10 == 0) {
                        return;
                    }
                    for (int i11 = 0; i11 < i10; i11++) {
                        int i12 = a.i(aVar, 8);
                        if (i12 == 0 && i11 + 1 == i10 && i10 > 1) {
                            throw new c("Exuberant nibble");
                        }
                        lVar.f91659g = (i12 << (i11 * 8)) | lVar.f91659g;
                    }
                } else {
                    throw new c("Corrupted reserved bit");
                }
            } else {
                for (int i13 = 0; i13 < i4; i13++) {
                    int i14 = a.i(aVar, 4);
                    if (i14 == 0 && i13 + 1 == i4 && i4 > 4) {
                        throw new c("Exuberant nibble");
                    }
                    lVar.f91659g = (i14 << (i13 * 4)) | lVar.f91659g;
                }
            }
            lVar.f91659g++;
            if (lVar.f91660h) {
                return;
            }
            lVar.f91661i = a.i(aVar, 1) == 1;
        }
    }

    private static int h(a aVar) {
        if (a.i(aVar, 1) != 0) {
            int i4 = a.i(aVar, 3);
            if (i4 == 0) {
                return 1;
            }
            return a.i(aVar, i4) + (1 << i4);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a7, code lost:
        throw new org.brotli.dec.c("Invalid backward reference");
     */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x00da A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x00d6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x01f6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0309 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0013 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0013 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0304 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013c A[LOOP:2: B:48:0x013c->B:54:0x0172, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x017f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void i(org.brotli.dec.l r19) {
        /*
            Method dump skipped, instructions count: 900
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.brotli.dec.e.i(org.brotli.dec.l):void");
    }

    private static void j(byte[] bArr, int i4) {
        int[] iArr = new int[256];
        for (int i10 = 0; i10 < 256; i10++) {
            iArr[i10] = i10;
        }
        for (int i11 = 0; i11 < i4; i11++) {
            int i12 = bArr[i11] & 255;
            bArr[i11] = (byte) iArr[i12];
            if (i12 != 0) {
                l(iArr, i12);
            }
        }
    }

    private static void k(l lVar) {
        int i4;
        int i10 = lVar.P;
        long j4 = lVar.R;
        if (i10 > j4) {
            while (true) {
                int i11 = i10 >> 1;
                if (i11 <= ((int) j4) + lVar.S.length) {
                    break;
                }
                i10 = i11;
            }
            if (!lVar.f91660h && i10 < 16384 && lVar.P >= 16384) {
                i10 = 16384;
            }
        }
        int i12 = lVar.Q;
        if (i10 <= i12) {
            return;
        }
        byte[] bArr = new byte[i10 + 37];
        byte[] bArr2 = lVar.f91656d;
        if (bArr2 != null) {
            System.arraycopy(bArr2, 0, bArr, 0, i12);
        } else {
            byte[] bArr3 = lVar.S;
            if (bArr3.length != 0) {
                int length = bArr3.length;
                int i13 = lVar.O;
                if (length > i13) {
                    i4 = length - i13;
                } else {
                    i13 = length;
                    i4 = 0;
                }
                System.arraycopy(bArr3, i4, bArr, 0, i13);
                lVar.f91670r = i13;
                lVar.T = i13;
            }
        }
        lVar.f91656d = bArr;
        lVar.Q = i10;
    }

    private static void l(int[] iArr, int i4) {
        int i10 = iArr[i4];
        while (i4 > 0) {
            iArr[i4] = iArr[i4 - 1];
            i4--;
        }
        iArr[0] = i10;
    }

    private static int m(int[] iArr, int i4, a aVar) {
        a.d(aVar);
        int r9 = r(iArr, i4, aVar);
        return j.f91632a[r9] + a.i(aVar, j.f91633b[r9]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void n(int r16, int[] r17, int r18, org.brotli.dec.a r19) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.brotli.dec.e.n(int, int[], int, org.brotli.dec.a):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0080, code lost:
        if (r4 != 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0082, code lost:
        org.brotli.dec.n.b(r13, r3, r12 - r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0086, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008e, code lost:
        throw new org.brotli.dec.c("Unused space");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void o(int[] r11, int r12, int[] r13, org.brotli.dec.a r14) {
        /*
            r0 = 32
            int[] r0 = new int[r0]
            r1 = 0
            r2 = 5
            r3 = 18
            org.brotli.dec.g.a(r0, r1, r2, r11, r3)
            r11 = 32768(0x8000, float:4.5918E-41)
            r2 = 8
            r3 = 0
            r4 = 32768(0x8000, float:4.5918E-41)
            r5 = 0
        L15:
            r6 = 0
        L16:
            if (r3 >= r12) goto L80
            if (r4 <= 0) goto L80
            org.brotli.dec.a.j(r14)
            org.brotli.dec.a.d(r14)
            long r7 = r14.f91593f
            int r9 = r14.f91594g
            long r7 = r7 >>> r9
            int r8 = (int) r7
            r7 = r8 & 31
            r8 = r0[r7]
            r10 = 16
            int r8 = r8 >> r10
            int r9 = r9 + r8
            r14.f91594g = r9
            r7 = r0[r7]
            r8 = 65535(0xffff, float:9.1834E-41)
            r7 = r7 & r8
            if (r7 >= r10) goto L46
            int r6 = r3 + 1
            r13[r3] = r7
            if (r7 == 0) goto L44
            int r2 = r11 >> r7
            int r4 = r4 - r2
            r3 = r6
            r2 = r7
            goto L15
        L44:
            r3 = r6
            goto L15
        L46:
            int r8 = r7 + (-14)
            if (r7 != r10) goto L4c
            r7 = r2
            goto L4d
        L4c:
            r7 = 0
        L4d:
            if (r5 == r7) goto L51
            r5 = r7
            r6 = 0
        L51:
            if (r6 <= 0) goto L57
            int r7 = r6 + (-2)
            int r7 = r7 << r8
            goto L58
        L57:
            r7 = r6
        L58:
            int r8 = org.brotli.dec.a.i(r14, r8)
            int r8 = r8 + 3
            int r7 = r7 + r8
            int r6 = r7 - r6
            int r8 = r3 + r6
            if (r8 > r12) goto L78
            r8 = 0
        L66:
            if (r8 >= r6) goto L70
            int r9 = r3 + 1
            r13[r3] = r5
            int r8 = r8 + 1
            r3 = r9
            goto L66
        L70:
            if (r5 == 0) goto L76
            int r8 = 15 - r5
            int r6 = r6 << r8
            int r4 = r4 - r6
        L76:
            r6 = r7
            goto L16
        L78:
            org.brotli.dec.c r11 = new org.brotli.dec.c
            java.lang.String r12 = "symbol + repeatDelta > numSymbols"
            r11.<init>(r12)
            throw r11
        L80:
            if (r4 != 0) goto L87
            int r12 = r12 - r3
            org.brotli.dec.n.b(r13, r3, r12)
            return
        L87:
            org.brotli.dec.c r11 = new org.brotli.dec.c
            java.lang.String r12 = "Unused space"
            r11.<init>(r12)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: org.brotli.dec.e.o(int[], int, int[], org.brotli.dec.a):void");
    }

    private static void p(l lVar) {
        int[] iArr;
        int[] iArr2;
        a aVar = lVar.f91655c;
        for (int i4 = 0; i4 < 3; i4++) {
            lVar.f91667o[i4] = h(aVar) + 1;
            lVar.f91666n[i4] = 268435456;
            int[] iArr3 = lVar.f91667o;
            if (iArr3[i4] > 1) {
                int i10 = i4 * 1080;
                n(iArr3[i4] + 2, lVar.f91657e, i10, aVar);
                n(26, lVar.f91658f, i10, aVar);
                lVar.f91666n[i4] = m(lVar.f91658f, i10, aVar);
            }
        }
        a.j(aVar);
        lVar.K = a.i(aVar, 2);
        int i11 = a.i(aVar, 4);
        int i12 = lVar.K;
        int i13 = (i11 << i12) + 16;
        lVar.I = i13;
        lVar.J = (1 << i12) - 1;
        int i14 = i13 + (48 << i12);
        lVar.f91678z = new byte[lVar.f91667o[0]];
        int i15 = 0;
        while (true) {
            iArr = lVar.f91667o;
            if (i15 >= iArr[0]) {
                break;
            }
            int min = Math.min(i15 + 96, iArr[0]);
            while (i15 < min) {
                lVar.f91678z[i15] = (byte) (a.i(aVar, 2) << 1);
                i15++;
            }
            a.j(aVar);
        }
        byte[] bArr = new byte[iArr[0] << 6];
        lVar.A = bArr;
        int d4 = d(iArr[0] << 6, bArr, aVar);
        lVar.f91673u = true;
        int i16 = 0;
        while (true) {
            iArr2 = lVar.f91667o;
            if (i16 >= (iArr2[0] << 6)) {
                break;
            } else if (lVar.A[i16] != (i16 >> 6)) {
                lVar.f91673u = false;
                break;
            } else {
                i16++;
            }
        }
        byte[] bArr2 = new byte[iArr2[2] << 2];
        lVar.H = bArr2;
        int d10 = d(iArr2[2] << 2, bArr2, aVar);
        h.b(lVar.f91663k, 256, d4);
        h.b(lVar.f91664l, 704, lVar.f91667o[1]);
        h.b(lVar.f91665m, i14, d10);
        h.a(lVar.f91663k, aVar);
        h.a(lVar.f91664l, aVar);
        h.a(lVar.f91665m, aVar);
        lVar.B = 0;
        lVar.C = 0;
        int[] iArr4 = d.f91603b;
        byte[] bArr3 = lVar.f91678z;
        lVar.D = iArr4[bArr3[0]];
        lVar.E = iArr4[bArr3[0] + 1];
        lVar.f91674v = 0;
        lVar.f91675w = lVar.f91663k.f91629c[0];
        lVar.F = lVar.f91664l.f91629c[0];
        int[] iArr5 = lVar.f91668p;
        iArr5[4] = 1;
        iArr5[2] = 1;
        iArr5[0] = 1;
        iArr5[5] = 0;
        iArr5[3] = 0;
        iArr5[1] = 0;
    }

    private static void q(l lVar) {
        a aVar = lVar.f91655c;
        if (lVar.f91660h) {
            lVar.f91654b = 10;
            lVar.Y = lVar.f91670r;
            lVar.X = 0;
            lVar.f91653a = 12;
            return;
        }
        h hVar = lVar.f91663k;
        hVar.f91628b = null;
        hVar.f91629c = null;
        h hVar2 = lVar.f91664l;
        hVar2.f91628b = null;
        hVar2.f91629c = null;
        h hVar3 = lVar.f91665m;
        hVar3.f91628b = null;
        hVar3.f91629c = null;
        a.j(aVar);
        g(aVar, lVar);
        if (lVar.f91659g != 0 || lVar.f91662j) {
            if (!lVar.f91661i && !lVar.f91662j) {
                lVar.f91653a = 2;
            } else {
                a.g(aVar);
                lVar.f91653a = lVar.f91662j ? 4 : 5;
            }
            if (lVar.f91662j) {
                return;
            }
            lVar.R += lVar.f91659g;
            if (lVar.Q < lVar.P) {
                k(lVar);
            }
        }
    }

    private static int r(int[] iArr, int i4, a aVar) {
        long j4 = aVar.f91593f;
        int i10 = aVar.f91594g;
        int i11 = (int) (j4 >>> i10);
        int i12 = i4 + (i11 & 255);
        int i13 = iArr[i12] >> 16;
        int i14 = iArr[i12] & 65535;
        if (i13 <= 8) {
            aVar.f91594g = i10 + i13;
            return i14;
        }
        int i15 = i12 + i14 + ((((1 << i13) - 1) & i11) >>> 8);
        aVar.f91594g = i10 + (iArr[i15] >> 16) + 8;
        return iArr[i15] & 65535;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void s(l lVar, byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        lVar.S = bArr;
    }

    private static int t(int i4, int[] iArr, int i10) {
        return i4 < 16 ? iArr[(i10 + f91616m[i4]) & 3] + f91617n[i4] : (i4 - 16) + 1;
    }

    private static boolean u(l lVar) {
        int i4 = lVar.T;
        if (i4 != 0) {
            lVar.X += i4;
            lVar.T = 0;
        }
        int min = Math.min(lVar.V - lVar.W, lVar.Y - lVar.X);
        if (min != 0) {
            System.arraycopy(lVar.f91656d, lVar.X, lVar.Z, lVar.U + lVar.W, min);
            lVar.W += min;
            lVar.X += min;
        }
        return lVar.W < lVar.V;
    }
}
