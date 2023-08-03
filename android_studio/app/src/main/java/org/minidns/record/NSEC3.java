package org.minidns.record;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import org.minidns.record.Record;

/* loaded from: classes5.dex */
public class NSEC3 extends h {

    /* renamed from: k  reason: collision with root package name */
    public static final byte f92881k = 1;

    /* renamed from: l  reason: collision with root package name */
    private static final Map<Byte, HashAlgorithm> f92882l = new HashMap();

    /* renamed from: m  reason: collision with root package name */
    static final /* synthetic */ boolean f92883m = false;

    /* renamed from: c  reason: collision with root package name */
    public final HashAlgorithm f92884c;

    /* renamed from: d  reason: collision with root package name */
    public final byte f92885d;

    /* renamed from: e  reason: collision with root package name */
    public final byte f92886e;

    /* renamed from: f  reason: collision with root package name */
    public final int f92887f;

    /* renamed from: g  reason: collision with root package name */
    public final byte[] f92888g;

    /* renamed from: h  reason: collision with root package name */
    public final byte[] f92889h;

    /* renamed from: i  reason: collision with root package name */
    private final byte[] f92890i;

    /* renamed from: j  reason: collision with root package name */
    public final Record.TYPE[] f92891j;

    /* loaded from: classes5.dex */
    public enum HashAlgorithm {
        RESERVED(0, "Reserved"),
        SHA1(1, "SHA-1");
        
        public final String description;
        public final byte value;

        HashAlgorithm(int i4, String str) {
            if (i4 >= 0 && i4 <= 255) {
                byte b10 = (byte) i4;
                this.value = b10;
                this.description = str;
                NSEC3.f92882l.put(Byte.valueOf(b10), this);
                return;
            }
            throw new IllegalArgumentException();
        }

        public static HashAlgorithm forByte(byte b10) {
            return (HashAlgorithm) NSEC3.f92882l.get(Byte.valueOf(b10));
        }
    }

    private NSEC3(HashAlgorithm hashAlgorithm, byte b10, byte b11, int i4, byte[] bArr, byte[] bArr2, Record.TYPE[] typeArr) {
        this.f92885d = b10;
        this.f92884c = hashAlgorithm == null ? HashAlgorithm.forByte(b10) : hashAlgorithm;
        this.f92886e = b11;
        this.f92887f = i4;
        this.f92888g = bArr;
        this.f92889h = bArr2;
        this.f92891j = typeArr;
        this.f92890i = n.g(typeArr);
    }

    public static NSEC3 h(DataInputStream dataInputStream, int i4) throws IOException {
        byte readByte = dataInputStream.readByte();
        byte readByte2 = dataInputStream.readByte();
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        int readUnsignedByte = dataInputStream.readUnsignedByte();
        byte[] bArr = new byte[readUnsignedByte];
        if (dataInputStream.read(bArr) == readUnsignedByte) {
            int readUnsignedByte2 = dataInputStream.readUnsignedByte();
            byte[] bArr2 = new byte[readUnsignedByte2];
            if (dataInputStream.read(bArr2) == readUnsignedByte2) {
                int i10 = i4 - ((readUnsignedByte + 6) + readUnsignedByte2);
                byte[] bArr3 = new byte[i10];
                if (dataInputStream.read(bArr3) == i10) {
                    return new NSEC3(readByte, readByte2, readUnsignedShort, bArr, bArr2, n.i(bArr3));
                }
                throw new IOException();
            }
            throw new IOException();
        }
        throw new IOException();
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.NSEC3;
    }

    @Override // org.minidns.record.h
    public void c(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.f92885d);
        dataOutputStream.writeByte(this.f92886e);
        dataOutputStream.writeShort(this.f92887f);
        dataOutputStream.writeByte(this.f92888g.length);
        dataOutputStream.write(this.f92888g);
        dataOutputStream.writeByte(this.f92889h.length);
        dataOutputStream.write(this.f92889h);
        dataOutputStream.write(this.f92890i);
    }

    public String toString() {
        Record.TYPE[] typeArr;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f92884c);
        sb.append(' ');
        sb.append((int) this.f92886e);
        sb.append(' ');
        sb.append(this.f92887f);
        sb.append(' ');
        sb.append(this.f92888g.length == 0 ? "-" : new BigInteger(1, this.f92888g).toString(16).toUpperCase());
        sb.append(' ');
        sb.append(org.minidns.util.a.a(this.f92889h));
        for (Record.TYPE type : this.f92891j) {
            sb.append(' ');
            sb.append(type);
        }
        return sb.toString();
    }

    public NSEC3(byte b10, byte b11, int i4, byte[] bArr, byte[] bArr2, Record.TYPE[] typeArr) {
        this(null, b10, b11, i4, bArr, bArr2, typeArr);
    }
}
