package com.fasterxml.jackson.core.io;

/* compiled from: JsonStringEncoder.java */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: c  reason: collision with root package name */
    private static final int f13938c = 55296;

    /* renamed from: d  reason: collision with root package name */
    private static final int f13939d = 56319;

    /* renamed from: e  reason: collision with root package name */
    private static final int f13940e = 56320;

    /* renamed from: f  reason: collision with root package name */
    private static final int f13941f = 57343;

    /* renamed from: g  reason: collision with root package name */
    static final int f13942g = 16;

    /* renamed from: h  reason: collision with root package name */
    static final int f13943h = 32000;

    /* renamed from: i  reason: collision with root package name */
    static final int f13944i = 24;

    /* renamed from: j  reason: collision with root package name */
    static final int f13945j = 32000;

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f13936a = b.d();

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f13937b = b.c();

    /* renamed from: k  reason: collision with root package name */
    private static final e f13946k = new e();

    private int a(int i4, int i10, com.fasterxml.jackson.core.util.c cVar, int i11) {
        cVar.D(i11);
        cVar.b(92);
        if (i10 < 0) {
            cVar.b(117);
            if (i4 > 255) {
                int i12 = i4 >> 8;
                byte[] bArr = f13937b;
                cVar.b(bArr[i12 >> 4]);
                cVar.b(bArr[i12 & 15]);
                i4 &= 255;
            } else {
                cVar.b(48);
                cVar.b(48);
            }
            byte[] bArr2 = f13937b;
            cVar.b(bArr2[i4 >> 4]);
            cVar.b(bArr2[i4 & 15]);
        } else {
            cVar.b((byte) i10);
        }
        return cVar.s();
    }

    private int b(int i4, char[] cArr) {
        cArr[1] = (char) i4;
        return 2;
    }

    private int c(int i4, char[] cArr) {
        cArr[1] = 'u';
        char[] cArr2 = f13936a;
        cArr[4] = cArr2[i4 >> 4];
        cArr[5] = cArr2[i4 & 15];
        return 6;
    }

    private static int d(int i4, int i10) {
        if (i10 < 56320 || i10 > 57343) {
            throw new IllegalArgumentException("Broken surrogate pair: first char 0x" + Integer.toHexString(i4) + ", second 0x" + Integer.toHexString(i10) + "; illegal combination");
        }
        return ((i4 - 55296) << 10) + 65536 + (i10 - 56320);
    }

    private static void e(int i4) {
        throw new IllegalArgumentException(k.d(i4));
    }

    static int f(int i4) {
        return Math.min(Math.max(24, i4 + 6 + (i4 >> 1)), 32000);
    }

    static int g(int i4) {
        return Math.min(Math.max(16, i4 + Math.min((i4 >> 3) + 6, 1000)), 32000);
    }

    private char[] h() {
        return new char[]{'\\', 0, '0', '0'};
    }

    public static e k() {
        return f13946k;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00eb A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public byte[] i(java.lang.CharSequence r12) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.e.i(java.lang.CharSequence):byte[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00eb A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public byte[] j(java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.e.j(java.lang.String):byte[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
        r6 = r5 + 1;
        r5 = r9.charAt(r5);
        r7 = r0[r5];
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
        if (r7 >= 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        r5 = c(r5, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
        r5 = b(r7, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
        r10.append(r4, 0, r5);
        r5 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
        if (r4 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
        r4 = h();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void l(java.lang.CharSequence r9, java.lang.StringBuilder r10) {
        /*
            r8 = this;
            int[] r0 = com.fasterxml.jackson.core.io.b.e()
            int r1 = r0.length
            int r2 = r9.length()
            r3 = 0
            r4 = 0
            r5 = 0
        Lc:
            if (r5 >= r2) goto L3d
        Le:
            char r6 = r9.charAt(r5)
            if (r6 >= r1) goto L36
            r7 = r0[r6]
            if (r7 == 0) goto L36
            if (r4 != 0) goto L1e
            char[] r4 = r8.h()
        L1e:
            int r6 = r5 + 1
            char r5 = r9.charAt(r5)
            r7 = r0[r5]
            if (r7 >= 0) goto L2d
            int r5 = r8.c(r5, r4)
            goto L31
        L2d:
            int r5 = r8.b(r7, r4)
        L31:
            r10.append(r4, r3, r5)
            r5 = r6
            goto Lc
        L36:
            r10.append(r6)
            int r5 = r5 + 1
            if (r5 < r2) goto Le
        L3d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.e.l(java.lang.CharSequence, java.lang.StringBuilder):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
        if (r6 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
        r6 = h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
        r9 = r7 + 1;
        r7 = r13.charAt(r7);
        r10 = r2[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0039, code lost:
        if (r10 >= 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003b, code lost:
        r7 = c(r7, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
        r7 = b(r10, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
        r10 = r8 + r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0047, code lost:
        if (r10 <= r1.length) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0049, code lost:
        r10 = r1.length - r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
        if (r10 <= 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004d, code lost:
        java.lang.System.arraycopy(r6, 0, r1, r8, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
        if (r4 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
        r4 = com.fasterxml.jackson.core.util.j.t(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
        r1 = r4.s();
        r7 = r7 - r10;
        java.lang.System.arraycopy(r6, r10, r1, 0, r7);
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0060, code lost:
        java.lang.System.arraycopy(r6, 0, r1, r8, r7);
        r8 = r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public char[] m(java.lang.CharSequence r13) {
        /*
            r12 = this;
            boolean r0 = r13 instanceof java.lang.String
            if (r0 == 0) goto Lb
            java.lang.String r13 = (java.lang.String) r13
            char[] r13 = r12.n(r13)
            return r13
        Lb:
            int r0 = r13.length()
            int r1 = g(r0)
            char[] r1 = new char[r1]
            int[] r2 = com.fasterxml.jackson.core.io.b.e()
            int r3 = r2.length
            r4 = 0
            r5 = 0
            r6 = r4
            r7 = 0
            r8 = 0
        L1f:
            if (r7 >= r0) goto L80
        L21:
            char r9 = r13.charAt(r7)
            if (r9 >= r3) goto L66
            r10 = r2[r9]
            if (r10 == 0) goto L66
            if (r6 != 0) goto L31
            char[] r6 = r12.h()
        L31:
            int r9 = r7 + 1
            char r7 = r13.charAt(r7)
            r10 = r2[r7]
            if (r10 >= 0) goto L40
            int r7 = r12.c(r7, r6)
            goto L44
        L40:
            int r7 = r12.b(r10, r6)
        L44:
            int r10 = r8 + r7
            int r11 = r1.length
            if (r10 <= r11) goto L60
            int r10 = r1.length
            int r10 = r10 - r8
            if (r10 <= 0) goto L50
            java.lang.System.arraycopy(r6, r5, r1, r8, r10)
        L50:
            if (r4 != 0) goto L56
            com.fasterxml.jackson.core.util.j r4 = com.fasterxml.jackson.core.util.j.t(r1)
        L56:
            char[] r1 = r4.s()
            int r7 = r7 - r10
            java.lang.System.arraycopy(r6, r10, r1, r5, r7)
            r8 = r7
            goto L64
        L60:
            java.lang.System.arraycopy(r6, r5, r1, r8, r7)
            r8 = r10
        L64:
            r7 = r9
            goto L1f
        L66:
            int r10 = r1.length
            if (r8 < r10) goto L74
            if (r4 != 0) goto L6f
            com.fasterxml.jackson.core.util.j r4 = com.fasterxml.jackson.core.util.j.t(r1)
        L6f:
            char[] r1 = r4.s()
            r8 = 0
        L74:
            int r10 = r8 + 1
            r1[r8] = r9
            int r7 = r7 + 1
            if (r7 < r0) goto L7e
            r8 = r10
            goto L80
        L7e:
            r8 = r10
            goto L21
        L80:
            if (r4 != 0) goto L87
            char[] r13 = java.util.Arrays.copyOfRange(r1, r5, r8)
            return r13
        L87:
            r4.J(r8)
            char[] r13 = r4.g()
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.e.m(java.lang.CharSequence):char[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
        r9 = r7 + 1;
        r7 = r13.charAt(r7);
        r10 = r2[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
        if (r10 >= 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0030, code lost:
        r7 = c(r7, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
        r7 = b(r10, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0039, code lost:
        r10 = r8 + r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003c, code lost:
        if (r10 <= r1.length) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003e, code lost:
        r10 = r1.length - r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
        if (r10 <= 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0042, code lost:
        java.lang.System.arraycopy(r6, 0, r1, r8, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
        if (r4 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
        r4 = com.fasterxml.jackson.core.util.j.t(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
        r1 = r4.s();
        r7 = r7 - r10;
        java.lang.System.arraycopy(r6, r10, r1, 0, r7);
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0055, code lost:
        java.lang.System.arraycopy(r6, 0, r1, r8, r7);
        r8 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0020, code lost:
        if (r6 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
        r6 = h();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public char[] n(java.lang.String r13) {
        /*
            r12 = this;
            int r0 = r13.length()
            int r1 = g(r0)
            char[] r1 = new char[r1]
            int[] r2 = com.fasterxml.jackson.core.io.b.e()
            int r3 = r2.length
            r4 = 0
            r5 = 0
            r6 = r4
            r7 = 0
            r8 = 0
        L14:
            if (r7 >= r0) goto L75
        L16:
            char r9 = r13.charAt(r7)
            if (r9 >= r3) goto L5b
            r10 = r2[r9]
            if (r10 == 0) goto L5b
            if (r6 != 0) goto L26
            char[] r6 = r12.h()
        L26:
            int r9 = r7 + 1
            char r7 = r13.charAt(r7)
            r10 = r2[r7]
            if (r10 >= 0) goto L35
            int r7 = r12.c(r7, r6)
            goto L39
        L35:
            int r7 = r12.b(r10, r6)
        L39:
            int r10 = r8 + r7
            int r11 = r1.length
            if (r10 <= r11) goto L55
            int r10 = r1.length
            int r10 = r10 - r8
            if (r10 <= 0) goto L45
            java.lang.System.arraycopy(r6, r5, r1, r8, r10)
        L45:
            if (r4 != 0) goto L4b
            com.fasterxml.jackson.core.util.j r4 = com.fasterxml.jackson.core.util.j.t(r1)
        L4b:
            char[] r1 = r4.s()
            int r7 = r7 - r10
            java.lang.System.arraycopy(r6, r10, r1, r5, r7)
            r8 = r7
            goto L59
        L55:
            java.lang.System.arraycopy(r6, r5, r1, r8, r7)
            r8 = r10
        L59:
            r7 = r9
            goto L14
        L5b:
            int r10 = r1.length
            if (r8 < r10) goto L69
            if (r4 != 0) goto L64
            com.fasterxml.jackson.core.util.j r4 = com.fasterxml.jackson.core.util.j.t(r1)
        L64:
            char[] r1 = r4.s()
            r8 = 0
        L69:
            int r10 = r8 + 1
            r1[r8] = r9
            int r7 = r7 + 1
            if (r7 < r0) goto L73
            r8 = r10
            goto L75
        L73:
            r8 = r10
            goto L16
        L75:
            if (r4 != 0) goto L7c
            char[] r13 = java.util.Arrays.copyOfRange(r1, r5, r8)
            return r13
        L7c:
            r4.J(r8)
            char[] r13 = r4.g()
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.e.n(java.lang.String):char[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public byte[] o(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.e.o(java.lang.String):byte[]");
    }
}
