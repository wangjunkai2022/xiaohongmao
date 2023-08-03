package org.minidns.record;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import org.minidns.constants.DnssecConstants;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;

/* compiled from: RRSIG.java */
/* loaded from: classes5.dex */
public class r extends h {

    /* renamed from: m  reason: collision with root package name */
    static final /* synthetic */ boolean f92972m = false;

    /* renamed from: c  reason: collision with root package name */
    public final Record.TYPE f92973c;

    /* renamed from: d  reason: collision with root package name */
    public final DnssecConstants.SignatureAlgorithm f92974d;

    /* renamed from: e  reason: collision with root package name */
    public final byte f92975e;

    /* renamed from: f  reason: collision with root package name */
    public final byte f92976f;

    /* renamed from: g  reason: collision with root package name */
    public final long f92977g;

    /* renamed from: h  reason: collision with root package name */
    public final Date f92978h;

    /* renamed from: i  reason: collision with root package name */
    public final Date f92979i;

    /* renamed from: j  reason: collision with root package name */
    public final int f92980j;

    /* renamed from: k  reason: collision with root package name */
    public final DnsName f92981k;

    /* renamed from: l  reason: collision with root package name */
    public final byte[] f92982l;

    private r(Record.TYPE type, DnssecConstants.SignatureAlgorithm signatureAlgorithm, byte b10, byte b11, long j4, Date date, Date date2, int i4, DnsName dnsName, byte[] bArr) {
        this.f92973c = type;
        this.f92975e = b10;
        this.f92974d = signatureAlgorithm == null ? DnssecConstants.SignatureAlgorithm.forByte(b10) : signatureAlgorithm;
        this.f92976f = b11;
        this.f92977g = j4;
        this.f92978h = date;
        this.f92979i = date2;
        this.f92980j = i4;
        this.f92981k = dnsName;
        this.f92982l = bArr;
    }

    public static r g(DataInputStream dataInputStream, byte[] bArr, int i4) throws IOException {
        Record.TYPE type = Record.TYPE.getType(dataInputStream.readUnsignedShort());
        byte readByte = dataInputStream.readByte();
        byte readByte2 = dataInputStream.readByte();
        long readInt = dataInputStream.readInt() & 4294967295L;
        Date date = new Date((dataInputStream.readInt() & 4294967295L) * 1000);
        Date date2 = new Date((4294967295L & dataInputStream.readInt()) * 1000);
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        DnsName parse = DnsName.parse(dataInputStream, bArr);
        int size = (i4 - parse.size()) - 18;
        byte[] bArr2 = new byte[size];
        if (dataInputStream.read(bArr2) == size) {
            return new r(type, null, readByte, readByte2, readInt, date, date2, readUnsignedShort, parse, bArr2);
        }
        throw new IOException();
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.RRSIG;
    }

    @Override // org.minidns.record.h
    public void c(DataOutputStream dataOutputStream) throws IOException {
        h(dataOutputStream);
        dataOutputStream.write(this.f92982l);
    }

    public void h(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f92973c.getValue());
        dataOutputStream.writeByte(this.f92975e);
        dataOutputStream.writeByte(this.f92976f);
        dataOutputStream.writeInt((int) this.f92977g);
        dataOutputStream.writeInt((int) (this.f92978h.getTime() / 1000));
        dataOutputStream.writeInt((int) (this.f92979i.getTime() / 1000));
        dataOutputStream.writeShort(this.f92980j);
        this.f92981k.writeToStream(dataOutputStream);
    }

    public String toString() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return this.f92973c + ' ' + this.f92974d + ' ' + ((int) this.f92976f) + ' ' + this.f92977g + ' ' + simpleDateFormat.format(this.f92978h) + ' ' + simpleDateFormat.format(this.f92979i) + ' ' + this.f92980j + ' ' + ((CharSequence) this.f92981k) + ". " + org.minidns.util.b.a(this.f92982l);
    }

    public r(Record.TYPE type, int i4, byte b10, long j4, Date date, Date date2, int i10, DnsName dnsName, byte[] bArr) {
        this(type, null, (byte) i4, b10, j4, date, date2, i10, dnsName, bArr);
    }

    public r(Record.TYPE type, int i4, byte b10, long j4, Date date, Date date2, int i10, String str, byte[] bArr) {
        this(type, null, (byte) i4, b10, j4, date, date2, i10, DnsName.from(str), bArr);
    }

    public r(Record.TYPE type, DnssecConstants.SignatureAlgorithm signatureAlgorithm, byte b10, long j4, Date date, Date date2, int i4, DnsName dnsName, byte[] bArr) {
        this(type, signatureAlgorithm.number, b10, j4, date, date2, i4, dnsName, bArr);
    }

    public r(Record.TYPE type, DnssecConstants.SignatureAlgorithm signatureAlgorithm, byte b10, long j4, Date date, Date date2, int i4, String str, byte[] bArr) {
        this(type, signatureAlgorithm.number, b10, j4, date, date2, i4, DnsName.from(str), bArr);
    }
}
