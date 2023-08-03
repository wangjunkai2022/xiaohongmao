package com.google.android.exoplayer2.text.dvb;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.text.a;
import com.google.android.exoplayer2.util.g0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: DvbParser.java */
/* loaded from: classes2.dex */
final class b {

    /* renamed from: h  reason: collision with root package name */
    private static final String f25487h = "DvbParser";

    /* renamed from: i  reason: collision with root package name */
    private static final int f25488i = 16;

    /* renamed from: j  reason: collision with root package name */
    private static final int f25489j = 17;

    /* renamed from: k  reason: collision with root package name */
    private static final int f25490k = 18;

    /* renamed from: l  reason: collision with root package name */
    private static final int f25491l = 19;

    /* renamed from: m  reason: collision with root package name */
    private static final int f25492m = 20;

    /* renamed from: n  reason: collision with root package name */
    private static final int f25493n = 0;

    /* renamed from: o  reason: collision with root package name */
    private static final int f25494o = 2;

    /* renamed from: p  reason: collision with root package name */
    private static final int f25495p = 3;

    /* renamed from: q  reason: collision with root package name */
    private static final int f25496q = 0;

    /* renamed from: r  reason: collision with root package name */
    private static final int f25497r = 1;

    /* renamed from: s  reason: collision with root package name */
    private static final int f25498s = 16;

    /* renamed from: t  reason: collision with root package name */
    private static final int f25499t = 17;

    /* renamed from: u  reason: collision with root package name */
    private static final int f25500u = 18;

    /* renamed from: v  reason: collision with root package name */
    private static final int f25501v = 32;

    /* renamed from: w  reason: collision with root package name */
    private static final int f25502w = 33;

    /* renamed from: x  reason: collision with root package name */
    private static final int f25503x = 34;

    /* renamed from: y  reason: collision with root package name */
    private static final int f25504y = 240;

    /* renamed from: a  reason: collision with root package name */
    private final Paint f25506a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f25507b;

    /* renamed from: c  reason: collision with root package name */
    private final Canvas f25508c;

    /* renamed from: d  reason: collision with root package name */
    private final C0181b f25509d;

    /* renamed from: e  reason: collision with root package name */
    private final a f25510e;

    /* renamed from: f  reason: collision with root package name */
    private final h f25511f;

    /* renamed from: g  reason: collision with root package name */
    private Bitmap f25512g;

    /* renamed from: z  reason: collision with root package name */
    private static final byte[] f25505z = {0, 7, 8, com.google.common.base.c.f32110q};
    private static final byte[] A = {0, 119, -120, -1};
    private static final byte[] B = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, com.fasterxml.jackson.core.json.a.f13999j, -52, -35, -18, -1};

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f25513a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f25514b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f25515c;

        /* renamed from: d  reason: collision with root package name */
        public final int[] f25516d;

        public a(int i4, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f25513a = i4;
            this.f25514b = iArr;
            this.f25515c = iArr2;
            this.f25516d = iArr3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* renamed from: com.google.android.exoplayer2.text.dvb.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0181b {

        /* renamed from: a  reason: collision with root package name */
        public final int f25517a;

        /* renamed from: b  reason: collision with root package name */
        public final int f25518b;

        /* renamed from: c  reason: collision with root package name */
        public final int f25519c;

        /* renamed from: d  reason: collision with root package name */
        public final int f25520d;

        /* renamed from: e  reason: collision with root package name */
        public final int f25521e;

        /* renamed from: f  reason: collision with root package name */
        public final int f25522f;

        public C0181b(int i4, int i10, int i11, int i12, int i13, int i14) {
            this.f25517a = i4;
            this.f25518b = i10;
            this.f25519c = i11;
            this.f25520d = i12;
            this.f25521e = i13;
            this.f25522f = i14;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f25523a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f25524b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f25525c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f25526d;

        public c(int i4, boolean z9, byte[] bArr, byte[] bArr2) {
            this.f25523a = i4;
            this.f25524b = z9;
            this.f25525c = bArr;
            this.f25526d = bArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f25527a;

        /* renamed from: b  reason: collision with root package name */
        public final int f25528b;

        /* renamed from: c  reason: collision with root package name */
        public final int f25529c;

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<e> f25530d;

        public d(int i4, int i10, int i11, SparseArray<e> sparseArray) {
            this.f25527a = i4;
            this.f25528b = i10;
            this.f25529c = i11;
            this.f25530d = sparseArray;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes2.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final int f25531a;

        /* renamed from: b  reason: collision with root package name */
        public final int f25532b;

        public e(int i4, int i10) {
            this.f25531a = i4;
            this.f25532b = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes2.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final int f25533a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f25534b;

        /* renamed from: c  reason: collision with root package name */
        public final int f25535c;

        /* renamed from: d  reason: collision with root package name */
        public final int f25536d;

        /* renamed from: e  reason: collision with root package name */
        public final int f25537e;

        /* renamed from: f  reason: collision with root package name */
        public final int f25538f;

        /* renamed from: g  reason: collision with root package name */
        public final int f25539g;

        /* renamed from: h  reason: collision with root package name */
        public final int f25540h;

        /* renamed from: i  reason: collision with root package name */
        public final int f25541i;

        /* renamed from: j  reason: collision with root package name */
        public final int f25542j;

        /* renamed from: k  reason: collision with root package name */
        public final SparseArray<g> f25543k;

        public f(int i4, boolean z9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, SparseArray<g> sparseArray) {
            this.f25533a = i4;
            this.f25534b = z9;
            this.f25535c = i10;
            this.f25536d = i11;
            this.f25537e = i12;
            this.f25538f = i13;
            this.f25539g = i14;
            this.f25540h = i15;
            this.f25541i = i16;
            this.f25542j = i17;
            this.f25543k = sparseArray;
        }

        public void a(f fVar) {
            SparseArray<g> sparseArray = fVar.f25543k;
            for (int i4 = 0; i4 < sparseArray.size(); i4++) {
                this.f25543k.put(sparseArray.keyAt(i4), sparseArray.valueAt(i4));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes2.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final int f25544a;

        /* renamed from: b  reason: collision with root package name */
        public final int f25545b;

        /* renamed from: c  reason: collision with root package name */
        public final int f25546c;

        /* renamed from: d  reason: collision with root package name */
        public final int f25547d;

        /* renamed from: e  reason: collision with root package name */
        public final int f25548e;

        /* renamed from: f  reason: collision with root package name */
        public final int f25549f;

        public g(int i4, int i10, int i11, int i12, int i13, int i14) {
            this.f25544a = i4;
            this.f25545b = i10;
            this.f25546c = i11;
            this.f25547d = i12;
            this.f25548e = i13;
            this.f25549f = i14;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes2.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final int f25550a;

        /* renamed from: b  reason: collision with root package name */
        public final int f25551b;

        /* renamed from: c  reason: collision with root package name */
        public final SparseArray<f> f25552c = new SparseArray<>();

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<a> f25553d = new SparseArray<>();

        /* renamed from: e  reason: collision with root package name */
        public final SparseArray<c> f25554e = new SparseArray<>();

        /* renamed from: f  reason: collision with root package name */
        public final SparseArray<a> f25555f = new SparseArray<>();

        /* renamed from: g  reason: collision with root package name */
        public final SparseArray<c> f25556g = new SparseArray<>();
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public C0181b f25557h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        public d f25558i;

        public h(int i4, int i10) {
            this.f25550a = i4;
            this.f25551b = i10;
        }

        public void a() {
            this.f25552c.clear();
            this.f25553d.clear();
            this.f25554e.clear();
            this.f25555f.clear();
            this.f25556g.clear();
            this.f25557h = null;
            this.f25558i = null;
        }
    }

    public b(int i4, int i10) {
        Paint paint = new Paint();
        this.f25506a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f25507b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f25508c = new Canvas();
        this.f25509d = new C0181b(719, 575, 0, 719, 0, 575);
        this.f25510e = new a(0, c(), d(), e());
        this.f25511f = new h(i4, i10);
    }

    private static byte[] a(int i4, int i10, g0 g0Var) {
        byte[] bArr = new byte[i4];
        for (int i11 = 0; i11 < i4; i11++) {
            bArr[i11] = (byte) g0Var.h(i10);
        }
        return bArr;
    }

    private static int[] c() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int[] d() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i4 = 1; i4 < 16; i4++) {
            if (i4 < 8) {
                iArr[i4] = f(255, (i4 & 1) != 0 ? 255 : 0, (i4 & 2) != 0 ? 255 : 0, (i4 & 4) != 0 ? 255 : 0);
            } else {
                iArr[i4] = f(255, (i4 & 1) != 0 ? 127 : 0, (i4 & 2) != 0 ? 127 : 0, (i4 & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    private static int[] e() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i4 = 0; i4 < 256; i4++) {
            if (i4 < 8) {
                iArr[i4] = f(63, (i4 & 1) != 0 ? 255 : 0, (i4 & 2) != 0 ? 255 : 0, (i4 & 4) == 0 ? 0 : 255);
            } else {
                int i10 = i4 & 136;
                if (i10 == 0) {
                    iArr[i4] = f(255, ((i4 & 1) != 0 ? 85 : 0) + ((i4 & 16) != 0 ? 170 : 0), ((i4 & 2) != 0 ? 85 : 0) + ((i4 & 32) != 0 ? 170 : 0), ((i4 & 4) == 0 ? 0 : 85) + ((i4 & 64) == 0 ? 0 : 170));
                } else if (i10 == 8) {
                    iArr[i4] = f(127, ((i4 & 1) != 0 ? 85 : 0) + ((i4 & 16) != 0 ? 170 : 0), ((i4 & 2) != 0 ? 85 : 0) + ((i4 & 32) != 0 ? 170 : 0), ((i4 & 4) == 0 ? 0 : 85) + ((i4 & 64) == 0 ? 0 : 170));
                } else if (i10 == 128) {
                    iArr[i4] = f(255, ((i4 & 1) != 0 ? 43 : 0) + 127 + ((i4 & 16) != 0 ? 85 : 0), ((i4 & 2) != 0 ? 43 : 0) + 127 + ((i4 & 32) != 0 ? 85 : 0), ((i4 & 4) == 0 ? 0 : 43) + 127 + ((i4 & 64) == 0 ? 0 : 85));
                } else if (i10 == 136) {
                    iArr[i4] = f(255, ((i4 & 1) != 0 ? 43 : 0) + ((i4 & 16) != 0 ? 85 : 0), ((i4 & 2) != 0 ? 43 : 0) + ((i4 & 32) != 0 ? 85 : 0), ((i4 & 4) == 0 ? 0 : 43) + ((i4 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    private static int f(int i4, int i10, int i11, int i12) {
        return (i4 << 24) | (i10 << 16) | (i11 << 8) | i12;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0063 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0083 A[LOOP:0: B:3:0x0009->B:33:0x0083, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0082 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int g(com.google.android.exoplayer2.util.g0 r13, int[] r14, @androidx.annotation.Nullable byte[] r15, int r16, int r17, @androidx.annotation.Nullable android.graphics.Paint r18, android.graphics.Canvas r19) {
        /*
            r0 = r13
            r1 = r17
            r8 = r18
            r9 = 0
            r10 = r16
            r2 = 0
        L9:
            r3 = 2
            int r4 = r13.h(r3)
            r5 = 1
            if (r4 == 0) goto L14
            r11 = r2
        L12:
            r12 = 1
            goto L61
        L14:
            boolean r4 = r13.g()
            r6 = 3
            if (r4 == 0) goto L28
            int r4 = r13.h(r6)
            int r4 = r4 + r6
            int r3 = r13.h(r3)
        L24:
            r11 = r2
            r12 = r4
            r4 = r3
            goto L61
        L28:
            boolean r4 = r13.g()
            if (r4 == 0) goto L31
            r11 = r2
            r4 = 0
            goto L12
        L31:
            int r4 = r13.h(r3)
            if (r4 == 0) goto L5e
            if (r4 == r5) goto L5a
            if (r4 == r3) goto L4e
            if (r4 == r6) goto L41
            r11 = r2
            r4 = 0
        L3f:
            r12 = 0
            goto L61
        L41:
            r4 = 8
            int r4 = r13.h(r4)
            int r4 = r4 + 29
            int r3 = r13.h(r3)
            goto L24
        L4e:
            r4 = 4
            int r4 = r13.h(r4)
            int r4 = r4 + 12
            int r3 = r13.h(r3)
            goto L24
        L5a:
            r11 = r2
            r4 = 0
            r12 = 2
            goto L61
        L5e:
            r4 = 0
            r11 = 1
            goto L3f
        L61:
            if (r12 == 0) goto L7f
            if (r8 == 0) goto L7f
            if (r15 == 0) goto L69
            r4 = r15[r4]
        L69:
            r2 = r14[r4]
            r8.setColor(r2)
            float r3 = (float) r10
            float r4 = (float) r1
            int r2 = r10 + r12
            float r6 = (float) r2
            int r2 = r1 + 1
            float r7 = (float) r2
            r2 = r19
            r5 = r6
            r6 = r7
            r7 = r18
            r2.drawRect(r3, r4, r5, r6, r7)
        L7f:
            int r10 = r10 + r12
            if (r11 == 0) goto L83
            return r10
        L83:
            r2 = r11
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.dvb.b.g(com.google.android.exoplayer2.util.g0, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008e A[LOOP:0: B:3:0x0009->B:36:0x008e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int h(com.google.android.exoplayer2.util.g0 r13, int[] r14, @androidx.annotation.Nullable byte[] r15, int r16, int r17, @androidx.annotation.Nullable android.graphics.Paint r18, android.graphics.Canvas r19) {
        /*
            r0 = r13
            r1 = r17
            r8 = r18
            r9 = 0
            r10 = r16
            r2 = 0
        L9:
            r3 = 4
            int r4 = r13.h(r3)
            r5 = 2
            r6 = 1
            if (r4 == 0) goto L16
            r11 = r2
        L13:
            r12 = 1
            goto L6e
        L16:
            boolean r4 = r13.g()
            r7 = 3
            if (r4 != 0) goto L2c
            int r3 = r13.h(r7)
            if (r3 == 0) goto L29
            int r5 = r3 + 2
            r11 = r2
            r12 = r5
            r4 = 0
            goto L6e
        L29:
            r4 = 0
            r11 = 1
            goto L4d
        L2c:
            boolean r4 = r13.g()
            if (r4 != 0) goto L3f
            int r4 = r13.h(r5)
            int r5 = r4 + 4
            int r4 = r13.h(r3)
        L3c:
            r11 = r2
            r12 = r5
            goto L6e
        L3f:
            int r4 = r13.h(r5)
            if (r4 == 0) goto L6b
            if (r4 == r6) goto L67
            if (r4 == r5) goto L5c
            if (r4 == r7) goto L4f
            r11 = r2
            r4 = 0
        L4d:
            r12 = 0
            goto L6e
        L4f:
            r4 = 8
            int r4 = r13.h(r4)
            int r5 = r4 + 25
            int r4 = r13.h(r3)
            goto L3c
        L5c:
            int r4 = r13.h(r3)
            int r5 = r4 + 9
            int r4 = r13.h(r3)
            goto L3c
        L67:
            r11 = r2
            r4 = 0
            r12 = 2
            goto L6e
        L6b:
            r11 = r2
            r4 = 0
            goto L13
        L6e:
            if (r12 == 0) goto L8a
            if (r8 == 0) goto L8a
            if (r15 == 0) goto L76
            r4 = r15[r4]
        L76:
            r2 = r14[r4]
            r8.setColor(r2)
            float r3 = (float) r10
            float r4 = (float) r1
            int r2 = r10 + r12
            float r5 = (float) r2
            int r2 = r1 + 1
            float r6 = (float) r2
            r2 = r19
            r7 = r18
            r2.drawRect(r3, r4, r5, r6, r7)
        L8a:
            int r10 = r10 + r12
            if (r11 == 0) goto L8e
            return r10
        L8e:
            r2 = r11
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.dvb.b.h(com.google.android.exoplayer2.util.g0, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    private static int i(g0 g0Var, int[] iArr, @Nullable byte[] bArr, int i4, int i10, @Nullable Paint paint, Canvas canvas) {
        boolean z9;
        int h4;
        int i11 = i4;
        boolean z10 = false;
        while (true) {
            byte h10 = g0Var.h(8);
            if (h10 != 0) {
                z9 = z10;
                h4 = 1;
            } else if (!g0Var.g()) {
                int h11 = g0Var.h(7);
                if (h11 != 0) {
                    z9 = z10;
                    h4 = h11;
                    h10 = 0;
                } else {
                    h10 = 0;
                    z9 = true;
                    h4 = 0;
                }
            } else {
                z9 = z10;
                h4 = g0Var.h(7);
                h10 = g0Var.h(8);
            }
            if (h4 != 0 && paint != null) {
                if (bArr != null) {
                    h10 = bArr[h10];
                }
                paint.setColor(iArr[h10]);
                canvas.drawRect(i11, i10, i11 + h4, i10 + 1, paint);
            }
            i11 += h4;
            if (z9) {
                return i11;
            }
            z10 = z9;
        }
    }

    private static void j(byte[] bArr, int[] iArr, int i4, int i10, int i11, @Nullable Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        g0 g0Var = new g0(bArr);
        int i12 = i10;
        int i13 = i11;
        byte[] bArr5 = null;
        byte[] bArr6 = null;
        byte[] bArr7 = null;
        while (g0Var.b() != 0) {
            int h4 = g0Var.h(8);
            if (h4 != 240) {
                switch (h4) {
                    case 16:
                        if (i4 == 3) {
                            bArr3 = bArr5 == null ? A : bArr5;
                        } else if (i4 == 2) {
                            bArr3 = bArr7 == null ? f25505z : bArr7;
                        } else {
                            bArr2 = null;
                            i12 = g(g0Var, iArr, bArr2, i12, i13, paint, canvas);
                            g0Var.c();
                            continue;
                        }
                        bArr2 = bArr3;
                        i12 = g(g0Var, iArr, bArr2, i12, i13, paint, canvas);
                        g0Var.c();
                        continue;
                    case 17:
                        if (i4 == 3) {
                            bArr4 = bArr6 == null ? B : bArr6;
                        } else {
                            bArr4 = null;
                        }
                        i12 = h(g0Var, iArr, bArr4, i12, i13, paint, canvas);
                        g0Var.c();
                        continue;
                    case 18:
                        i12 = i(g0Var, iArr, null, i12, i13, paint, canvas);
                        continue;
                    default:
                        switch (h4) {
                            case 32:
                                bArr7 = a(4, 4, g0Var);
                                continue;
                            case 33:
                                bArr5 = a(4, 8, g0Var);
                                continue;
                            case 34:
                                bArr6 = a(16, 8, g0Var);
                                continue;
                            default:
                                continue;
                        }
                }
            } else {
                i13 += 2;
                i12 = i10;
            }
        }
    }

    private static void k(c cVar, a aVar, int i4, int i10, int i11, @Nullable Paint paint, Canvas canvas) {
        int[] iArr;
        if (i4 == 3) {
            iArr = aVar.f25516d;
        } else if (i4 == 2) {
            iArr = aVar.f25515c;
        } else {
            iArr = aVar.f25514b;
        }
        int[] iArr2 = iArr;
        j(cVar.f25525c, iArr2, i4, i10, i11, paint, canvas);
        j(cVar.f25526d, iArr2, i4, i10, i11 + 1, paint, canvas);
    }

    private static a l(g0 g0Var, int i4) {
        int h4;
        int i10;
        int h10;
        int h11;
        int i11;
        int i12 = 8;
        int h12 = g0Var.h(8);
        g0Var.s(8);
        int i13 = 2;
        int i14 = i4 - 2;
        int[] c10 = c();
        int[] d4 = d();
        int[] e4 = e();
        while (i14 > 0) {
            int h13 = g0Var.h(i12);
            int h14 = g0Var.h(i12);
            int i15 = i14 - 2;
            int[] iArr = (h14 & 128) != 0 ? c10 : (h14 & 64) != 0 ? d4 : e4;
            if ((h14 & 1) != 0) {
                h11 = g0Var.h(i12);
                i11 = g0Var.h(i12);
                h4 = g0Var.h(i12);
                h10 = g0Var.h(i12);
                i10 = i15 - 4;
            } else {
                int h15 = g0Var.h(4) << 4;
                h4 = g0Var.h(4) << 4;
                i10 = i15 - 2;
                h10 = g0Var.h(i13) << 6;
                h11 = g0Var.h(6) << i13;
                i11 = h15;
            }
            if (h11 == 0) {
                i11 = 0;
                h4 = 0;
                h10 = 255;
            }
            double d10 = h11;
            double d11 = i11 - 128;
            double d12 = h4 - 128;
            iArr[h13] = f((byte) (255 - (h10 & 255)), z0.t((int) (d10 + (1.402d * d11)), 0, 255), z0.t((int) ((d10 - (0.34414d * d12)) - (d11 * 0.71414d)), 0, 255), z0.t((int) (d10 + (d12 * 1.772d)), 0, 255));
            i14 = i10;
            h12 = h12;
            i12 = 8;
            i13 = 2;
        }
        return new a(h12, c10, d4, e4);
    }

    private static C0181b m(g0 g0Var) {
        int i4;
        int i10;
        int i11;
        int i12;
        g0Var.s(4);
        boolean g4 = g0Var.g();
        g0Var.s(3);
        int h4 = g0Var.h(16);
        int h10 = g0Var.h(16);
        if (g4) {
            int h11 = g0Var.h(16);
            int h12 = g0Var.h(16);
            int h13 = g0Var.h(16);
            i10 = g0Var.h(16);
            i4 = h12;
            i12 = h13;
            i11 = h11;
        } else {
            i4 = h4;
            i10 = h10;
            i11 = 0;
            i12 = 0;
        }
        return new C0181b(h4, h10, i11, i4, i12, i10);
    }

    private static c n(g0 g0Var) {
        byte[] bArr;
        int h4 = g0Var.h(16);
        g0Var.s(4);
        int h10 = g0Var.h(2);
        boolean g4 = g0Var.g();
        g0Var.s(1);
        byte[] bArr2 = z0.f27748f;
        if (h10 == 1) {
            g0Var.s(g0Var.h(8) * 16);
        } else if (h10 == 0) {
            int h11 = g0Var.h(16);
            int h12 = g0Var.h(16);
            if (h11 > 0) {
                bArr2 = new byte[h11];
                g0Var.k(bArr2, 0, h11);
            }
            if (h12 > 0) {
                bArr = new byte[h12];
                g0Var.k(bArr, 0, h12);
                return new c(h4, g4, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new c(h4, g4, bArr2, bArr);
    }

    private static d o(g0 g0Var, int i4) {
        int h4 = g0Var.h(8);
        int h10 = g0Var.h(4);
        int h11 = g0Var.h(2);
        g0Var.s(2);
        int i10 = i4 - 2;
        SparseArray sparseArray = new SparseArray();
        while (i10 > 0) {
            int h12 = g0Var.h(8);
            g0Var.s(8);
            i10 -= 6;
            sparseArray.put(h12, new e(g0Var.h(16), g0Var.h(16)));
        }
        return new d(h4, h10, h11, sparseArray);
    }

    private static f p(g0 g0Var, int i4) {
        int h4;
        int h10;
        int h11 = g0Var.h(8);
        g0Var.s(4);
        boolean g4 = g0Var.g();
        g0Var.s(3);
        int i10 = 16;
        int h12 = g0Var.h(16);
        int h13 = g0Var.h(16);
        int h14 = g0Var.h(3);
        int h15 = g0Var.h(3);
        int i11 = 2;
        g0Var.s(2);
        int h16 = g0Var.h(8);
        int h17 = g0Var.h(8);
        int h18 = g0Var.h(4);
        int h19 = g0Var.h(2);
        g0Var.s(2);
        int i12 = i4 - 10;
        SparseArray sparseArray = new SparseArray();
        while (i12 > 0) {
            int h20 = g0Var.h(i10);
            int h21 = g0Var.h(i11);
            int h22 = g0Var.h(i11);
            int h23 = g0Var.h(12);
            int i13 = h19;
            g0Var.s(4);
            int h24 = g0Var.h(12);
            i12 -= 6;
            if (h21 == 1 || h21 == 2) {
                i12 -= 2;
                h4 = g0Var.h(8);
                h10 = g0Var.h(8);
            } else {
                h4 = 0;
                h10 = 0;
            }
            sparseArray.put(h20, new g(h21, h22, h23, h24, h4, h10));
            h19 = i13;
            i11 = 2;
            i10 = 16;
        }
        return new f(h11, g4, h12, h13, h14, h15, h16, h17, h18, h19, sparseArray);
    }

    private static void q(g0 g0Var, h hVar) {
        f fVar;
        int h4 = g0Var.h(8);
        int h10 = g0Var.h(16);
        int h11 = g0Var.h(16);
        int d4 = g0Var.d() + h11;
        if (h11 * 8 > g0Var.b()) {
            w.n(f25487h, "Data field length exceeds limit");
            g0Var.s(g0Var.b());
            return;
        }
        switch (h4) {
            case 16:
                if (h10 == hVar.f25550a) {
                    d dVar = hVar.f25558i;
                    d o9 = o(g0Var, h11);
                    if (o9.f25529c != 0) {
                        hVar.f25558i = o9;
                        hVar.f25552c.clear();
                        hVar.f25553d.clear();
                        hVar.f25554e.clear();
                        break;
                    } else if (dVar != null && dVar.f25528b != o9.f25528b) {
                        hVar.f25558i = o9;
                        break;
                    }
                }
                break;
            case 17:
                d dVar2 = hVar.f25558i;
                if (h10 == hVar.f25550a && dVar2 != null) {
                    f p9 = p(g0Var, h11);
                    if (dVar2.f25529c == 0 && (fVar = hVar.f25552c.get(p9.f25533a)) != null) {
                        p9.a(fVar);
                    }
                    hVar.f25552c.put(p9.f25533a, p9);
                    break;
                }
                break;
            case 18:
                if (h10 == hVar.f25550a) {
                    a l10 = l(g0Var, h11);
                    hVar.f25553d.put(l10.f25513a, l10);
                    break;
                } else if (h10 == hVar.f25551b) {
                    a l11 = l(g0Var, h11);
                    hVar.f25555f.put(l11.f25513a, l11);
                    break;
                }
                break;
            case 19:
                if (h10 == hVar.f25550a) {
                    c n9 = n(g0Var);
                    hVar.f25554e.put(n9.f25523a, n9);
                    break;
                } else if (h10 == hVar.f25551b) {
                    c n10 = n(g0Var);
                    hVar.f25556g.put(n10.f25523a, n10);
                    break;
                }
                break;
            case 20:
                if (h10 == hVar.f25550a) {
                    hVar.f25557h = m(g0Var);
                    break;
                }
                break;
        }
        g0Var.t(d4 - g0Var.d());
    }

    public List<com.google.android.exoplayer2.text.a> b(byte[] bArr, int i4) {
        int i10;
        int i11;
        SparseArray<g> sparseArray;
        g0 g0Var = new g0(bArr, i4);
        while (g0Var.b() >= 48 && g0Var.h(8) == 15) {
            q(g0Var, this.f25511f);
        }
        h hVar = this.f25511f;
        d dVar = hVar.f25558i;
        if (dVar == null) {
            return Collections.emptyList();
        }
        C0181b c0181b = hVar.f25557h;
        if (c0181b == null) {
            c0181b = this.f25509d;
        }
        Bitmap bitmap = this.f25512g;
        if (bitmap == null || c0181b.f25517a + 1 != bitmap.getWidth() || c0181b.f25518b + 1 != this.f25512g.getHeight()) {
            Bitmap createBitmap = Bitmap.createBitmap(c0181b.f25517a + 1, c0181b.f25518b + 1, Bitmap.Config.ARGB_8888);
            this.f25512g = createBitmap;
            this.f25508c.setBitmap(createBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<e> sparseArray2 = dVar.f25530d;
        for (int i12 = 0; i12 < sparseArray2.size(); i12++) {
            this.f25508c.save();
            e valueAt = sparseArray2.valueAt(i12);
            f fVar = this.f25511f.f25552c.get(sparseArray2.keyAt(i12));
            int i13 = valueAt.f25531a + c0181b.f25519c;
            int i14 = valueAt.f25532b + c0181b.f25521e;
            this.f25508c.clipRect(i13, i14, Math.min(fVar.f25535c + i13, c0181b.f25520d), Math.min(fVar.f25536d + i14, c0181b.f25522f));
            a aVar = this.f25511f.f25553d.get(fVar.f25539g);
            if (aVar == null && (aVar = this.f25511f.f25555f.get(fVar.f25539g)) == null) {
                aVar = this.f25510e;
            }
            SparseArray<g> sparseArray3 = fVar.f25543k;
            int i15 = 0;
            while (i15 < sparseArray3.size()) {
                int keyAt = sparseArray3.keyAt(i15);
                g valueAt2 = sparseArray3.valueAt(i15);
                c cVar = this.f25511f.f25554e.get(keyAt);
                c cVar2 = cVar == null ? this.f25511f.f25556g.get(keyAt) : cVar;
                if (cVar2 != null) {
                    i11 = i15;
                    sparseArray = sparseArray3;
                    k(cVar2, aVar, fVar.f25538f, valueAt2.f25546c + i13, i14 + valueAt2.f25547d, cVar2.f25524b ? null : this.f25506a, this.f25508c);
                } else {
                    i11 = i15;
                    sparseArray = sparseArray3;
                }
                i15 = i11 + 1;
                sparseArray3 = sparseArray;
            }
            if (fVar.f25534b) {
                int i16 = fVar.f25538f;
                if (i16 == 3) {
                    i10 = aVar.f25516d[fVar.f25540h];
                } else if (i16 == 2) {
                    i10 = aVar.f25515c[fVar.f25541i];
                } else {
                    i10 = aVar.f25514b[fVar.f25542j];
                }
                this.f25507b.setColor(i10);
                this.f25508c.drawRect(i13, i14, fVar.f25535c + i13, fVar.f25536d + i14, this.f25507b);
            }
            arrayList.add(new a.c().r(Bitmap.createBitmap(this.f25512g, i13, i14, fVar.f25535c, fVar.f25536d)).w(i13 / c0181b.f25517a).x(0).t(i14 / c0181b.f25518b, 0).u(0).z(fVar.f25535c / c0181b.f25517a).s(fVar.f25536d / c0181b.f25518b).a());
            this.f25508c.drawColor(0, PorterDuff.Mode.CLEAR);
            this.f25508c.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }

    public void r() {
        this.f25511f.a();
    }
}
