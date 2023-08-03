package com.fasterxml.jackson.core.io;

import com.google.android.exoplayer2.analytics.j1;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/* compiled from: UTF32Reader.java */
/* loaded from: classes.dex */
public class j extends Reader {

    /* renamed from: l  reason: collision with root package name */
    protected static final int f13967l = 1114111;

    /* renamed from: m  reason: collision with root package name */
    protected static final char f13968m = 0;

    /* renamed from: a  reason: collision with root package name */
    protected final d f13969a;

    /* renamed from: b  reason: collision with root package name */
    protected InputStream f13970b;

    /* renamed from: c  reason: collision with root package name */
    protected byte[] f13971c;

    /* renamed from: d  reason: collision with root package name */
    protected int f13972d;

    /* renamed from: e  reason: collision with root package name */
    protected int f13973e;

    /* renamed from: f  reason: collision with root package name */
    protected final boolean f13974f;

    /* renamed from: g  reason: collision with root package name */
    protected char f13975g = 0;

    /* renamed from: h  reason: collision with root package name */
    protected int f13976h;

    /* renamed from: i  reason: collision with root package name */
    protected int f13977i;

    /* renamed from: j  reason: collision with root package name */
    protected final boolean f13978j;

    /* renamed from: k  reason: collision with root package name */
    protected char[] f13979k;

    public j(d dVar, InputStream inputStream, byte[] bArr, int i4, int i10, boolean z9) {
        this.f13969a = dVar;
        this.f13970b = inputStream;
        this.f13971c = bArr;
        this.f13972d = i4;
        this.f13973e = i10;
        this.f13974f = z9;
        this.f13978j = inputStream != null;
    }

    private void a() {
        byte[] bArr = this.f13971c;
        if (bArr != null) {
            this.f13971c = null;
            d dVar = this.f13969a;
            if (dVar != null) {
                dVar.v(bArr);
            }
        }
    }

    private boolean b(int i4) throws IOException {
        byte[] bArr;
        InputStream inputStream = this.f13970b;
        if (inputStream == null || (bArr = this.f13971c) == null) {
            return false;
        }
        this.f13977i += this.f13973e - i4;
        if (i4 > 0) {
            int i10 = this.f13972d;
            if (i10 > 0) {
                System.arraycopy(bArr, i10, bArr, 0, i4);
                this.f13972d = 0;
            }
            this.f13973e = i4;
        } else {
            this.f13972d = 0;
            int read = inputStream.read(bArr);
            if (read < 1) {
                this.f13973e = 0;
                if (read < 0) {
                    if (this.f13978j) {
                        a();
                    }
                    return false;
                }
                i();
            }
            this.f13973e = read;
        }
        while (true) {
            int i11 = this.f13973e;
            if (i11 >= 4) {
                return true;
            }
            InputStream inputStream2 = this.f13970b;
            byte[] bArr2 = this.f13971c;
            int read2 = inputStream2.read(bArr2, i11, bArr2.length - i11);
            if (read2 < 1) {
                if (read2 < 0) {
                    if (this.f13978j) {
                        a();
                    }
                    k(this.f13973e, 4);
                }
                i();
            }
            this.f13973e += read2;
        }
    }

    private void d(char[] cArr, int i4, int i10) throws IOException {
        throw new ArrayIndexOutOfBoundsException(String.format("read(buf,%d,%d), cbuf[%d]", Integer.valueOf(i4), Integer.valueOf(i10), Integer.valueOf(cArr.length)));
    }

    private void h(int i4, int i10, String str) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid UTF-32 character 0x");
        sb.append(Integer.toHexString(i4));
        sb.append(str);
        sb.append(" at char #");
        sb.append(this.f13976h + i10);
        sb.append(", byte #");
        sb.append((this.f13977i + this.f13972d) - 1);
        sb.append(")");
        throw new CharConversionException(sb.toString());
    }

    private void i() throws IOException {
        throw new IOException("Strange I/O stream, returned 0 bytes on read");
    }

    private void k(int i4, int i10) throws IOException {
        int i11 = this.f13976h;
        throw new CharConversionException("Unexpected EOF in the middle of a 4-byte UTF-32 char: got " + i4 + ", needed " + i10 + ", at char #" + i11 + ", byte #" + (this.f13977i + i4) + ")");
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this.f13970b;
        if (inputStream != null) {
            this.f13970b = null;
            a();
            inputStream.close();
        }
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        if (this.f13979k == null) {
            this.f13979k = new char[1];
        }
        if (read(this.f13979k, 0, 1) < 1) {
            return -1;
        }
        return this.f13979k[0];
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i4, int i10) throws IOException {
        int i11;
        int i12;
        int i13;
        if (this.f13971c == null) {
            return -1;
        }
        if (i10 < 1) {
            return i10;
        }
        if (i4 < 0 || i4 + i10 > cArr.length) {
            d(cArr, i4, i10);
        }
        int i14 = i10 + i4;
        char c10 = this.f13975g;
        if (c10 != 0) {
            i11 = i4 + 1;
            cArr[i4] = c10;
            this.f13975g = (char) 0;
        } else {
            int i15 = this.f13973e - this.f13972d;
            if (i15 < 4 && !b(i15)) {
                if (i15 == 0) {
                    return -1;
                }
                k(this.f13973e - this.f13972d, 4);
            }
            i11 = i4;
        }
        int i16 = this.f13973e - 4;
        while (true) {
            if (i11 >= i14) {
                break;
            }
            int i17 = this.f13972d;
            if (i17 > i16) {
                break;
            }
            if (this.f13974f) {
                byte[] bArr = this.f13971c;
                i12 = (bArr[i17] << 8) | (bArr[i17 + 1] & 255);
                i13 = (bArr[i17 + 3] & 255) | ((bArr[i17 + 2] & 255) << 8);
            } else {
                byte[] bArr2 = this.f13971c;
                int i18 = (bArr2[i17] & 255) | ((bArr2[i17 + 1] & 255) << 8);
                i12 = (bArr2[i17 + 3] << 8) | (bArr2[i17 + 2] & 255);
                i13 = i18;
            }
            this.f13972d = i17 + 4;
            if (i12 != 0) {
                int i19 = 65535 & i12;
                int i20 = i13 | ((i19 - 1) << 16);
                if (i19 > 16) {
                    h(i20, i11 - i4, String.format(" (above 0x%08x)", Integer.valueOf((int) f13967l)));
                }
                int i21 = i11 + 1;
                cArr[i11] = (char) ((i20 >> 10) + com.fasterxml.jackson.core.base.a.f13767j);
                int i22 = 56320 | (i20 & j1.M);
                if (i21 >= i14) {
                    this.f13975g = (char) i20;
                    i11 = i21;
                    break;
                }
                i13 = i22;
                i11 = i21;
            }
            cArr[i11] = (char) i13;
            i11++;
        }
        int i23 = i11 - i4;
        this.f13976h += i23;
        return i23;
    }
}
