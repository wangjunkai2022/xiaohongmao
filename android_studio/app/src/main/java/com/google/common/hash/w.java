package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import java.nio.ByteBuffer;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;

/* compiled from: MacHashFunction.java */
@Immutable
/* loaded from: classes2.dex */
final class w extends c {

    /* renamed from: a  reason: collision with root package name */
    private final Mac f34346a;

    /* renamed from: b  reason: collision with root package name */
    private final Key f34347b;

    /* renamed from: c  reason: collision with root package name */
    private final String f34348c;

    /* renamed from: d  reason: collision with root package name */
    private final int f34349d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f34350e;

    /* compiled from: MacHashFunction.java */
    /* loaded from: classes2.dex */
    private static final class b extends com.google.common.hash.a {

        /* renamed from: b  reason: collision with root package name */
        private final Mac f34351b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f34352c;

        private void o() {
            com.google.common.base.a0.h0(!this.f34352c, "Cannot re-use a Hasher after calling hash() on it");
        }

        @Override // com.google.common.hash.n
        public l i() {
            o();
            this.f34352c = true;
            return l.j(this.f34351b.doFinal());
        }

        @Override // com.google.common.hash.a
        protected void k(byte b10) {
            o();
            this.f34351b.update(b10);
        }

        @Override // com.google.common.hash.a
        protected void l(ByteBuffer byteBuffer) {
            o();
            com.google.common.base.a0.E(byteBuffer);
            this.f34351b.update(byteBuffer);
        }

        @Override // com.google.common.hash.a
        protected void m(byte[] bArr) {
            o();
            this.f34351b.update(bArr);
        }

        @Override // com.google.common.hash.a
        protected void n(byte[] bArr, int i4, int i10) {
            o();
            this.f34351b.update(bArr, i4, i10);
        }

        private b(Mac mac) {
            this.f34351b = mac;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(String str, Key key, String str2) {
        Mac n9 = n(str, key);
        this.f34346a = n9;
        this.f34347b = (Key) com.google.common.base.a0.E(key);
        this.f34348c = (String) com.google.common.base.a0.E(str2);
        this.f34349d = n9.getMacLength() * 8;
        this.f34350e = o(n9);
    }

    private static Mac n(String str, Key key) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(key);
            return mac;
        } catch (InvalidKeyException e4) {
            throw new IllegalArgumentException(e4);
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException(e10);
        }
    }

    private static boolean o(Mac mac) {
        try {
            mac.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    @Override // com.google.common.hash.m
    public int c() {
        return this.f34349d;
    }

    @Override // com.google.common.hash.m
    public n h() {
        if (this.f34350e) {
            try {
                return new b((Mac) this.f34346a.clone());
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new b(n(this.f34346a.getAlgorithm(), this.f34347b));
    }

    public String toString() {
        return this.f34348c;
    }
}
