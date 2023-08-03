package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* compiled from: MessageDigestHashFunction.java */
@Immutable
/* loaded from: classes2.dex */
final class x extends com.google.common.hash.c implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final MessageDigest f34353a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34354b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f34355c;

    /* renamed from: d  reason: collision with root package name */
    private final String f34356d;

    /* compiled from: MessageDigestHashFunction.java */
    /* loaded from: classes2.dex */
    private static final class b extends com.google.common.hash.a {

        /* renamed from: b  reason: collision with root package name */
        private final MessageDigest f34357b;

        /* renamed from: c  reason: collision with root package name */
        private final int f34358c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f34359d;

        private void o() {
            com.google.common.base.a0.h0(!this.f34359d, "Cannot re-use a Hasher after calling hash() on it");
        }

        @Override // com.google.common.hash.n
        public l i() {
            o();
            this.f34359d = true;
            if (this.f34358c == this.f34357b.getDigestLength()) {
                return l.j(this.f34357b.digest());
            }
            return l.j(Arrays.copyOf(this.f34357b.digest(), this.f34358c));
        }

        @Override // com.google.common.hash.a
        protected void k(byte b10) {
            o();
            this.f34357b.update(b10);
        }

        @Override // com.google.common.hash.a
        protected void l(ByteBuffer byteBuffer) {
            o();
            this.f34357b.update(byteBuffer);
        }

        @Override // com.google.common.hash.a
        protected void n(byte[] bArr, int i4, int i10) {
            o();
            this.f34357b.update(bArr, i4, i10);
        }

        private b(MessageDigest messageDigest, int i4) {
            this.f34357b = messageDigest;
            this.f34358c = i4;
        }
    }

    /* compiled from: MessageDigestHashFunction.java */
    /* loaded from: classes2.dex */
    private static final class c implements Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f34360d = 0;

        /* renamed from: a  reason: collision with root package name */
        private final String f34361a;

        /* renamed from: b  reason: collision with root package name */
        private final int f34362b;

        /* renamed from: c  reason: collision with root package name */
        private final String f34363c;

        private Object a() {
            return new x(this.f34361a, this.f34362b, this.f34363c);
        }

        private c(String str, int i4, String str2) {
            this.f34361a = str;
            this.f34362b = i4;
            this.f34363c = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(String str, String str2) {
        MessageDigest n9 = n(str);
        this.f34353a = n9;
        this.f34354b = n9.getDigestLength();
        this.f34356d = (String) com.google.common.base.a0.E(str2);
        this.f34355c = o(n9);
    }

    private static MessageDigest n(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e4) {
            throw new AssertionError(e4);
        }
    }

    private static boolean o(MessageDigest messageDigest) {
        try {
            messageDigest.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    @Override // com.google.common.hash.m
    public int c() {
        return this.f34354b * 8;
    }

    @Override // com.google.common.hash.m
    public n h() {
        if (this.f34355c) {
            try {
                return new b((MessageDigest) this.f34353a.clone(), this.f34354b);
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new b(n(this.f34353a.getAlgorithm()), this.f34354b);
    }

    Object p() {
        return new c(this.f34353a.getAlgorithm(), this.f34354b, this.f34356d);
    }

    public String toString() {
        return this.f34356d;
    }

    x(String str, int i4, String str2) {
        this.f34356d = (String) com.google.common.base.a0.E(str2);
        MessageDigest n9 = n(str);
        this.f34353a = n9;
        int digestLength = n9.getDigestLength();
        com.google.common.base.a0.m(i4 >= 4 && i4 <= digestLength, "bytes (%s) must be >= 4 and < %s", i4, digestLength);
        this.f34354b = i4;
        this.f34355c = o(n9);
    }
}
