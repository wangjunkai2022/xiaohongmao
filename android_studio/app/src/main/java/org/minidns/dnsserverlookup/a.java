package org.minidns.dnsserverlookup;

import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;

/* compiled from: AbstractDnsServerLookupMechanism.java */
/* loaded from: classes5.dex */
public abstract class a implements d {

    /* renamed from: c  reason: collision with root package name */
    protected static final Logger f92779c = Logger.getLogger(a.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final String f92780a;

    /* renamed from: b  reason: collision with root package name */
    private final int f92781b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(String str, int i4) {
        this.f92780a = str;
        this.f92781b = i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static List<String> b(Collection<? extends InetAddress> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (InetAddress inetAddress : collection) {
            arrayList.add(inetAddress.getHostAddress());
        }
        return arrayList;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public final int compareTo(d dVar) {
        return getPriority() - dVar.getPriority();
    }

    @Override // org.minidns.dnsserverlookup.d
    public final String getName() {
        return this.f92780a;
    }

    @Override // org.minidns.dnsserverlookup.d
    public final int getPriority() {
        return this.f92781b;
    }

    @Override // org.minidns.dnsserverlookup.d
    public abstract List<String> j();
}
