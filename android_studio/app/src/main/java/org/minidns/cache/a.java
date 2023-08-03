package org.minidns.cache;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;
import org.minidns.record.h;

/* compiled from: ExtendedLruCache.java */
/* loaded from: classes5.dex */
public class a extends c {

    /* renamed from: h  reason: collision with root package name */
    static final /* synthetic */ boolean f92614h = false;

    public a() {
        this(512);
    }

    private final void j(Map<DnsMessage, List<Record<? extends h>>> map, DnsMessage dnsMessage, List<Record<? extends h>> list, DnsName dnsName) {
        DnsMessage.b e4;
        for (Record<? extends h> record : list) {
            if (l(record, dnsMessage.o(), dnsName) && (e4 = record.e()) != null) {
                e4.x(dnsMessage);
                e4.B(dnsMessage.f92672n);
                DnsMessage w9 = e4.w();
                if (!w9.equals(dnsMessage)) {
                    List<Record<? extends h>> list2 = map.get(w9);
                    if (list2 == null) {
                        list2 = new LinkedList<>();
                        map.put(w9, list2);
                    }
                    list2.add(record);
                }
            }
        }
    }

    private final void k(DnsMessage dnsMessage, Map<DnsMessage, List<Record<? extends h>>> map) {
        for (Map.Entry<DnsMessage, List<Record<? extends h>>> entry : map.entrySet()) {
            DnsMessage key = entry.getKey();
            super.e(key, dnsMessage.a().L(key.o()).E(true).t(entry.getValue()).w());
        }
    }

    @Override // org.minidns.cache.c, org.minidns.a
    public void c(DnsMessage dnsMessage, DnsMessage dnsMessage2, DnsName dnsName) {
        HashMap hashMap = new HashMap(dnsMessage2.f92672n.size());
        j(hashMap, dnsMessage, dnsMessage2.f92671m, dnsName);
        j(hashMap, dnsMessage, dnsMessage2.f92672n, dnsName);
        k(dnsMessage2, hashMap);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.minidns.cache.c, org.minidns.a
    public void e(DnsMessage dnsMessage, DnsMessage dnsMessage2) {
        super.e(dnsMessage, dnsMessage2);
        HashMap hashMap = new HashMap(dnsMessage2.f92672n.size());
        j(hashMap, dnsMessage, dnsMessage2.f92670l, null);
        j(hashMap, dnsMessage, dnsMessage2.f92671m, null);
        j(hashMap, dnsMessage, dnsMessage2.f92672n, null);
        k(dnsMessage2, hashMap);
    }

    protected boolean l(Record<? extends h> record, org.minidns.dnsmessage.a aVar, DnsName dnsName) {
        return record.f92893a.isChildOf(aVar.f92704a) || (dnsName != null ? record.f92893a.isChildOf(dnsName) : false);
    }

    public a(int i4) {
        super(i4);
    }

    public a(int i4, long j4) {
        super(i4, j4);
    }
}
