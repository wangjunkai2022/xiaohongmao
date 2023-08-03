package com.tangxiaolv.telegramgallery.TL;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: NativeByteBuffer.java */
/* loaded from: classes3.dex */
public class j extends com.tangxiaolv.telegramgallery.TL.a {

    /* renamed from: f  reason: collision with root package name */
    private static final ThreadLocal<j> f56329f = new a();

    /* renamed from: a  reason: collision with root package name */
    protected int f56330a;

    /* renamed from: b  reason: collision with root package name */
    public ByteBuffer f56331b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f56332c;

    /* renamed from: d  reason: collision with root package name */
    private int f56333d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f56334e;

    /* compiled from: NativeByteBuffer.java */
    /* loaded from: classes3.dex */
    class a extends ThreadLocal<j> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public j initialValue() {
            return new j(0, true, null);
        }
    }

    /* synthetic */ j(int i4, boolean z9, a aVar) {
        this(i4, z9);
    }

    public int A(byte b10) {
        return b10 >= 0 ? b10 : b10 + 256;
    }

    public boolean B() {
        return this.f56331b.hasRemaining();
    }

    public int C() {
        return this.f56331b.limit();
    }

    public void D(int i4) {
        this.f56331b.limit(i4);
    }

    public int E() {
        return this.f56331b.position();
    }

    public void F(int i4) {
        this.f56331b.position(i4);
    }

    public void G(ByteBuffer byteBuffer) {
        this.f56331b.put(byteBuffer);
    }

    public void H() {
        if (this.f56330a != 0) {
            this.f56334e = true;
        }
    }

    public void I() {
        if (this.f56332c) {
            this.f56333d = 0;
        } else {
            this.f56331b.rewind();
        }
    }

    public void J(j jVar) {
        if (this.f56332c) {
            this.f56333d += jVar.C();
            return;
        }
        jVar.I();
        this.f56331b.put(jVar.f56331b);
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public int a() {
        return this.f56331b.position();
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public int b() {
        if (!this.f56332c) {
            return this.f56331b.position();
        }
        return this.f56333d;
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public boolean c(boolean z9) {
        int i4 = i(z9);
        if (i4 == -1720552011) {
            return true;
        }
        if (i4 != -1132882121 && z9) {
            throw new RuntimeException("Not bool value!");
        }
        return false;
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public byte[] d(boolean z9) {
        int i4;
        try {
            int A = A(this.f56331b.get());
            if (A >= 254) {
                A = A(this.f56331b.get()) | (A(this.f56331b.get()) << 8) | (A(this.f56331b.get()) << 16);
                i4 = 4;
            } else {
                i4 = 1;
            }
            byte[] bArr = new byte[A];
            this.f56331b.get(bArr);
            while ((A + i4) % 4 != 0) {
                this.f56331b.get();
                i4++;
            }
            return bArr;
        } catch (Exception e4) {
            if (!z9) {
                e4.printStackTrace();
                return null;
            }
            throw new RuntimeException("read byte array error", e4);
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public j e(boolean z9) {
        int i4;
        try {
            int A = A(this.f56331b.get());
            if (A >= 254) {
                A = A(this.f56331b.get()) | (A(this.f56331b.get()) << 8) | (A(this.f56331b.get()) << 16);
                i4 = 4;
            } else {
                i4 = 1;
            }
            j jVar = new j(A);
            int limit = this.f56331b.limit();
            ByteBuffer byteBuffer = this.f56331b;
            byteBuffer.limit(byteBuffer.position() + A);
            jVar.f56331b.put(this.f56331b);
            this.f56331b.limit(limit);
            jVar.f56331b.position(0);
            while ((A + i4) % 4 != 0) {
                this.f56331b.get();
                i4++;
            }
            return jVar;
        } catch (Exception e4) {
            if (!z9) {
                e4.printStackTrace();
                return null;
            }
            throw new RuntimeException("read byte array error", e4);
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public void f(byte[] bArr, boolean z9) {
        try {
            this.f56331b.get(bArr);
        } catch (Exception e4) {
            if (z9) {
                throw new RuntimeException("read raw error", e4);
            }
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public byte[] g(int i4, boolean z9) {
        byte[] bArr = new byte[i4];
        f(bArr, z9);
        return bArr;
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public double h(boolean z9) {
        try {
            return Double.longBitsToDouble(j(z9));
        } catch (Exception e4) {
            if (z9) {
                throw new RuntimeException("read double error", e4);
            }
            return 0.0d;
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public int i(boolean z9) {
        try {
            return this.f56331b.getInt();
        } catch (Exception e4) {
            if (!z9) {
                e4.printStackTrace();
                return 0;
            }
            throw new RuntimeException("read int32 error", e4);
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public long j(boolean z9) {
        try {
            return this.f56331b.getLong();
        } catch (Exception e4) {
            if (z9) {
                throw new RuntimeException("read int64 error", e4);
            }
            return 0L;
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public String k(boolean z9) {
        int i4;
        try {
            int A = A(this.f56331b.get());
            if (A >= 254) {
                A = A(this.f56331b.get()) | (A(this.f56331b.get()) << 8) | (A(this.f56331b.get()) << 16);
                i4 = 4;
            } else {
                i4 = 1;
            }
            byte[] bArr = new byte[A];
            this.f56331b.get(bArr);
            while ((A + i4) % 4 != 0) {
                this.f56331b.get();
                i4++;
            }
            return new String(bArr, "UTF-8");
        } catch (Exception e4) {
            if (!z9) {
                e4.printStackTrace();
                return null;
            }
            throw new RuntimeException("read string error", e4);
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public void l(int i4) {
        if (i4 == 0) {
            return;
        }
        if (!this.f56332c) {
            ByteBuffer byteBuffer = this.f56331b;
            byteBuffer.position(byteBuffer.position() + i4);
            return;
        }
        this.f56333d += i4;
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public void m(boolean z9) {
        if (this.f56332c) {
            this.f56333d += 4;
        } else if (z9) {
            v(-1720552011);
        } else {
            v(-1132882121);
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public void n(byte b10) {
        try {
            if (!this.f56332c) {
                this.f56331b.put(b10);
            } else {
                this.f56333d++;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public void o(int i4) {
        n((byte) i4);
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public void p(byte[] bArr) {
        try {
            if (bArr.length <= 253) {
                if (this.f56332c) {
                    this.f56333d++;
                } else {
                    this.f56331b.put((byte) bArr.length);
                }
            } else if (this.f56332c) {
                this.f56333d += 4;
            } else {
                this.f56331b.put((byte) -2);
                this.f56331b.put((byte) bArr.length);
                this.f56331b.put((byte) (bArr.length >> 8));
                this.f56331b.put((byte) (bArr.length >> 16));
            }
            if (this.f56332c) {
                this.f56333d += bArr.length;
            } else {
                this.f56331b.put(bArr);
            }
            for (int i4 = bArr.length <= 253 ? 1 : 4; (bArr.length + i4) % 4 != 0; i4++) {
                if (this.f56332c) {
                    this.f56333d++;
                } else {
                    this.f56331b.put((byte) 0);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public void q(byte[] bArr, int i4, int i10) {
        try {
            if (i10 <= 253) {
                if (this.f56332c) {
                    this.f56333d++;
                } else {
                    this.f56331b.put((byte) i10);
                }
            } else if (this.f56332c) {
                this.f56333d += 4;
            } else {
                this.f56331b.put((byte) -2);
                this.f56331b.put((byte) i10);
                this.f56331b.put((byte) (i10 >> 8));
                this.f56331b.put((byte) (i10 >> 16));
            }
            if (this.f56332c) {
                this.f56333d += i10;
            } else {
                this.f56331b.put(bArr, i4, i10);
            }
            for (int i11 = i10 <= 253 ? 1 : 4; (i10 + i11) % 4 != 0; i11++) {
                if (this.f56332c) {
                    this.f56333d++;
                } else {
                    this.f56331b.put((byte) 0);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public void r(j jVar) {
        try {
            int C = jVar.C();
            if (C <= 253) {
                if (this.f56332c) {
                    this.f56333d++;
                } else {
                    this.f56331b.put((byte) C);
                }
            } else if (this.f56332c) {
                this.f56333d += 4;
            } else {
                this.f56331b.put((byte) -2);
                this.f56331b.put((byte) C);
                this.f56331b.put((byte) (C >> 8));
                this.f56331b.put((byte) (C >> 16));
            }
            if (this.f56332c) {
                this.f56333d += C;
            } else {
                jVar.I();
                this.f56331b.put(jVar.f56331b);
            }
            for (int i4 = C <= 253 ? 1 : 4; (C + i4) % 4 != 0; i4++) {
                if (this.f56332c) {
                    this.f56333d++;
                } else {
                    this.f56331b.put((byte) 0);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public void s(byte[] bArr) {
        try {
            if (!this.f56332c) {
                this.f56331b.put(bArr);
            } else {
                this.f56333d += bArr.length;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public void t(byte[] bArr, int i4, int i10) {
        try {
            if (!this.f56332c) {
                this.f56331b.put(bArr, i4, i10);
            } else {
                this.f56333d += i10;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public void u(double d4) {
        try {
            w(Double.doubleToRawLongBits(d4));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public void v(int i4) {
        try {
            if (!this.f56332c) {
                this.f56331b.putInt(i4);
            } else {
                this.f56333d += 4;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public void w(long j4) {
        try {
            if (!this.f56332c) {
                this.f56331b.putLong(j4);
            } else {
                this.f56333d += 8;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.tangxiaolv.telegramgallery.TL.a
    public void x(String str) {
        try {
            p(str.getBytes("UTF-8"));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public int y() {
        return this.f56331b.capacity();
    }

    public void z() {
        this.f56331b.compact();
    }

    private j(int i4, boolean z9) {
        this.f56334e = true;
    }

    public j(int i4) throws Exception {
        this.f56334e = true;
        if (i4 >= 0) {
            if (this.f56330a != 0) {
                this.f56331b.position(0);
                this.f56331b.limit(i4);
                this.f56331b.order(ByteOrder.LITTLE_ENDIAN);
                return;
            }
            return;
        }
        throw new Exception("invalid NativeByteBuffer size");
    }

    public j(boolean z9) {
        this.f56334e = true;
        this.f56332c = z9;
    }
}
