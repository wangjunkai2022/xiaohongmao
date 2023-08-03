package org.minidns.record;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;

/* compiled from: SOA.java */
/* loaded from: classes5.dex */
public class t extends h {

    /* renamed from: c  reason: collision with root package name */
    public final DnsName f92985c;

    /* renamed from: d  reason: collision with root package name */
    public final DnsName f92986d;

    /* renamed from: e  reason: collision with root package name */
    public final long f92987e;

    /* renamed from: f  reason: collision with root package name */
    public final int f92988f;

    /* renamed from: g  reason: collision with root package name */
    public final int f92989g;

    /* renamed from: h  reason: collision with root package name */
    public final int f92990h;

    /* renamed from: i  reason: collision with root package name */
    public final long f92991i;

    public t(String str, String str2, long j4, int i4, int i10, int i11, long j10) {
        this(DnsName.from(str), DnsName.from(str2), j4, i4, i10, i11, j10);
    }

    public static t g(DataInputStream dataInputStream, byte[] bArr) throws IOException {
        return new t(DnsName.parse(dataInputStream, bArr), DnsName.parse(dataInputStream, bArr), dataInputStream.readInt() & 4294967295L, dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readInt() & 4294967295L);
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.SOA;
    }

    @Override // org.minidns.record.h
    public void c(DataOutputStream dataOutputStream) throws IOException {
        this.f92985c.writeToStream(dataOutputStream);
        this.f92986d.writeToStream(dataOutputStream);
        dataOutputStream.writeInt((int) this.f92987e);
        dataOutputStream.writeInt(this.f92988f);
        dataOutputStream.writeInt(this.f92989g);
        dataOutputStream.writeInt(this.f92990h);
        dataOutputStream.writeInt((int) this.f92991i);
    }

    public String toString() {
        return ((CharSequence) this.f92985c) + ". " + ((CharSequence) this.f92986d) + ". " + this.f92987e + ' ' + this.f92988f + ' ' + this.f92989g + ' ' + this.f92990h + ' ' + this.f92991i;
    }

    public t(DnsName dnsName, DnsName dnsName2, long j4, int i4, int i10, int i11, long j10) {
        this.f92985c = dnsName;
        this.f92986d = dnsName2;
        this.f92987e = j4;
        this.f92988f = i4;
        this.f92989g = i10;
        this.f92990h = i11;
        this.f92991i = j10;
    }
}
