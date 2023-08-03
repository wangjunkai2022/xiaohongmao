package org.minidns.record;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Arrays;
import org.minidns.constants.DnssecConstants;

/* compiled from: DelegatingDnssecRR.java */
/* loaded from: classes5.dex */
public abstract class i extends h {

    /* renamed from: k  reason: collision with root package name */
    static final /* synthetic */ boolean f92940k = false;

    /* renamed from: c  reason: collision with root package name */
    public final int f92941c;

    /* renamed from: d  reason: collision with root package name */
    public final DnssecConstants.SignatureAlgorithm f92942d;

    /* renamed from: e  reason: collision with root package name */
    public final byte f92943e;

    /* renamed from: f  reason: collision with root package name */
    public final DnssecConstants.DigestAlgorithm f92944f;

    /* renamed from: g  reason: collision with root package name */
    public final byte f92945g;

    /* renamed from: h  reason: collision with root package name */
    protected final byte[] f92946h;

    /* renamed from: i  reason: collision with root package name */
    private BigInteger f92947i;

    /* renamed from: j  reason: collision with root package name */
    private String f92948j;

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: DelegatingDnssecRR.java */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        protected final int f92949a;

        /* renamed from: b  reason: collision with root package name */
        protected final byte f92950b;

        /* renamed from: c  reason: collision with root package name */
        protected final byte f92951c;

        /* renamed from: d  reason: collision with root package name */
        protected final byte[] f92952d;

        private b(int i4, byte b10, byte b11, byte[] bArr) {
            this.f92949a = i4;
            this.f92950b = b10;
            this.f92951c = b11;
            this.f92952d = bArr;
        }
    }

    protected i(int i4, DnssecConstants.SignatureAlgorithm signatureAlgorithm, byte b10, DnssecConstants.DigestAlgorithm digestAlgorithm, byte b11, byte[] bArr) {
        this.f92941c = i4;
        this.f92943e = b10;
        this.f92942d = signatureAlgorithm == null ? DnssecConstants.SignatureAlgorithm.forByte(b10) : signatureAlgorithm;
        this.f92945g = b11;
        this.f92944f = digestAlgorithm == null ? DnssecConstants.DigestAlgorithm.forByte(b11) : digestAlgorithm;
        this.f92946h = bArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static b k(DataInputStream dataInputStream, int i4) throws IOException {
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        byte readByte = dataInputStream.readByte();
        byte readByte2 = dataInputStream.readByte();
        int i10 = i4 - 4;
        byte[] bArr = new byte[i10];
        if (dataInputStream.read(bArr) == i10) {
            return new b(readUnsignedShort, readByte, readByte2, bArr);
        }
        throw new IOException();
    }

    @Override // org.minidns.record.h
    public void c(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f92941c);
        dataOutputStream.writeByte(this.f92943e);
        dataOutputStream.writeByte(this.f92945g);
        dataOutputStream.write(this.f92946h);
    }

    public boolean g(byte[] bArr) {
        return Arrays.equals(this.f92946h, bArr);
    }

    public BigInteger h() {
        if (this.f92947i == null) {
            this.f92947i = new BigInteger(1, this.f92946h);
        }
        return this.f92947i;
    }

    public String i() {
        if (this.f92948j == null) {
            this.f92948j = h().toString(16).toUpperCase();
        }
        return this.f92948j;
    }

    public String toString() {
        return this.f92941c + ' ' + this.f92942d + ' ' + this.f92944f + ' ' + new BigInteger(1, this.f92946h).toString(16).toUpperCase();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public i(int i4, byte b10, byte b11, byte[] bArr) {
        this(i4, null, b10, null, b11, bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public i(int i4, DnssecConstants.SignatureAlgorithm signatureAlgorithm, DnssecConstants.DigestAlgorithm digestAlgorithm, byte[] bArr) {
        this(i4, signatureAlgorithm, signatureAlgorithm.number, digestAlgorithm, digestAlgorithm.value, bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public i(int i4, DnssecConstants.SignatureAlgorithm signatureAlgorithm, byte b10, byte[] bArr) {
        this(i4, signatureAlgorithm, signatureAlgorithm.number, null, b10, bArr);
    }
}
