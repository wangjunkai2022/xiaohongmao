package org.minidns.record;

import java.io.DataInputStream;
import java.io.IOException;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;

/* compiled from: CNAME.java */
/* loaded from: classes5.dex */
public class c extends s {
    public c(String str) {
        this(DnsName.from(str));
    }

    public static c h(DataInputStream dataInputStream, byte[] bArr) throws IOException {
        return new c(DnsName.parse(dataInputStream, bArr));
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.CNAME;
    }

    public c(DnsName dnsName) {
        super(dnsName);
    }
}
