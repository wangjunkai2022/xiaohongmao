package com.google.android.exoplayer2.extractor.mkv;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.l;
import java.io.IOException;
import java.util.ArrayDeque;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: DefaultEbmlReader.java */
/* loaded from: classes2.dex */
final class a implements c {

    /* renamed from: h  reason: collision with root package name */
    private static final int f22334h = 0;

    /* renamed from: i  reason: collision with root package name */
    private static final int f22335i = 1;

    /* renamed from: j  reason: collision with root package name */
    private static final int f22336j = 2;

    /* renamed from: k  reason: collision with root package name */
    private static final int f22337k = 4;

    /* renamed from: l  reason: collision with root package name */
    private static final int f22338l = 8;

    /* renamed from: m  reason: collision with root package name */
    private static final int f22339m = 8;

    /* renamed from: n  reason: collision with root package name */
    private static final int f22340n = 4;

    /* renamed from: o  reason: collision with root package name */
    private static final int f22341o = 8;

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f22342a = new byte[8];

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque<b> f22343b = new ArrayDeque<>();

    /* renamed from: c  reason: collision with root package name */
    private final g f22344c = new g();

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.exoplayer2.extractor.mkv.b f22345d;

    /* renamed from: e  reason: collision with root package name */
    private int f22346e;

    /* renamed from: f  reason: collision with root package name */
    private int f22347f;

    /* renamed from: g  reason: collision with root package name */
    private long f22348g;

    /* compiled from: DefaultEbmlReader.java */
    /* loaded from: classes2.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f22349a;

        /* renamed from: b  reason: collision with root package name */
        private final long f22350b;

        private b(int i4, long j4) {
            this.f22349a = i4;
            this.f22350b = j4;
        }
    }

    @RequiresNonNull({"processor"})
    private long c(l lVar) throws IOException {
        lVar.h();
        while (true) {
            lVar.s(this.f22342a, 0, 4);
            int c10 = g.c(this.f22342a[0]);
            if (c10 != -1 && c10 <= 4) {
                int a10 = (int) g.a(this.f22342a, c10, false);
                if (this.f22345d.e(a10)) {
                    lVar.o(c10);
                    return a10;
                }
            }
            lVar.o(1);
        }
    }

    private double d(l lVar, int i4) throws IOException {
        long e4 = e(lVar, i4);
        if (i4 == 4) {
            return Float.intBitsToFloat((int) e4);
        }
        return Double.longBitsToDouble(e4);
    }

    private long e(l lVar, int i4) throws IOException {
        lVar.readFully(this.f22342a, 0, i4);
        long j4 = 0;
        for (int i10 = 0; i10 < i4; i10++) {
            j4 = (j4 << 8) | (this.f22342a[i10] & 255);
        }
        return j4;
    }

    private static String f(l lVar, int i4) throws IOException {
        if (i4 == 0) {
            return "";
        }
        byte[] bArr = new byte[i4];
        lVar.readFully(bArr, 0, i4);
        while (i4 > 0 && bArr[i4 - 1] == 0) {
            i4--;
        }
        return new String(bArr, 0, i4);
    }

    @Override // com.google.android.exoplayer2.extractor.mkv.c
    public boolean a(l lVar) throws IOException {
        com.google.android.exoplayer2.util.a.k(this.f22345d);
        while (true) {
            b peek = this.f22343b.peek();
            if (peek != null && lVar.getPosition() >= peek.f22350b) {
                this.f22345d.a(this.f22343b.pop().f22349a);
                return true;
            }
            if (this.f22346e == 0) {
                long d4 = this.f22344c.d(lVar, true, false, 4);
                if (d4 == -2) {
                    d4 = c(lVar);
                }
                if (d4 == -1) {
                    return false;
                }
                this.f22347f = (int) d4;
                this.f22346e = 1;
            }
            if (this.f22346e == 1) {
                this.f22348g = this.f22344c.d(lVar, false, true, 8);
                this.f22346e = 2;
            }
            int d10 = this.f22345d.d(this.f22347f);
            if (d10 != 0) {
                if (d10 == 1) {
                    long position = lVar.getPosition();
                    this.f22343b.push(new b(this.f22347f, this.f22348g + position));
                    this.f22345d.h(this.f22347f, position, this.f22348g);
                    this.f22346e = 0;
                    return true;
                } else if (d10 == 2) {
                    long j4 = this.f22348g;
                    if (j4 <= 8) {
                        this.f22345d.c(this.f22347f, e(lVar, (int) j4));
                        this.f22346e = 0;
                        return true;
                    }
                    long j10 = this.f22348g;
                    StringBuilder sb = new StringBuilder(42);
                    sb.append("Invalid integer size: ");
                    sb.append(j10);
                    throw new ParserException(sb.toString());
                } else if (d10 == 3) {
                    long j11 = this.f22348g;
                    if (j11 <= 2147483647L) {
                        this.f22345d.g(this.f22347f, f(lVar, (int) j11));
                        this.f22346e = 0;
                        return true;
                    }
                    long j12 = this.f22348g;
                    StringBuilder sb2 = new StringBuilder(41);
                    sb2.append("String element size: ");
                    sb2.append(j12);
                    throw new ParserException(sb2.toString());
                } else if (d10 == 4) {
                    this.f22345d.f(this.f22347f, (int) this.f22348g, lVar);
                    this.f22346e = 0;
                    return true;
                } else if (d10 == 5) {
                    long j13 = this.f22348g;
                    if (j13 != 4 && j13 != 8) {
                        long j14 = this.f22348g;
                        StringBuilder sb3 = new StringBuilder(40);
                        sb3.append("Invalid float size: ");
                        sb3.append(j14);
                        throw new ParserException(sb3.toString());
                    }
                    this.f22345d.b(this.f22347f, d(lVar, (int) j13));
                    this.f22346e = 0;
                    return true;
                } else {
                    StringBuilder sb4 = new StringBuilder(32);
                    sb4.append("Invalid element type ");
                    sb4.append(d10);
                    throw new ParserException(sb4.toString());
                }
            }
            lVar.o((int) this.f22348g);
            this.f22346e = 0;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.mkv.c
    public void b(com.google.android.exoplayer2.extractor.mkv.b bVar) {
        this.f22345d = bVar;
    }

    @Override // com.google.android.exoplayer2.extractor.mkv.c
    public void reset() {
        this.f22346e = 0;
        this.f22343b.clear();
        this.f22344c.e();
    }
}
