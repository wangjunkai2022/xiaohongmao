package org.minidns.record;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import org.minidns.record.NSEC3;
import org.minidns.record.Record;

/* compiled from: NSEC3PARAM.java */
/* loaded from: classes5.dex */
public class m extends h {

    /* renamed from: h  reason: collision with root package name */
    static final /* synthetic */ boolean f92958h = false;

    /* renamed from: c  reason: collision with root package name */
    public final NSEC3.HashAlgorithm f92959c;

    /* renamed from: d  reason: collision with root package name */
    public final byte f92960d;

    /* renamed from: e  reason: collision with root package name */
    public final byte f92961e;

    /* renamed from: f  reason: collision with root package name */
    public final int f92962f;

    /* renamed from: g  reason: collision with root package name */
    private final byte[] f92963g;

    private m(NSEC3.HashAlgorithm hashAlgorithm, byte b10, byte b11, int i4, byte[] bArr) {
        this.f92960d = b10;
        this.f92959c = hashAlgorithm == null ? NSEC3.HashAlgorithm.forByte(b10) : hashAlgorithm;
        this.f92961e = b11;
        this.f92962f = i4;
        this.f92963g = bArr;
    }

    public static m h(DataInputStream dataInputStream) throws IOException {
        byte readByte = dataInputStream.readByte();
        byte readByte2 = dataInputStream.readByte();
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        int readUnsignedByte = dataInputStream.readUnsignedByte();
        byte[] bArr = new byte[readUnsignedByte];
        if (dataInputStream.read(bArr) == readUnsignedByte || readUnsignedByte == 0) {
            return new m(readByte, readByte2, readUnsignedShort, bArr);
        }
        throw new IOException();
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.NSEC3PARAM;
    }

    @Override // org.minidns.record.h
    public void c(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.f92960d);
        dataOutputStream.writeByte(this.f92961e);
        dataOutputStream.writeShort(this.f92962f);
        dataOutputStream.writeByte(this.f92963g.length);
        dataOutputStream.write(this.f92963g);
    }

    public int g() {
        return this.f92963g.length;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f92959c);
        sb.append(' ');
        sb.append((int) this.f92961e);
        sb.append(' ');
        sb.append(this.f92962f);
        sb.append(' ');
        sb.append(this.f92963g.length == 0 ? "-" : new BigInteger(1, this.f92963g).toString(16).toUpperCase());
        return sb.toString();
    }

    m(byte b10, byte b11, int i4, byte[] bArr) {
        this(null, b10, b11, i4, bArr);
    }
}
