package com.bumptech.glide.gifdecoder;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* compiled from: GifHeaderParser.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: e  reason: collision with root package name */
    private static final String f7283e = "GifHeaderParser";

    /* renamed from: f  reason: collision with root package name */
    private static final int f7284f = 255;

    /* renamed from: g  reason: collision with root package name */
    private static final int f7285g = 44;

    /* renamed from: h  reason: collision with root package name */
    private static final int f7286h = 33;

    /* renamed from: i  reason: collision with root package name */
    private static final int f7287i = 59;

    /* renamed from: j  reason: collision with root package name */
    private static final int f7288j = 249;

    /* renamed from: k  reason: collision with root package name */
    private static final int f7289k = 255;

    /* renamed from: l  reason: collision with root package name */
    private static final int f7290l = 254;

    /* renamed from: m  reason: collision with root package name */
    private static final int f7291m = 1;

    /* renamed from: n  reason: collision with root package name */
    private static final int f7292n = 28;

    /* renamed from: o  reason: collision with root package name */
    private static final int f7293o = 2;

    /* renamed from: p  reason: collision with root package name */
    private static final int f7294p = 1;

    /* renamed from: q  reason: collision with root package name */
    private static final int f7295q = 128;

    /* renamed from: r  reason: collision with root package name */
    private static final int f7296r = 64;

    /* renamed from: s  reason: collision with root package name */
    private static final int f7297s = 7;

    /* renamed from: t  reason: collision with root package name */
    private static final int f7298t = 128;

    /* renamed from: u  reason: collision with root package name */
    private static final int f7299u = 7;

    /* renamed from: v  reason: collision with root package name */
    static final int f7300v = 2;

    /* renamed from: w  reason: collision with root package name */
    static final int f7301w = 10;

    /* renamed from: x  reason: collision with root package name */
    private static final int f7302x = 256;

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer f7304b;

    /* renamed from: c  reason: collision with root package name */
    private c f7305c;

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f7303a = new byte[256];

    /* renamed from: d  reason: collision with root package name */
    private int f7306d = 0;

    private boolean b() {
        return this.f7305c.f7271b != 0;
    }

    private int e() {
        try {
            return this.f7304b.get() & 255;
        } catch (Exception unused) {
            this.f7305c.f7271b = 1;
            return 0;
        }
    }

    private void f() {
        this.f7305c.f7273d.f7257a = o();
        this.f7305c.f7273d.f7258b = o();
        this.f7305c.f7273d.f7259c = o();
        this.f7305c.f7273d.f7260d = o();
        int e4 = e();
        boolean z9 = (e4 & 128) != 0;
        int pow = (int) Math.pow(2.0d, (e4 & 7) + 1);
        b bVar = this.f7305c.f7273d;
        bVar.f7261e = (e4 & 64) != 0;
        if (z9) {
            bVar.f7267k = h(pow);
        } else {
            bVar.f7267k = null;
        }
        this.f7305c.f7273d.f7266j = this.f7304b.position();
        t();
        if (b()) {
            return;
        }
        c cVar = this.f7305c;
        cVar.f7272c++;
        cVar.f7274e.add(cVar.f7273d);
    }

    private void g() {
        int e4 = e();
        this.f7306d = e4;
        if (e4 <= 0) {
            return;
        }
        int i4 = 0;
        int i10 = 0;
        while (true) {
            try {
                i10 = this.f7306d;
                if (i4 >= i10) {
                    return;
                }
                i10 -= i4;
                this.f7304b.get(this.f7303a, i4, i10);
                i4 += i10;
            } catch (Exception e10) {
                if (Log.isLoggable(f7283e, 3)) {
                    Log.d(f7283e, "Error Reading Block n: " + i4 + " count: " + i10 + " blockSize: " + this.f7306d, e10);
                }
                this.f7305c.f7271b = 1;
                return;
            }
        }
    }

    @Nullable
    private int[] h(int i4) {
        byte[] bArr = new byte[i4 * 3];
        int[] iArr = null;
        try {
            this.f7304b.get(bArr);
            iArr = new int[256];
            int i10 = 0;
            int i11 = 0;
            while (i10 < i4) {
                int i12 = i11 + 1;
                int i13 = i12 + 1;
                int i14 = i13 + 1;
                int i15 = i10 + 1;
                iArr[i10] = ((bArr[i11] & 255) << 16) | ViewCompat.MEASURED_STATE_MASK | ((bArr[i12] & 255) << 8) | (bArr[i13] & 255);
                i11 = i14;
                i10 = i15;
            }
        } catch (BufferUnderflowException e4) {
            if (Log.isLoggable(f7283e, 3)) {
                Log.d(f7283e, "Format Error Reading Color Table", e4);
            }
            this.f7305c.f7271b = 1;
        }
        return iArr;
    }

    private void i() {
        j(Integer.MAX_VALUE);
    }

    private void j(int i4) {
        boolean z9 = false;
        while (!z9 && !b() && this.f7305c.f7272c <= i4) {
            int e4 = e();
            if (e4 == 33) {
                int e10 = e();
                if (e10 == 1) {
                    s();
                } else if (e10 == f7288j) {
                    this.f7305c.f7273d = new b();
                    k();
                } else if (e10 == f7290l) {
                    s();
                } else if (e10 != 255) {
                    s();
                } else {
                    g();
                    StringBuilder sb = new StringBuilder();
                    for (int i10 = 0; i10 < 11; i10++) {
                        sb.append((char) this.f7303a[i10]);
                    }
                    if (sb.toString().equals("NETSCAPE2.0")) {
                        n();
                    } else {
                        s();
                    }
                }
            } else if (e4 == 44) {
                c cVar = this.f7305c;
                if (cVar.f7273d == null) {
                    cVar.f7273d = new b();
                }
                f();
            } else if (e4 != 59) {
                this.f7305c.f7271b = 1;
            } else {
                z9 = true;
            }
        }
    }

    private void k() {
        e();
        int e4 = e();
        b bVar = this.f7305c.f7273d;
        int i4 = (e4 & 28) >> 2;
        bVar.f7263g = i4;
        if (i4 == 0) {
            bVar.f7263g = 1;
        }
        bVar.f7262f = (e4 & 1) != 0;
        int o9 = o();
        if (o9 < 2) {
            o9 = 10;
        }
        b bVar2 = this.f7305c.f7273d;
        bVar2.f7265i = o9 * 10;
        bVar2.f7264h = e();
        e();
    }

    private void l() {
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < 6; i4++) {
            sb.append((char) e());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.f7305c.f7271b = 1;
            return;
        }
        m();
        if (!this.f7305c.f7277h || b()) {
            return;
        }
        c cVar = this.f7305c;
        cVar.f7270a = h(cVar.f7278i);
        c cVar2 = this.f7305c;
        cVar2.f7281l = cVar2.f7270a[cVar2.f7279j];
    }

    private void m() {
        this.f7305c.f7275f = o();
        this.f7305c.f7276g = o();
        int e4 = e();
        c cVar = this.f7305c;
        cVar.f7277h = (e4 & 128) != 0;
        cVar.f7278i = (int) Math.pow(2.0d, (e4 & 7) + 1);
        this.f7305c.f7279j = e();
        this.f7305c.f7280k = e();
    }

    private void n() {
        do {
            g();
            byte[] bArr = this.f7303a;
            if (bArr[0] == 1) {
                this.f7305c.f7282m = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.f7306d <= 0) {
                return;
            }
        } while (!b());
    }

    private int o() {
        return this.f7304b.getShort();
    }

    private void p() {
        this.f7304b = null;
        Arrays.fill(this.f7303a, (byte) 0);
        this.f7305c = new c();
        this.f7306d = 0;
    }

    private void s() {
        int e4;
        do {
            e4 = e();
            this.f7304b.position(Math.min(this.f7304b.position() + e4, this.f7304b.limit()));
        } while (e4 > 0);
    }

    private void t() {
        e();
        s();
    }

    public void a() {
        this.f7304b = null;
        this.f7305c = null;
    }

    public boolean c() {
        l();
        if (!b()) {
            j(2);
        }
        return this.f7305c.f7272c > 1;
    }

    @NonNull
    public c d() {
        if (this.f7304b != null) {
            if (b()) {
                return this.f7305c;
            }
            l();
            if (!b()) {
                i();
                c cVar = this.f7305c;
                if (cVar.f7272c < 0) {
                    cVar.f7271b = 1;
                }
            }
            return this.f7305c;
        }
        throw new IllegalStateException("You must call setData() before parseHeader()");
    }

    public d q(@NonNull ByteBuffer byteBuffer) {
        p();
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.f7304b = asReadOnlyBuffer;
        asReadOnlyBuffer.position(0);
        this.f7304b.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }

    public d r(@Nullable byte[] bArr) {
        if (bArr != null) {
            q(ByteBuffer.wrap(bArr));
        } else {
            this.f7304b = null;
            this.f7305c.f7271b = 2;
        }
        return this;
    }
}
