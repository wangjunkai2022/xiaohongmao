package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentTransaction;
import com.bumptech.glide.gifdecoder.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* compiled from: StandardGifDecoder.java */
/* loaded from: classes.dex */
public class f implements a {
    private static final String A = "f";
    private static final int B = 4096;
    private static final int C = -1;
    private static final int D = -1;
    private static final int E = 4;
    private static final int F = 255;
    @ColorInt
    private static final int G = 0;
    @ColorInt

    /* renamed from: f  reason: collision with root package name */
    private int[] f7307f;
    @ColorInt

    /* renamed from: g  reason: collision with root package name */
    private final int[] f7308g;

    /* renamed from: h  reason: collision with root package name */
    private final a.InterfaceC0042a f7309h;

    /* renamed from: i  reason: collision with root package name */
    private ByteBuffer f7310i;

    /* renamed from: j  reason: collision with root package name */
    private byte[] f7311j;

    /* renamed from: k  reason: collision with root package name */
    private d f7312k;

    /* renamed from: l  reason: collision with root package name */
    private short[] f7313l;

    /* renamed from: m  reason: collision with root package name */
    private byte[] f7314m;

    /* renamed from: n  reason: collision with root package name */
    private byte[] f7315n;

    /* renamed from: o  reason: collision with root package name */
    private byte[] f7316o;
    @ColorInt

    /* renamed from: p  reason: collision with root package name */
    private int[] f7317p;

    /* renamed from: q  reason: collision with root package name */
    private int f7318q;

    /* renamed from: r  reason: collision with root package name */
    private c f7319r;

    /* renamed from: s  reason: collision with root package name */
    private Bitmap f7320s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f7321t;

    /* renamed from: u  reason: collision with root package name */
    private int f7322u;

    /* renamed from: v  reason: collision with root package name */
    private int f7323v;

    /* renamed from: w  reason: collision with root package name */
    private int f7324w;

    /* renamed from: x  reason: collision with root package name */
    private int f7325x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private Boolean f7326y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    private Bitmap.Config f7327z;

    public f(@NonNull a.InterfaceC0042a interfaceC0042a, c cVar, ByteBuffer byteBuffer) {
        this(interfaceC0042a, cVar, byteBuffer, 1);
    }

    @ColorInt
    private int b(int i4, int i10, int i11) {
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        for (int i17 = i4; i17 < this.f7323v + i4; i17++) {
            byte[] bArr = this.f7316o;
            if (i17 >= bArr.length || i17 >= i10) {
                break;
            }
            int i18 = this.f7307f[bArr[i17] & 255];
            if (i18 != 0) {
                i12 += (i18 >> 24) & 255;
                i13 += (i18 >> 16) & 255;
                i14 += (i18 >> 8) & 255;
                i15 += i18 & 255;
                i16++;
            }
        }
        int i19 = i4 + i11;
        for (int i20 = i19; i20 < this.f7323v + i19; i20++) {
            byte[] bArr2 = this.f7316o;
            if (i20 >= bArr2.length || i20 >= i10) {
                break;
            }
            int i21 = this.f7307f[bArr2[i20] & 255];
            if (i21 != 0) {
                i12 += (i21 >> 24) & 255;
                i13 += (i21 >> 16) & 255;
                i14 += (i21 >> 8) & 255;
                i15 += i21 & 255;
                i16++;
            }
        }
        if (i16 == 0) {
            return 0;
        }
        return ((i12 / i16) << 24) | ((i13 / i16) << 16) | ((i14 / i16) << 8) | (i15 / i16);
    }

    private void s(b bVar) {
        int i4;
        int i10;
        int i11;
        int i12;
        int i13;
        int[] iArr = this.f7317p;
        int i14 = bVar.f7260d;
        int i15 = this.f7323v;
        int i16 = i14 / i15;
        int i17 = bVar.f7258b / i15;
        int i18 = bVar.f7259c / i15;
        int i19 = bVar.f7257a / i15;
        boolean z9 = this.f7318q == 0;
        int i20 = this.f7325x;
        int i21 = this.f7324w;
        byte[] bArr = this.f7316o;
        int[] iArr2 = this.f7307f;
        Boolean bool = this.f7326y;
        int i22 = 8;
        int i23 = 0;
        int i24 = 0;
        int i25 = 1;
        while (i23 < i16) {
            Boolean bool2 = bool;
            if (bVar.f7261e) {
                if (i24 >= i16) {
                    i4 = i16;
                    int i26 = i25 + 1;
                    if (i26 == 2) {
                        i25 = i26;
                        i24 = 4;
                    } else if (i26 == 3) {
                        i25 = i26;
                        i24 = 2;
                        i22 = 4;
                    } else if (i26 != 4) {
                        i25 = i26;
                    } else {
                        i25 = i26;
                        i24 = 1;
                        i22 = 2;
                    }
                } else {
                    i4 = i16;
                }
                i10 = i24 + i22;
            } else {
                i4 = i16;
                i10 = i24;
                i24 = i23;
            }
            int i27 = i24 + i17;
            boolean z10 = i15 == 1;
            if (i27 < i21) {
                int i28 = i27 * i20;
                int i29 = i28 + i19;
                int i30 = i29 + i18;
                int i31 = i28 + i20;
                if (i31 < i30) {
                    i30 = i31;
                }
                i11 = i10;
                int i32 = i23 * i15 * bVar.f7259c;
                if (z10) {
                    int i33 = i29;
                    while (i33 < i30) {
                        int i34 = i17;
                        int i35 = iArr2[bArr[i32] & 255];
                        if (i35 != 0) {
                            iArr[i33] = i35;
                        } else if (z9 && bool2 == null) {
                            bool2 = Boolean.TRUE;
                        }
                        i32 += i15;
                        i33++;
                        i17 = i34;
                    }
                } else {
                    i13 = i17;
                    int i36 = ((i30 - i29) * i15) + i32;
                    int i37 = i29;
                    while (true) {
                        i12 = i18;
                        if (i37 < i30) {
                            int b10 = b(i32, i36, bVar.f7259c);
                            if (b10 != 0) {
                                iArr[i37] = b10;
                            } else if (z9 && bool2 == null) {
                                bool2 = Boolean.TRUE;
                            }
                            i32 += i15;
                            i37++;
                            i18 = i12;
                        }
                    }
                    bool = bool2;
                    i23++;
                    i17 = i13;
                    i18 = i12;
                    i16 = i4;
                    i24 = i11;
                }
            } else {
                i11 = i10;
            }
            i13 = i17;
            i12 = i18;
            bool = bool2;
            i23++;
            i17 = i13;
            i18 = i12;
            i16 = i4;
            i24 = i11;
        }
        Boolean bool3 = bool;
        if (this.f7326y == null) {
            this.f7326y = Boolean.valueOf(bool3 == null ? false : bool3.booleanValue());
        }
    }

    private void t(b bVar) {
        b bVar2 = bVar;
        int[] iArr = this.f7317p;
        int i4 = bVar2.f7260d;
        int i10 = bVar2.f7258b;
        int i11 = bVar2.f7259c;
        int i12 = bVar2.f7257a;
        boolean z9 = this.f7318q == 0;
        int i13 = this.f7325x;
        byte[] bArr = this.f7316o;
        int[] iArr2 = this.f7307f;
        int i14 = 0;
        byte b10 = -1;
        while (i14 < i4) {
            int i15 = (i14 + i10) * i13;
            int i16 = i15 + i12;
            int i17 = i16 + i11;
            int i18 = i15 + i13;
            if (i18 < i17) {
                i17 = i18;
            }
            int i19 = bVar2.f7259c * i14;
            int i20 = i16;
            while (i20 < i17) {
                byte b11 = bArr[i19];
                int i21 = i4;
                int i22 = b11 & 255;
                if (i22 != b10) {
                    int i23 = iArr2[i22];
                    if (i23 != 0) {
                        iArr[i20] = i23;
                    } else {
                        b10 = b11;
                    }
                }
                i19++;
                i20++;
                i4 = i21;
            }
            i14++;
            bVar2 = bVar;
        }
        Boolean bool = this.f7326y;
        this.f7326y = Boolean.valueOf((bool != null && bool.booleanValue()) || (this.f7326y == null && z9 && b10 != -1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void u(b bVar) {
        int i4;
        int i10;
        short s9;
        f fVar = this;
        if (bVar != null) {
            fVar.f7310i.position(bVar.f7266j);
        }
        if (bVar == null) {
            c cVar = fVar.f7319r;
            i4 = cVar.f7275f;
            i10 = cVar.f7276g;
        } else {
            i4 = bVar.f7259c;
            i10 = bVar.f7260d;
        }
        int i11 = i4 * i10;
        byte[] bArr = fVar.f7316o;
        if (bArr == null || bArr.length < i11) {
            fVar.f7316o = fVar.f7309h.b(i11);
        }
        byte[] bArr2 = fVar.f7316o;
        if (fVar.f7313l == null) {
            fVar.f7313l = new short[4096];
        }
        short[] sArr = fVar.f7313l;
        if (fVar.f7314m == null) {
            fVar.f7314m = new byte[4096];
        }
        byte[] bArr3 = fVar.f7314m;
        if (fVar.f7315n == null) {
            fVar.f7315n = new byte[FragmentTransaction.TRANSIT_FRAGMENT_OPEN];
        }
        byte[] bArr4 = fVar.f7315n;
        int y9 = y();
        int i12 = 1 << y9;
        int i13 = i12 + 1;
        int i14 = i12 + 2;
        int i15 = y9 + 1;
        int i16 = (1 << i15) - 1;
        int i17 = 0;
        for (int i18 = 0; i18 < i12; i18++) {
            sArr[i18] = 0;
            bArr3[i18] = (byte) i18;
        }
        byte[] bArr5 = fVar.f7311j;
        int i19 = i15;
        int i20 = i14;
        int i21 = i16;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = -1;
        int i28 = 0;
        int i29 = 0;
        while (true) {
            if (i17 >= i11) {
                break;
            }
            if (i22 == 0) {
                i22 = x();
                if (i22 <= 0) {
                    fVar.f7322u = 3;
                    break;
                }
                i23 = 0;
            }
            i25 += (bArr5[i23] & 255) << i24;
            i23++;
            i22--;
            int i30 = i24 + 8;
            int i31 = i20;
            int i32 = i27;
            int i33 = i19;
            int i34 = i15;
            int i35 = i29;
            while (true) {
                if (i30 < i33) {
                    i20 = i31;
                    i19 = i33;
                    i24 = i30;
                    i29 = i35;
                    i15 = i34;
                    i27 = i32;
                    break;
                }
                int i36 = i14;
                int i37 = i25 & i21;
                i25 >>= i33;
                i30 -= i33;
                if (i37 == i12) {
                    i21 = i16;
                    i33 = i34;
                    i31 = i36;
                    i14 = i31;
                    i32 = -1;
                } else if (i37 == i13) {
                    i24 = i30;
                    i29 = i35;
                    i20 = i31;
                    i15 = i34;
                    i14 = i36;
                    i27 = i32;
                    i19 = i33;
                    break;
                } else if (i32 == -1) {
                    bArr2[i26] = bArr3[i37];
                    i26++;
                    i17++;
                    i32 = i37;
                    i35 = i32;
                    i14 = i36;
                    i30 = i30;
                } else {
                    if (i37 >= i31) {
                        bArr4[i28] = (byte) i35;
                        i28++;
                        s9 = i32;
                    } else {
                        s9 = i37;
                    }
                    while (s9 >= i12) {
                        bArr4[i28] = bArr3[s9];
                        i28++;
                        s9 = sArr[s9];
                    }
                    i35 = bArr3[s9] & 255;
                    byte b10 = (byte) i35;
                    bArr2[i26] = b10;
                    while (true) {
                        i26++;
                        i17++;
                        if (i28 <= 0) {
                            break;
                        }
                        i28--;
                        bArr2[i26] = bArr4[i28];
                    }
                    byte[] bArr6 = bArr4;
                    if (i31 < 4096) {
                        sArr[i31] = (short) i32;
                        bArr3[i31] = b10;
                        i31++;
                        if ((i31 & i21) == 0 && i31 < 4096) {
                            i33++;
                            i21 += i31;
                        }
                    }
                    i32 = i37;
                    i14 = i36;
                    i30 = i30;
                    bArr4 = bArr6;
                }
            }
            fVar = this;
        }
        Arrays.fill(bArr2, i26, i11, (byte) 0);
    }

    @NonNull
    private d v() {
        if (this.f7312k == null) {
            this.f7312k = new d();
        }
        return this.f7312k;
    }

    private Bitmap w() {
        Boolean bool = this.f7326y;
        Bitmap c10 = this.f7309h.c(this.f7325x, this.f7324w, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f7327z);
        c10.setHasAlpha(true);
        return c10;
    }

    private int x() {
        int y9 = y();
        if (y9 <= 0) {
            return y9;
        }
        ByteBuffer byteBuffer = this.f7310i;
        byteBuffer.get(this.f7311j, 0, Math.min(y9, byteBuffer.remaining()));
        return y9;
    }

    private int y() {
        return this.f7310i.get() & 255;
    }

    private Bitmap z(b bVar, b bVar2) {
        int i4;
        int i10;
        Bitmap bitmap;
        int[] iArr = this.f7317p;
        int i11 = 0;
        if (bVar2 == null) {
            Bitmap bitmap2 = this.f7320s;
            if (bitmap2 != null) {
                this.f7309h.a(bitmap2);
            }
            this.f7320s = null;
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && bVar2.f7263g == 3 && this.f7320s == null) {
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && (i10 = bVar2.f7263g) > 0) {
            if (i10 == 2) {
                if (!bVar.f7262f) {
                    c cVar = this.f7319r;
                    int i12 = cVar.f7281l;
                    if (bVar.f7267k == null || cVar.f7279j != bVar.f7264h) {
                        i11 = i12;
                    }
                }
                int i13 = bVar2.f7260d;
                int i14 = this.f7323v;
                int i15 = i13 / i14;
                int i16 = bVar2.f7258b / i14;
                int i17 = bVar2.f7259c / i14;
                int i18 = bVar2.f7257a / i14;
                int i19 = this.f7325x;
                int i20 = (i16 * i19) + i18;
                int i21 = (i15 * i19) + i20;
                while (i20 < i21) {
                    int i22 = i20 + i17;
                    for (int i23 = i20; i23 < i22; i23++) {
                        iArr[i23] = i11;
                    }
                    i20 += this.f7325x;
                }
            } else if (i10 == 3 && (bitmap = this.f7320s) != null) {
                int i24 = this.f7325x;
                bitmap.getPixels(iArr, 0, i24, 0, 0, i24, this.f7324w);
            }
        }
        u(bVar);
        if (!bVar.f7261e && this.f7323v == 1) {
            t(bVar);
        } else {
            s(bVar);
        }
        if (this.f7321t && ((i4 = bVar.f7263g) == 0 || i4 == 1)) {
            if (this.f7320s == null) {
                this.f7320s = w();
            }
            Bitmap bitmap3 = this.f7320s;
            int i25 = this.f7325x;
            bitmap3.setPixels(iArr, 0, i25, 0, 0, i25, this.f7324w);
        }
        Bitmap w9 = w();
        int i26 = this.f7325x;
        w9.setPixels(iArr, 0, i26, 0, 0, i26, this.f7324w);
        return w9;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int a() {
        return this.f7319r.f7272c;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    @Deprecated
    public int c() {
        int i4 = this.f7319r.f7282m;
        if (i4 == -1) {
            return 1;
        }
        return i4;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public void clear() {
        this.f7319r = null;
        byte[] bArr = this.f7316o;
        if (bArr != null) {
            this.f7309h.e(bArr);
        }
        int[] iArr = this.f7317p;
        if (iArr != null) {
            this.f7309h.f(iArr);
        }
        Bitmap bitmap = this.f7320s;
        if (bitmap != null) {
            this.f7309h.a(bitmap);
        }
        this.f7320s = null;
        this.f7310i = null;
        this.f7326y = null;
        byte[] bArr2 = this.f7311j;
        if (bArr2 != null) {
            this.f7309h.e(bArr2);
        }
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int d(@Nullable InputStream inputStream, int i4) {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i4 > 0 ? i4 + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = inputStream.read(bArr, 0, 16384);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byteArrayOutputStream.flush();
                read(byteArrayOutputStream.toByteArray());
            } catch (IOException e4) {
                Log.w(A, "Error reading data from stream", e4);
            }
        } else {
            this.f7322u = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e10) {
                Log.w(A, "Error closing stream", e10);
            }
        }
        return this.f7322u;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    @Nullable
    public synchronized Bitmap e() {
        if (this.f7319r.f7272c <= 0 || this.f7318q < 0) {
            String str = A;
            if (Log.isLoggable(str, 3)) {
                Log.d(str, "Unable to decode frame, frameCount=" + this.f7319r.f7272c + ", framePointer=" + this.f7318q);
            }
            this.f7322u = 1;
        }
        int i4 = this.f7322u;
        if (i4 != 1 && i4 != 2) {
            this.f7322u = 0;
            if (this.f7311j == null) {
                this.f7311j = this.f7309h.b(255);
            }
            b bVar = this.f7319r.f7274e.get(this.f7318q);
            int i10 = this.f7318q - 1;
            b bVar2 = i10 >= 0 ? this.f7319r.f7274e.get(i10) : null;
            int[] iArr = bVar.f7267k;
            if (iArr == null) {
                iArr = this.f7319r.f7270a;
            }
            this.f7307f = iArr;
            if (iArr == null) {
                String str2 = A;
                if (Log.isLoggable(str2, 3)) {
                    Log.d(str2, "No valid color table found for frame #" + this.f7318q);
                }
                this.f7322u = 1;
                return null;
            }
            if (bVar.f7262f) {
                System.arraycopy(iArr, 0, this.f7308g, 0, iArr.length);
                int[] iArr2 = this.f7308g;
                this.f7307f = iArr2;
                iArr2[bVar.f7264h] = 0;
                if (bVar.f7263g == 2 && this.f7318q == 0) {
                    this.f7326y = Boolean.TRUE;
                }
            }
            return z(bVar, bVar2);
        }
        String str3 = A;
        if (Log.isLoggable(str3, 3)) {
            Log.d(str3, "Unable to decode frame, status=" + this.f7322u);
        }
        return null;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public void f() {
        this.f7318q = (this.f7318q + 1) % this.f7319r.f7272c;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public void g(@NonNull Bitmap.Config config) {
        if (config != Bitmap.Config.ARGB_8888 && config != Bitmap.Config.RGB_565) {
            throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
        }
        this.f7327z = config;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int getHeight() {
        return this.f7319r.f7276g;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int getStatus() {
        return this.f7322u;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int getWidth() {
        return this.f7319r.f7275f;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int h(int i4) {
        if (i4 >= 0) {
            c cVar = this.f7319r;
            if (i4 < cVar.f7272c) {
                return cVar.f7274e.get(i4).f7265i;
            }
        }
        return -1;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    @NonNull
    public ByteBuffer i() {
        return this.f7310i;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int j() {
        int i4 = this.f7319r.f7282m;
        if (i4 == -1) {
            return 1;
        }
        if (i4 == 0) {
            return 0;
        }
        return i4 + 1;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public synchronized void k(@NonNull c cVar, @NonNull byte[] bArr) {
        n(cVar, ByteBuffer.wrap(bArr));
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int l() {
        int i4;
        if (this.f7319r.f7272c <= 0 || (i4 = this.f7318q) < 0) {
            return 0;
        }
        return h(i4);
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public void m() {
        this.f7318q = -1;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public synchronized void n(@NonNull c cVar, @NonNull ByteBuffer byteBuffer) {
        p(cVar, byteBuffer, 1);
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int o() {
        return this.f7318q;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public synchronized void p(@NonNull c cVar, @NonNull ByteBuffer byteBuffer, int i4) {
        if (i4 > 0) {
            int highestOneBit = Integer.highestOneBit(i4);
            this.f7322u = 0;
            this.f7319r = cVar;
            this.f7318q = -1;
            ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.f7310i = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            this.f7310i.order(ByteOrder.LITTLE_ENDIAN);
            this.f7321t = false;
            Iterator<b> it = cVar.f7274e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (it.next().f7263g == 3) {
                    this.f7321t = true;
                    break;
                }
            }
            this.f7323v = highestOneBit;
            int i10 = cVar.f7275f;
            this.f7325x = i10 / highestOneBit;
            int i11 = cVar.f7276g;
            this.f7324w = i11 / highestOneBit;
            this.f7316o = this.f7309h.b(i10 * i11);
            this.f7317p = this.f7309h.d(this.f7325x * this.f7324w);
        } else {
            throw new IllegalArgumentException("Sample size must be >=0, not: " + i4);
        }
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int q() {
        return this.f7319r.f7282m;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int r() {
        return this.f7310i.limit() + this.f7316o.length + (this.f7317p.length * 4);
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public synchronized int read(@Nullable byte[] bArr) {
        c d4 = v().r(bArr).d();
        this.f7319r = d4;
        if (bArr != null) {
            k(d4, bArr);
        }
        return this.f7322u;
    }

    public f(@NonNull a.InterfaceC0042a interfaceC0042a, c cVar, ByteBuffer byteBuffer, int i4) {
        this(interfaceC0042a);
        p(cVar, byteBuffer, i4);
    }

    public f(@NonNull a.InterfaceC0042a interfaceC0042a) {
        this.f7308g = new int[256];
        this.f7327z = Bitmap.Config.ARGB_8888;
        this.f7309h = interfaceC0042a;
        this.f7319r = new c();
    }
}
