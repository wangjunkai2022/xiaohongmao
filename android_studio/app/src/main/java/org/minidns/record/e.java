package org.minidns.record;

import java.io.DataInputStream;
import java.io.IOException;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;

/* compiled from: DNAME.java */
/* loaded from: classes5.dex */
public class e extends s {
    public e(String str) {
        this(DnsName.from(str));
    }

    public static e h(DataInputStream dataInputStream, byte[] bArr) throws IOException {
        return new e(DnsName.parse(dataInputStream, bArr));
    }

    @Override // org.minidns.record.h
    public Record.TYPE a() {
        return Record.TYPE.DNAME;
    }

    public e(DnsName dnsName) {
        super(dnsName);
    }
}
