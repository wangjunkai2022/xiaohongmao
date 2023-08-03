package com.koushikdutta.async.http;

import android.util.Log;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataEmitterReader;
import com.koushikdutta.async.callback.DataCallback;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* loaded from: classes3.dex */
abstract class HybiParser {
    private static final int A = 64;
    private static final int B = 32;
    private static final int C = 16;
    private static final int D = 15;
    private static final int E = 127;
    private static final int F = 1;
    private static final int G = 2;
    private static final int H = 0;
    private static final int I = 1;
    private static final int J = 2;
    private static final int K = 8;
    private static final int L = 9;
    private static final int M = 10;
    private static final List<Integer> N = Arrays.asList(0, 1, 2, 8, 9, 10);
    private static final List<Integer> O = Arrays.asList(0, 1, 2);
    private static final long P = 2;
    private static final long Q = 256;
    private static final long R = 65536;
    private static final long S = 16777216;
    private static final long T = 4294967296L;
    private static final long U = 1099511627776L;
    private static final long V = 281474976710656L;
    private static final long W = 72057594037927936L;

    /* renamed from: w  reason: collision with root package name */
    private static final String f44642w = "HybiParser";

    /* renamed from: x  reason: collision with root package name */
    private static final int f44643x = 255;

    /* renamed from: y  reason: collision with root package name */
    private static final int f44644y = 128;

    /* renamed from: z  reason: collision with root package name */
    private static final int f44645z = 128;

    /* renamed from: c  reason: collision with root package name */
    private int f44648c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f44649d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f44650e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f44651f;

    /* renamed from: g  reason: collision with root package name */
    private int f44652g;

    /* renamed from: h  reason: collision with root package name */
    private int f44653h;

    /* renamed from: i  reason: collision with root package name */
    private int f44654i;

    /* renamed from: j  reason: collision with root package name */
    private int f44655j;

    /* renamed from: v  reason: collision with root package name */
    private DataEmitterReader f44667v;

    /* renamed from: a  reason: collision with root package name */
    private boolean f44646a = true;

    /* renamed from: b  reason: collision with root package name */
    private boolean f44647b = false;

    /* renamed from: k  reason: collision with root package name */
    private byte[] f44656k = new byte[0];

    /* renamed from: l  reason: collision with root package name */
    private byte[] f44657l = new byte[0];

    /* renamed from: m  reason: collision with root package name */
    private boolean f44658m = false;

    /* renamed from: n  reason: collision with root package name */
    private ByteArrayOutputStream f44659n = new ByteArrayOutputStream();

    /* renamed from: o  reason: collision with root package name */
    private Inflater f44660o = new Inflater(true);

    /* renamed from: p  reason: collision with root package name */
    private byte[] f44661p = new byte[4096];

    /* renamed from: q  reason: collision with root package name */
    DataCallback f44662q = new DataCallback() { // from class: com.koushikdutta.async.http.HybiParser.1
        @Override // com.koushikdutta.async.callback.DataCallback
        public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            try {
                HybiParser.this.H(byteBufferList.h());
            } catch (ProtocolError e4) {
                HybiParser.this.K(e4);
                e4.printStackTrace();
            }
            HybiParser.this.E();
        }
    };

    /* renamed from: r  reason: collision with root package name */
    DataCallback f44663r = new DataCallback() { // from class: com.koushikdutta.async.http.HybiParser.2
        @Override // com.koushikdutta.async.callback.DataCallback
        public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            HybiParser.this.G(byteBufferList.h());
            HybiParser.this.E();
        }
    };

    /* renamed from: s  reason: collision with root package name */
    DataCallback f44664s = new DataCallback() { // from class: com.koushikdutta.async.http.HybiParser.3
        @Override // com.koushikdutta.async.callback.DataCallback
        public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            byte[] bArr = new byte[HybiParser.this.f44653h];
            byteBufferList.l(bArr);
            try {
                HybiParser.this.F(bArr);
            } catch (ProtocolError e4) {
                HybiParser.this.K(e4);
                e4.printStackTrace();
            }
            HybiParser.this.E();
        }
    };

    /* renamed from: t  reason: collision with root package name */
    DataCallback f44665t = new DataCallback() { // from class: com.koushikdutta.async.http.HybiParser.4
        @Override // com.koushikdutta.async.callback.DataCallback
        public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            HybiParser.this.f44656k = new byte[4];
            byteBufferList.l(HybiParser.this.f44656k);
            HybiParser.this.f44648c = 4;
            HybiParser.this.E();
        }
    };

    /* renamed from: u  reason: collision with root package name */
    DataCallback f44666u = new DataCallback() { // from class: com.koushikdutta.async.http.HybiParser.5
        @Override // com.koushikdutta.async.callback.DataCallback
        public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            HybiParser hybiParser = HybiParser.this;
            hybiParser.f44657l = new byte[hybiParser.f44654i];
            byteBufferList.l(HybiParser.this.f44657l);
            try {
                HybiParser.this.o();
            } catch (IOException e4) {
                HybiParser.this.K(e4);
                e4.printStackTrace();
            }
            HybiParser.this.f44648c = 0;
            HybiParser.this.E();
        }
    };

    /* loaded from: classes3.dex */
    public static class ProtocolError extends IOException {
        public ProtocolError(String str) {
            super(str);
        }
    }

    public HybiParser(DataEmitter dataEmitter) {
        DataEmitterReader dataEmitterReader = new DataEmitterReader();
        this.f44667v = dataEmitterReader;
        dataEmitter.b0(dataEmitterReader);
        E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(byte[] bArr) throws ProtocolError {
        this.f44654i = w(bArr);
        this.f44648c = this.f44650e ? 3 : 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G(byte b10) {
        boolean z9 = (b10 & 128) == 128;
        this.f44650e = z9;
        int i4 = b10 & Byte.MAX_VALUE;
        this.f44654i = i4;
        if (i4 >= 0 && i4 <= 125) {
            this.f44648c = z9 ? 3 : 4;
            return;
        }
        this.f44653h = i4 == 126 ? 2 : 8;
        this.f44648c = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(byte b10) throws ProtocolError {
        boolean z9 = (b10 & com.google.common.primitives.k.f34876a) == 64;
        boolean z10 = (b10 & 32) == 32;
        boolean z11 = (b10 & 16) == 16;
        if ((this.f44647b || !z9) && !z10 && !z11) {
            this.f44649d = (b10 & 128) == 128;
            int i4 = b10 & com.google.common.base.c.f32110q;
            this.f44652g = i4;
            this.f44651f = z9;
            this.f44656k = new byte[0];
            this.f44657l = new byte[0];
            if (N.contains(Integer.valueOf(i4))) {
                if (!O.contains(Integer.valueOf(this.f44652g)) && !this.f44649d) {
                    throw new ProtocolError("Expected non-final packet");
                }
                this.f44648c = 1;
                return;
            }
            throw new ProtocolError("Bad opcode");
        }
        throw new ProtocolError("RSV not zero");
    }

    private void L() {
        this.f44655j = 0;
        this.f44659n.reset();
    }

    private byte[] P(byte[] bArr, int i4) {
        byte[] bArr2 = new byte[bArr.length - i4];
        System.arraycopy(bArr, i4, bArr2, 0, bArr.length - i4);
        return bArr2;
    }

    private static long l(byte[] bArr, int i4, int i10) {
        if (bArr.length >= i10) {
            long j4 = 0;
            for (int i11 = 0; i11 < i10; i11++) {
                j4 += (bArr[i11 + i4] & 255) << (((i10 - 1) - i11) * 8);
            }
            return j4;
        }
        throw new IllegalArgumentException("length must be less than or equal to b.length");
    }

    private byte[] n(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() throws IOException {
        byte[] y9 = y(this.f44657l, this.f44656k, 0);
        if (this.f44651f) {
            try {
                y9 = x(y9);
            } catch (DataFormatException unused) {
                throw new IOException("Invalid deflated data");
            }
        }
        int i4 = this.f44652g;
        if (i4 == 0) {
            if (this.f44655j != 0) {
                this.f44659n.write(y9);
                if (this.f44649d) {
                    byte[] byteArray = this.f44659n.toByteArray();
                    if (this.f44655j == 1) {
                        A(p(byteArray));
                    } else {
                        B(byteArray);
                    }
                    L();
                    return;
                }
                return;
            }
            throw new ProtocolError("Mode was not set.");
        } else if (i4 == 1) {
            if (this.f44649d) {
                A(p(y9));
                return;
            }
            this.f44655j = 1;
            this.f44659n.write(y9);
        } else if (i4 == 2) {
            if (this.f44649d) {
                B(y9);
                return;
            }
            this.f44655j = 2;
            this.f44659n.write(y9);
        } else if (i4 == 8) {
            z(y9.length >= 2 ? (y9[1] & 255) + ((y9[0] & 255) * 256) : 0, y9.length > 2 ? p(P(y9, 2)) : null);
        } else if (i4 != 9) {
            if (i4 == 10) {
                D(p(y9));
            }
        } else if (y9.length <= 125) {
            String p9 = p(y9);
            M(r(10, y9, -1));
            C(p9);
        } else {
            throw new ProtocolError("Ping payload too large");
        }
    }

    private String p(byte[] bArr) {
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4);
        }
    }

    private byte[] q(int i4, String str, int i10) {
        return r(i4, n(str), i10);
    }

    private byte[] r(int i4, byte[] bArr, int i10) {
        return s(i4, bArr, i10, 0, bArr.length);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private byte[] s(int r22, byte[] r23, int r24, int r25, int r26) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.http.HybiParser.s(int, byte[], int, int, int):byte[]");
    }

    private int w(byte[] bArr) throws ProtocolError {
        long l10 = l(bArr, 0, bArr.length);
        if (l10 < 0 || l10 > 2147483647L) {
            throw new ProtocolError("Bad integer: " + l10);
        }
        return (int) l10;
    }

    private byte[] x(byte[] bArr) throws DataFormatException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f44660o.setInput(bArr);
        while (!this.f44660o.needsInput()) {
            byteArrayOutputStream.write(this.f44661p, 0, this.f44660o.inflate(this.f44661p));
        }
        this.f44660o.setInput(new byte[]{0, 0, -1, -1});
        while (!this.f44660o.needsInput()) {
            byteArrayOutputStream.write(this.f44661p, 0, this.f44660o.inflate(this.f44661p));
        }
        return byteArrayOutputStream.toByteArray();
    }

    private static byte[] y(byte[] bArr, byte[] bArr2, int i4) {
        if (bArr2.length == 0) {
            return bArr;
        }
        for (int i10 = 0; i10 < bArr.length - i4; i10++) {
            int i11 = i4 + i10;
            bArr[i11] = (byte) (bArr[i11] ^ bArr2[i10 % 4]);
        }
        return bArr;
    }

    protected abstract void A(String str);

    protected abstract void B(byte[] bArr);

    protected abstract void C(String str);

    protected abstract void D(String str);

    void E() {
        int i4 = this.f44648c;
        if (i4 == 0) {
            this.f44667v.b(1, this.f44662q);
        } else if (i4 == 1) {
            this.f44667v.b(1, this.f44663r);
        } else if (i4 == 2) {
            this.f44667v.b(this.f44653h, this.f44664s);
        } else if (i4 == 3) {
            this.f44667v.b(4, this.f44665t);
        } else if (i4 != 4) {
        } else {
            this.f44667v.b(this.f44654i, this.f44666u);
        }
    }

    public byte[] I(String str) {
        return q(9, str, -1);
    }

    public byte[] J(String str) {
        return q(10, str, -1);
    }

    protected abstract void K(Exception exc);

    protected abstract void M(byte[] bArr);

    public void N(boolean z9) {
        this.f44647b = z9;
    }

    public void O(boolean z9) {
        this.f44646a = z9;
    }

    protected void finalize() throws Throwable {
        Inflater inflater = this.f44660o;
        if (inflater != null) {
            try {
                inflater.end();
            } catch (Exception e4) {
                Log.e(f44642w, "inflater.end failed", e4);
            }
        }
        super.finalize();
    }

    public void m(int i4, String str) {
        if (this.f44658m) {
            return;
        }
        M(q(8, str, i4));
        this.f44658m = true;
    }

    public byte[] t(String str) {
        return q(1, str, -1);
    }

    public byte[] u(byte[] bArr) {
        return r(2, bArr, -1);
    }

    public byte[] v(byte[] bArr, int i4, int i10) {
        return s(2, bArr, -1, i4, i10);
    }

    protected abstract void z(int i4, String str);
}
