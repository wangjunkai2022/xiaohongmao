package org.minidns.cache;

import com.alipay.sdk.util.i;
import java.util.LinkedHashMap;
import java.util.Map;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;
import org.minidns.record.h;

/* compiled from: LruCache.java */
/* loaded from: classes5.dex */
public class c extends org.minidns.a {

    /* renamed from: b  reason: collision with root package name */
    protected long f92615b;

    /* renamed from: c  reason: collision with root package name */
    protected long f92616c;

    /* renamed from: d  reason: collision with root package name */
    protected long f92617d;

    /* renamed from: e  reason: collision with root package name */
    protected int f92618e;

    /* renamed from: f  reason: collision with root package name */
    protected long f92619f;

    /* renamed from: g  reason: collision with root package name */
    protected LinkedHashMap<DnsMessage, DnsMessage> f92620g;

    /* compiled from: LruCache.java */
    /* loaded from: classes5.dex */
    class a extends LinkedHashMap<DnsMessage, DnsMessage> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f92621a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i4, float f10, boolean z9, int i10) {
            super(i4, f10, z9);
            this.f92621a = i10;
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<DnsMessage, DnsMessage> entry) {
            return size() > this.f92621a;
        }
    }

    public c(int i4, long j4) {
        this.f92615b = 0L;
        this.f92616c = 0L;
        this.f92617d = 0L;
        this.f92618e = i4;
        this.f92619f = j4;
        this.f92620g = new a(Math.min(((i4 + 3) / 4) + i4 + 2, 11), 0.75f, true, i4);
    }

    @Override // org.minidns.a
    protected synchronized DnsMessage b(DnsMessage dnsMessage) {
        DnsMessage dnsMessage2 = this.f92620g.get(dnsMessage);
        if (dnsMessage2 == null) {
            this.f92615b++;
            return null;
        }
        long j4 = this.f92619f;
        for (Record<? extends h> record : dnsMessage2.f92670l) {
            j4 = Math.min(j4, record.f92897e);
        }
        if (dnsMessage2.f92675q + (j4 * 1000) < System.currentTimeMillis()) {
            this.f92615b++;
            this.f92616c++;
            this.f92620g.remove(dnsMessage);
            return null;
        }
        this.f92617d++;
        return dnsMessage2;
    }

    @Override // org.minidns.a
    public void c(DnsMessage dnsMessage, DnsMessage dnsMessage2, DnsName dnsName) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.minidns.a
    public synchronized void e(DnsMessage dnsMessage, DnsMessage dnsMessage2) {
        if (dnsMessage2.f92675q <= 0) {
            return;
        }
        this.f92620g.put(dnsMessage, dnsMessage2);
    }

    public synchronized void f() {
        this.f92620g.clear();
        this.f92615b = 0L;
        this.f92617d = 0L;
        this.f92616c = 0L;
    }

    public long g() {
        return this.f92616c;
    }

    public long h() {
        return this.f92617d;
    }

    public long i() {
        return this.f92615b;
    }

    public String toString() {
        return "LRUCache{usage=" + this.f92620g.size() + "/" + this.f92618e + ", hits=" + this.f92617d + ", misses=" + this.f92615b + ", expires=" + this.f92616c + i.f6967d;
    }

    public c(int i4) {
        this(i4, Long.MAX_VALUE);
    }

    public c() {
        this(512);
    }
}
