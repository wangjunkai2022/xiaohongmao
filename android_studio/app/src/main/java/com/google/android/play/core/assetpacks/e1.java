package com.google.android.play.core.assetpacks;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class e1 extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final c3 f31289a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f31290b;

    /* renamed from: c  reason: collision with root package name */
    private long f31291c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f31292d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f31293e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e1(InputStream inputStream) {
        super(inputStream);
        this.f31289a = new c3();
        this.f31290b = new byte[4096];
        this.f31292d = false;
        this.f31293e = false;
    }

    private final int i(byte[] bArr, int i4, int i10) throws IOException {
        return Math.max(0, super.read(bArr, i4, i10));
    }

    private final boolean k(int i4) throws IOException {
        int i10 = i(this.f31290b, 0, i4);
        if (i10 != i4) {
            int i11 = i4 - i10;
            if (i(this.f31290b, i10, i11) != i11) {
                this.f31289a.b(this.f31290b, 0, i10);
                return false;
            }
        }
        this.f31289a.b(this.f31290b, 0, i4);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long a() {
        return this.f31291c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final e4 b() throws IOException {
        byte[] bArr;
        if (this.f31291c <= 0) {
            if (this.f31292d) {
            }
            return new y0(null, -1L, -1, false, false, null);
        }
        do {
            bArr = this.f31290b;
        } while (read(bArr, 0, bArr.length) != -1);
        if (this.f31292d && !this.f31293e) {
            if (!k(30)) {
                this.f31292d = true;
                return this.f31289a.c();
            }
            e4 c10 = this.f31289a.c();
            if (c10.d()) {
                this.f31293e = true;
                return c10;
            } else if (c10.b() != 4294967295L) {
                int a10 = this.f31289a.a() - 30;
                long j4 = a10;
                int length = this.f31290b.length;
                if (j4 > length) {
                    do {
                        length += length;
                    } while (length < j4);
                    this.f31290b = Arrays.copyOf(this.f31290b, length);
                }
                if (!k(a10)) {
                    this.f31292d = true;
                    return this.f31289a.c();
                }
                e4 c11 = this.f31289a.c();
                this.f31291c = c11.b();
                return c11;
            } else {
                throw new t1("Files bigger than 4GiB are not supported.");
            }
        }
        return new y0(null, -1L, -1, false, false, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d() {
        return this.f31293e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean h() {
        return this.f31292d;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i4, int i10) throws IOException {
        long j4 = this.f31291c;
        if (j4 <= 0 || this.f31292d) {
            return -1;
        }
        int i11 = i(bArr, i4, (int) Math.min(j4, i10));
        this.f31291c -= i11;
        if (i11 == 0) {
            this.f31292d = true;
            return 0;
        }
        return i11;
    }
}
