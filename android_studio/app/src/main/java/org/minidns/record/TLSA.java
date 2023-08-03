package org.minidns.record;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.minidns.record.Record;

/* loaded from: classes5.dex */
public class TLSA extends h {

    /* renamed from: j  reason: collision with root package name */
    private static final Map<Byte, CertUsage> f92911j = new HashMap();

    /* renamed from: k  reason: collision with root package name */
    private static final Map<Byte, Selector> f92912k = new HashMap();

    /* renamed from: l  reason: collision with root package name */
    private static final Map<Byte, MatchingType> f92913l = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final byte f92914c;

    /* renamed from: d  reason: collision with root package name */
    public final CertUsage f92915d;

    /* renamed from: e  reason: collision with root package name */
    public final byte f92916e;

    /* renamed from: f  reason: collision with root package name */
    public final Selector f92917f;

    /* renamed from: g  reason: collision with root package name */
    public final byte f92918g;

    /* renamed from: h  reason: collision with root package name */
    public final MatchingType f92919h;

    /* renamed from: i  reason: collision with root package name */
    private final byte[] f92920i;

    /* loaded from: classes5.dex */
    public enum CertUsage {
        caConstraint((byte) 0),
        serviceCertificateConstraint((byte) 1),
        trustAnchorAssertion((byte) 2),
        domainIssuedCertificate((byte) 3);
        
        public final byte byteValue;

        CertUsage(byte b10) {
            this.byteValue = b10;
            TLSA.f92911j.put(Byte.valueOf(b10), this);
        }
    }

    /* loaded from: classes5.dex */
    public enum MatchingType {
        noHash((byte) 0),
        sha256((byte) 1),
        sha512((byte) 2);
        
        public final byte byteValue;

        MatchingType(byte b10) {
            this.byteValue = b10;
            TLSA.f92913l.put(Byte.valueOf(b10), this);
        }
    }

    /* loaded from: classes5.dex */
    public enum Selector {
        fullCertificate((byte) 0),
        subjectPublicKeyInfo((byte) 1);
        
        public final byte byteValue;

        Selector(byte b10) {
            this.byteValue = b10;
            TLSA.f92912k.put(Byte.valueOf(b10), this);
        }
    }

    static {
        CertUsage.values();
        Selector.values();
        MatchingType.values();
    }

    TLSA(byte b10, byte b11, byte b12, byte[] bArr) {
        this.f92914c = b10;
        this.f92915d = f92911j.get(Byte.valueOf(b10));
        this.f92916e = b11;
        this.f92917f = f92912k.get(Byte.valueOf(b11));
        this.f92918g = b12;
        this.f92919h = f92913l.get(Byte.valueOf(b12));
        this.f92920i = bArr;
    }

    public static TLSA m(DataInputStream dataInputStream, int i4) throws IOException {
        byte readByte = dataInputStream.readByte();
        byte readByte2 = dataInputStream.readByte();
        byte readByte3 = dataInputStream.readByte();
        int i10 = i4 - 3;
        byte[] bArr = new byte[i10];
        if (dataInputStream.read(bArr) == i10) {
            return new TLSA(readByte, readByte2, readByte3, bArr);
        }
        throw new IOException();
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.TLSA;
    }

    @Override // org.minidns.record.h
    public void c(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.f92914c);
        dataOutputStream.writeByte(this.f92916e);
        dataOutputStream.writeByte(this.f92918g);
        dataOutputStream.write(this.f92920i);
    }

    public boolean k(byte[] bArr) {
        return Arrays.equals(this.f92920i, bArr);
    }

    public byte[] l() {
        return (byte[]) this.f92920i.clone();
    }

    public String toString() {
        return ((int) this.f92914c) + ' ' + ((int) this.f92916e) + ' ' + ((int) this.f92918g) + ' ' + new BigInteger(1, this.f92920i).toString(16);
    }
}
