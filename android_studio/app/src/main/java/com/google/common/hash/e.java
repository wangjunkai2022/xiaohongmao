package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Arrays;

/* compiled from: AbstractNonStreamingHashFunction.java */
@Immutable
/* loaded from: classes2.dex */
abstract class e extends c {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractNonStreamingHashFunction.java */
    /* loaded from: classes2.dex */
    public final class a extends d {

        /* renamed from: a  reason: collision with root package name */
        final b f34278a;

        a(int i4) {
            this.f34278a = new b(i4);
        }

        @Override // com.google.common.hash.n
        public l i() {
            return e.this.m(this.f34278a.a(), 0, this.f34278a.b());
        }

        @Override // com.google.common.hash.n, com.google.common.hash.a0
        public n c(byte b10) {
            this.f34278a.write(b10);
            return this;
        }

        @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
        public n e(byte[] bArr, int i4, int i10) {
            this.f34278a.write(bArr, i4, i10);
            return this;
        }

        @Override // com.google.common.hash.d, com.google.common.hash.n, com.google.common.hash.a0
        public n f(ByteBuffer byteBuffer) {
            this.f34278a.d(byteBuffer);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractNonStreamingHashFunction.java */
    /* loaded from: classes2.dex */
    public static final class b extends ByteArrayOutputStream {
        b(int i4) {
            super(i4);
        }

        byte[] a() {
            return ((ByteArrayOutputStream) this).buf;
        }

        int b() {
            return ((ByteArrayOutputStream) this).count;
        }

        void d(ByteBuffer byteBuffer) {
            int remaining = byteBuffer.remaining();
            int i4 = ((ByteArrayOutputStream) this).count;
            int i10 = i4 + remaining;
            byte[] bArr = ((ByteArrayOutputStream) this).buf;
            if (i10 > bArr.length) {
                ((ByteArrayOutputStream) this).buf = Arrays.copyOf(bArr, i4 + remaining);
            }
            byteBuffer.get(((ByteArrayOutputStream) this).buf, ((ByteArrayOutputStream) this).count, remaining);
            ((ByteArrayOutputStream) this).count += remaining;
        }
    }

    @Override // com.google.common.hash.c, com.google.common.hash.m
    public l a(CharSequence charSequence, Charset charset) {
        return e(charSequence.toString().getBytes(charset));
    }

    @Override // com.google.common.hash.c, com.google.common.hash.m
    public l b(CharSequence charSequence) {
        int length = charSequence.length();
        ByteBuffer order = ByteBuffer.allocate(length * 2).order(ByteOrder.LITTLE_ENDIAN);
        for (int i4 = 0; i4 < length; i4++) {
            order.putChar(charSequence.charAt(i4));
        }
        return e(order.array());
    }

    @Override // com.google.common.hash.c, com.google.common.hash.m
    public n d(int i4) {
        com.google.common.base.a0.d(i4 >= 0);
        return new a(i4);
    }

    @Override // com.google.common.hash.m
    public n h() {
        return d(32);
    }

    @Override // com.google.common.hash.c, com.google.common.hash.m
    public l i(int i4) {
        return e(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i4).array());
    }

    @Override // com.google.common.hash.c, com.google.common.hash.m
    public l k(ByteBuffer byteBuffer) {
        return d(byteBuffer.remaining()).f(byteBuffer).i();
    }

    @Override // com.google.common.hash.c, com.google.common.hash.m
    public l l(long j4) {
        return e(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j4).array());
    }

    @Override // com.google.common.hash.c, com.google.common.hash.m
    public abstract l m(byte[] bArr, int i4, int i10);
}
