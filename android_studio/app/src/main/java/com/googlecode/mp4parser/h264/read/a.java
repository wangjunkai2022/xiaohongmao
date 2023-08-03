package com.googlecode.mp4parser.h264.read;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: BitstreamReader.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: f  reason: collision with root package name */
    protected static int f36959f;

    /* renamed from: a  reason: collision with root package name */
    private InputStream f36960a;

    /* renamed from: b  reason: collision with root package name */
    private int f36961b;

    /* renamed from: c  reason: collision with root package name */
    private int f36962c;

    /* renamed from: d  reason: collision with root package name */
    int f36963d;

    /* renamed from: e  reason: collision with root package name */
    protected v3.b f36964e = new v3.b(50);

    public a(InputStream inputStream) throws IOException {
        this.f36960a = inputStream;
        this.f36961b = inputStream.read();
        this.f36962c = inputStream.read();
    }

    private void a() throws IOException {
        this.f36961b = this.f36962c;
        this.f36962c = this.f36960a.read();
        this.f36963d = 0;
    }

    public void b() throws IOException {
    }

    public long c() {
        return (f36959f * 8) + (this.f36963d % 8);
    }

    public int d() {
        return this.f36963d;
    }

    public boolean e() {
        return this.f36963d % 8 == 0;
    }

    public boolean f() throws IOException {
        if (this.f36963d == 8) {
            a();
        }
        int i4 = 1 << ((8 - this.f36963d) - 1);
        int i10 = this.f36961b;
        return (i10 == -1 || (this.f36962c == -1 && ((((i4 << 1) - 1) & i10) == i4))) ? false : true;
    }

    public int g(int i4) throws IOException {
        if (i4 <= 8) {
            if (this.f36963d == 8) {
                a();
                if (this.f36961b == -1) {
                    return -1;
                }
            }
            int i10 = this.f36963d;
            int[] iArr = new int[16 - i10];
            int i11 = 0;
            while (i10 < 8) {
                iArr[i11] = (this.f36961b >> (7 - i10)) & 1;
                i10++;
                i11++;
            }
            int i12 = 0;
            while (i12 < 8) {
                iArr[i11] = (this.f36962c >> (7 - i12)) & 1;
                i12++;
                i11++;
            }
            int i13 = 0;
            for (int i14 = 0; i14 < i4; i14++) {
                i13 = (i13 << 1) | iArr[i14];
            }
            return i13;
        }
        throw new IllegalArgumentException("N should be less then 8");
    }

    public int h() throws IOException {
        if (this.f36963d == 8) {
            a();
            if (this.f36961b == -1) {
                return -1;
            }
        }
        int i4 = this.f36961b;
        int i10 = this.f36963d;
        int i11 = (i4 >> (7 - i10)) & 1;
        this.f36963d = i10 + 1;
        this.f36964e.a(i11 == 0 ? '0' : '1');
        f36959f++;
        return i11;
    }

    public boolean i() throws IOException {
        return h() == 1;
    }

    public int j() throws IOException {
        if (this.f36963d > 0) {
            a();
        }
        int i4 = this.f36961b;
        a();
        return i4;
    }

    public long k(int i4) throws IOException {
        if (i4 <= 64) {
            long j4 = 0;
            for (int i10 = 0; i10 < i4; i10++) {
                j4 = (j4 << 1) | h();
            }
            return j4;
        }
        throw new IllegalArgumentException("Can not readByte more then 64 bit");
    }

    public long l() throws IOException {
        return k(8 - this.f36963d);
    }
}
