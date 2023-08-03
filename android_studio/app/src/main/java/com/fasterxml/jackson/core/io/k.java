package com.fasterxml.jackson.core.io;

import com.google.android.exoplayer2.extractor.ts.a0;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

/* compiled from: UTF8Writer.java */
/* loaded from: classes.dex */
public final class k extends Writer {

    /* renamed from: g  reason: collision with root package name */
    static final int f13980g = 55296;

    /* renamed from: h  reason: collision with root package name */
    static final int f13981h = 56319;

    /* renamed from: i  reason: collision with root package name */
    static final int f13982i = 56320;

    /* renamed from: j  reason: collision with root package name */
    static final int f13983j = 57343;

    /* renamed from: a  reason: collision with root package name */
    private final d f13984a;

    /* renamed from: b  reason: collision with root package name */
    private OutputStream f13985b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f13986c;

    /* renamed from: d  reason: collision with root package name */
    private final int f13987d;

    /* renamed from: e  reason: collision with root package name */
    private int f13988e;

    /* renamed from: f  reason: collision with root package name */
    private int f13989f;

    public k(d dVar, OutputStream outputStream) {
        this.f13984a = dVar;
        this.f13985b = outputStream;
        byte[] l10 = dVar.l();
        this.f13986c = l10;
        this.f13987d = l10.length - 4;
        this.f13988e = 0;
    }

    protected static void b(int i4) throws IOException {
        throw new IOException(d(i4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String d(int i4) {
        if (i4 > 1114111) {
            return "Illegal character point (0x" + Integer.toHexString(i4) + ") to output; max is 0x10FFFF as per RFC 4627";
        } else if (i4 < 55296) {
            return "Illegal character point (0x" + Integer.toHexString(i4) + ") to output";
        } else if (i4 <= 56319) {
            return "Unmatched first part of surrogate pair (0x" + Integer.toHexString(i4) + ")";
        } else {
            return "Unmatched second part of surrogate pair (0x" + Integer.toHexString(i4) + ")";
        }
    }

    protected int a(int i4) throws IOException {
        int i10 = this.f13989f;
        this.f13989f = 0;
        if (i4 < 56320 || i4 > 57343) {
            throw new IOException("Broken surrogate pair: first char 0x" + Integer.toHexString(i10) + ", second 0x" + Integer.toHexString(i4) + "; illegal combination");
        }
        return ((i10 - 55296) << 10) + 65536 + (i4 - 56320);
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        OutputStream outputStream = this.f13985b;
        if (outputStream != null) {
            int i4 = this.f13988e;
            if (i4 > 0) {
                outputStream.write(this.f13986c, 0, i4);
                this.f13988e = 0;
            }
            OutputStream outputStream2 = this.f13985b;
            this.f13985b = null;
            byte[] bArr = this.f13986c;
            if (bArr != null) {
                this.f13986c = null;
                this.f13984a.x(bArr);
            }
            outputStream2.close();
            int i10 = this.f13989f;
            this.f13989f = 0;
            if (i10 > 0) {
                b(i10);
            }
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        OutputStream outputStream = this.f13985b;
        if (outputStream != null) {
            int i4 = this.f13988e;
            if (i4 > 0) {
                outputStream.write(this.f13986c, 0, i4);
                this.f13988e = 0;
            }
            this.f13985b.flush();
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        write(cArr, 0, cArr.length);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c10) throws IOException {
        write(c10);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0025, code lost:
        continue;
     */
    @Override // java.io.Writer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void write(char[] r8, int r9, int r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 228
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.k.write(char[], int, int):void");
    }

    @Override // java.io.Writer
    public void write(int i4) throws IOException {
        int i10;
        if (this.f13989f > 0) {
            i4 = a(i4);
        } else if (i4 >= 55296 && i4 <= 57343) {
            if (i4 > 56319) {
                b(i4);
            }
            this.f13989f = i4;
            return;
        }
        int i11 = this.f13988e;
        if (i11 >= this.f13987d) {
            this.f13985b.write(this.f13986c, 0, i11);
            this.f13988e = 0;
        }
        if (i4 < 128) {
            byte[] bArr = this.f13986c;
            int i12 = this.f13988e;
            this.f13988e = i12 + 1;
            bArr[i12] = (byte) i4;
            return;
        }
        int i13 = this.f13988e;
        if (i4 < 2048) {
            byte[] bArr2 = this.f13986c;
            int i14 = i13 + 1;
            bArr2[i13] = (byte) ((i4 >> 6) | 192);
            i10 = i14 + 1;
            bArr2[i14] = (byte) ((i4 & 63) | 128);
        } else if (i4 <= 65535) {
            byte[] bArr3 = this.f13986c;
            int i15 = i13 + 1;
            bArr3[i13] = (byte) ((i4 >> 12) | 224);
            int i16 = i15 + 1;
            bArr3[i15] = (byte) (((i4 >> 6) & 63) | 128);
            bArr3[i16] = (byte) ((i4 & 63) | 128);
            i10 = i16 + 1;
        } else {
            if (i4 > 1114111) {
                b(i4);
            }
            byte[] bArr4 = this.f13986c;
            int i17 = i13 + 1;
            bArr4[i13] = (byte) ((i4 >> 18) | a0.A);
            int i18 = i17 + 1;
            bArr4[i17] = (byte) (((i4 >> 12) & 63) | 128);
            int i19 = i18 + 1;
            bArr4[i18] = (byte) (((i4 >> 6) & 63) | 128);
            i10 = i19 + 1;
            bArr4[i19] = (byte) ((i4 & 63) | 128);
        }
        this.f13988e = i10;
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        write(str, 0, str.length());
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0029, code lost:
        continue;
     */
    @Override // java.io.Writer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void write(java.lang.String r8, int r9, int r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 238
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.k.write(java.lang.String, int, int):void");
    }
}
