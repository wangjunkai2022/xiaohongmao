package org.minidns.record;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;

/* compiled from: MX.java */
/* loaded from: classes5.dex */
public class k extends h {

    /* renamed from: c  reason: collision with root package name */
    public final int f92955c;

    /* renamed from: d  reason: collision with root package name */
    public final DnsName f92956d;
    @Deprecated

    /* renamed from: e  reason: collision with root package name */
    public final DnsName f92957e;

    public k(int i4, String str) {
        this(i4, DnsName.from(str));
    }

    public static k g(DataInputStream dataInputStream, byte[] bArr) throws IOException {
        return new k(dataInputStream.readUnsignedShort(), DnsName.parse(dataInputStream, bArr));
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.MX;
    }

    @Override // org.minidns.record.h
    public void c(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f92955c);
        this.f92956d.writeToStream(dataOutputStream);
    }

    public String toString() {
        return this.f92955c + " " + ((Object) this.f92956d) + '.';
    }

    public k(int i4, DnsName dnsName) {
        this.f92955c = i4;
        this.f92956d = dnsName;
        this.f92957e = dnsName;
    }
}
