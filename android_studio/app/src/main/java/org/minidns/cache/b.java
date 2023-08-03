package org.minidns.cache;

import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;
import org.minidns.record.h;

/* compiled from: FullLruCache.java */
/* loaded from: classes5.dex */
public class b extends a {
    public b() {
        this(512);
    }

    @Override // org.minidns.cache.a
    protected boolean l(Record<? extends h> record, org.minidns.dnsmessage.a aVar, DnsName dnsName) {
        return true;
    }

    public b(int i4) {
        super(i4);
    }

    public b(int i4, long j4) {
        super(i4, j4);
    }
}
