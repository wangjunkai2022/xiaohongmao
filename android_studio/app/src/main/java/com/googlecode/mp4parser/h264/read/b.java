package com.googlecode.mp4parser.h264.read;

import java.io.IOException;
import java.io.InputStream;
import v3.c;

/* compiled from: CAVLCReader.java */
/* loaded from: classes2.dex */
public class b extends a {
    public b(InputStream inputStream) throws IOException {
        super(inputStream);
    }

    private void A(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        String valueOf = String.valueOf(a.f36959f - this.f36964e.d());
        int length = 8 - valueOf.length();
        sb.append("@" + valueOf);
        for (int i4 = 0; i4 < length; i4++) {
            sb.append(' ');
        }
        sb.append(str);
        int length2 = (100 - sb.length()) - this.f36964e.d();
        for (int i10 = 0; i10 < length2; i10++) {
            sb.append(' ');
        }
        sb.append(this.f36964e);
        sb.append(" (" + str2 + ")");
        this.f36964e.c();
        c.g(sb.toString());
    }

    private int x() throws IOException {
        int i4 = 0;
        while (h() == 0) {
            i4++;
        }
        if (i4 > 0) {
            return (int) (((1 << i4) - 1) + k(i4));
        }
        return 0;
    }

    public byte[] m(int i4) throws IOException {
        byte[] bArr = new byte[i4];
        for (int i10 = 0; i10 < i4; i10++) {
            bArr[i10] = (byte) j();
        }
        return bArr;
    }

    public boolean n() {
        throw new UnsupportedOperationException("Stan");
    }

    public int o() {
        throw new UnsupportedOperationException("Stan");
    }

    public boolean p(String str) throws IOException {
        boolean z9 = h() != 0;
        A(str, z9 ? "1" : "0");
        return z9;
    }

    public Object q(v3.a aVar, String str) throws IOException {
        Object c10;
        do {
            aVar = aVar.b(h());
            if (aVar != null) {
                c10 = aVar.c();
            } else {
                throw new RuntimeException("Illegal code");
            }
        } while (c10 == null);
        A(str, c10.toString());
        return c10;
    }

    public int r(String str) throws IOException {
        return y(str);
    }

    public long s(int i4, String str) throws IOException {
        long k10 = k(i4);
        A(str, String.valueOf(k10));
        return k10;
    }

    public int t(String str) throws IOException {
        int x9 = x();
        int i4 = x9 & 1;
        int i10 = ((x9 >> 1) + i4) * ((i4 << 1) - 1);
        A(str, String.valueOf(i10));
        return i10;
    }

    public int u(int i4) throws IOException {
        if (i4 > 1) {
            return x();
        }
        return (~h()) & 1;
    }

    public void v() throws IOException {
        h();
        l();
    }

    public int w(int i4, String str) throws IOException {
        return (int) s(i4, str);
    }

    public int y(String str) throws IOException {
        int x9 = x();
        A(str, String.valueOf(x9));
        return x9;
    }

    public int z(String str) throws IOException {
        int i4 = 0;
        while (h() == 0) {
            i4++;
        }
        A(str, String.valueOf(i4));
        return i4;
    }
}
