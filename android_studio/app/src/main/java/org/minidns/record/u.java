package org.minidns.record;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;

/* compiled from: SRV.java */
/* loaded from: classes5.dex */
public class u extends h implements Comparable<u> {

    /* renamed from: c  reason: collision with root package name */
    public final int f92992c;

    /* renamed from: d  reason: collision with root package name */
    public final int f92993d;

    /* renamed from: e  reason: collision with root package name */
    public final int f92994e;

    /* renamed from: f  reason: collision with root package name */
    public final DnsName f92995f;
    @Deprecated

    /* renamed from: g  reason: collision with root package name */
    public final DnsName f92996g;

    public u(int i4, int i10, int i11, String str) {
        this(i4, i10, i11, DnsName.from(str));
    }

    public static u h(DataInputStream dataInputStream, byte[] bArr) throws IOException {
        return new u(dataInputStream.readUnsignedShort(), dataInputStream.readUnsignedShort(), dataInputStream.readUnsignedShort(), DnsName.parse(dataInputStream, bArr));
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.SRV;
    }

    @Override // org.minidns.record.h
    public void c(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f92992c);
        dataOutputStream.writeShort(this.f92993d);
        dataOutputStream.writeShort(this.f92994e);
        this.f92995f.writeToStream(dataOutputStream);
    }

    @Override // java.lang.Comparable
    /* renamed from: g */
    public int compareTo(u uVar) {
        int i4 = uVar.f92992c - this.f92992c;
        return i4 == 0 ? this.f92993d - uVar.f92993d : i4;
    }

    public String toString() {
        return this.f92992c + " " + this.f92993d + " " + this.f92994e + " " + ((Object) this.f92995f) + ".";
    }

    public u(int i4, int i10, int i11, DnsName dnsName) {
        this.f92992c = i4;
        this.f92993d = i10;
        this.f92994e = i11;
        this.f92995f = dnsName;
        this.f92996g = dnsName;
    }
}
