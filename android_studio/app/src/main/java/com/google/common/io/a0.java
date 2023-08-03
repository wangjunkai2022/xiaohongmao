package com.google.common.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;

/* compiled from: ReaderInputStream.java */
@h3.c
/* loaded from: classes2.dex */
final class a0 extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final Reader f34434a;

    /* renamed from: b  reason: collision with root package name */
    private final CharsetEncoder f34435b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f34436c;

    /* renamed from: d  reason: collision with root package name */
    private CharBuffer f34437d;

    /* renamed from: e  reason: collision with root package name */
    private ByteBuffer f34438e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f34439f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f34440g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f34441h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(Reader reader, Charset charset, int i4) {
        this(reader, charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE), i4);
    }

    private static int a(Buffer buffer) {
        return buffer.capacity() - buffer.limit();
    }

    private int b(byte[] bArr, int i4, int i10) {
        int min = Math.min(i10, this.f34438e.remaining());
        this.f34438e.get(bArr, i4, min);
        return min;
    }

    private static CharBuffer d(CharBuffer charBuffer) {
        CharBuffer wrap = CharBuffer.wrap(Arrays.copyOf(charBuffer.array(), charBuffer.capacity() * 2));
        wrap.position(charBuffer.position());
        wrap.limit(charBuffer.limit());
        return wrap;
    }

    private void h() throws IOException {
        if (a(this.f34437d) == 0) {
            if (this.f34437d.position() > 0) {
                this.f34437d.compact().flip();
            } else {
                this.f34437d = d(this.f34437d);
            }
        }
        int limit = this.f34437d.limit();
        int read = this.f34434a.read(this.f34437d.array(), limit, a(this.f34437d));
        if (read == -1) {
            this.f34439f = true;
        } else {
            this.f34437d.limit(limit + read);
        }
    }

    private void i(boolean z9) {
        this.f34438e.flip();
        if (z9 && this.f34438e.remaining() == 0) {
            this.f34438e = ByteBuffer.allocate(this.f34438e.capacity() * 2);
        } else {
            this.f34440g = true;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f34434a.close();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f34436c) == 1) {
            return com.google.common.primitives.l.p(this.f34436c[0]);
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0029, code lost:
        if (r2 <= 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
        return r2;
     */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int read(byte[] r8, int r9, int r10) throws java.io.IOException {
        /*
            r7 = this;
            int r0 = r9 + r10
            int r1 = r8.length
            com.google.common.base.a0.f0(r9, r0, r1)
            r0 = 0
            if (r10 != 0) goto La
            return r0
        La:
            boolean r1 = r7.f34439f
            r2 = 0
        Ld:
            boolean r3 = r7.f34440g
            if (r3 == 0) goto L2e
            int r3 = r9 + r2
            int r4 = r10 - r2
            int r3 = r7.b(r8, r3, r4)
            int r2 = r2 + r3
            if (r2 == r10) goto L29
            boolean r3 = r7.f34441h
            if (r3 == 0) goto L21
            goto L29
        L21:
            r7.f34440g = r0
            java.nio.ByteBuffer r3 = r7.f34438e
            r3.clear()
            goto L2e
        L29:
            if (r2 <= 0) goto L2c
            goto L2d
        L2c:
            r2 = -1
        L2d:
            return r2
        L2e:
            boolean r3 = r7.f34441h
            if (r3 == 0) goto L35
            java.nio.charset.CoderResult r3 = java.nio.charset.CoderResult.UNDERFLOW
            goto L4c
        L35:
            if (r1 == 0) goto L40
            java.nio.charset.CharsetEncoder r3 = r7.f34435b
            java.nio.ByteBuffer r4 = r7.f34438e
            java.nio.charset.CoderResult r3 = r3.flush(r4)
            goto L4c
        L40:
            java.nio.charset.CharsetEncoder r3 = r7.f34435b
            java.nio.CharBuffer r4 = r7.f34437d
            java.nio.ByteBuffer r5 = r7.f34438e
            boolean r6 = r7.f34439f
            java.nio.charset.CoderResult r3 = r3.encode(r4, r5, r6)
        L4c:
            boolean r4 = r3.isOverflow()
            r5 = 1
            if (r4 == 0) goto L57
            r7.i(r5)
            goto Ld
        L57:
            boolean r4 = r3.isUnderflow()
            if (r4 == 0) goto L6f
            if (r1 == 0) goto L65
            r7.f34441h = r5
            r7.i(r0)
            goto Ld
        L65:
            boolean r3 = r7.f34439f
            if (r3 == 0) goto L6b
            r1 = 1
            goto L2e
        L6b:
            r7.h()
            goto L2e
        L6f:
            boolean r4 = r3.isError()
            if (r4 == 0) goto L2e
            r3.throwException()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.io.a0.read(byte[], int, int):int");
    }

    a0(Reader reader, CharsetEncoder charsetEncoder, int i4) {
        this.f34436c = new byte[1];
        this.f34434a = (Reader) com.google.common.base.a0.E(reader);
        this.f34435b = (CharsetEncoder) com.google.common.base.a0.E(charsetEncoder);
        com.google.common.base.a0.k(i4 > 0, "bufferSize must be positive: %s", i4);
        charsetEncoder.reset();
        CharBuffer allocate = CharBuffer.allocate(i4);
        this.f34437d = allocate;
        allocate.flip();
        this.f34438e = ByteBuffer.allocate(i4);
    }
}
