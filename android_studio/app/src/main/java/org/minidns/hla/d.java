package org.minidns.hla;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import org.minidns.AbstractDnsClient;
import org.minidns.MiniDnsException;
import org.minidns.dnsname.DnsName;
import org.minidns.record.j;
import org.minidns.record.u;

/* compiled from: SrvResolverResult.java */
/* loaded from: classes5.dex */
public class d extends c<u> {

    /* renamed from: i  reason: collision with root package name */
    private final org.minidns.hla.b f92847i;

    /* renamed from: j  reason: collision with root package name */
    private final AbstractDnsClient.IpVersionSetting f92848j;

    /* renamed from: k  reason: collision with root package name */
    private List<b> f92849k;

    /* compiled from: SrvResolverResult.java */
    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f92850a;

        static {
            int[] iArr = new int[AbstractDnsClient.IpVersionSetting.values().length];
            f92850a = iArr;
            try {
                iArr[AbstractDnsClient.IpVersionSetting.v4only.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f92850a[AbstractDnsClient.IpVersionSetting.v6only.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f92850a[AbstractDnsClient.IpVersionSetting.v4v6.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f92850a[AbstractDnsClient.IpVersionSetting.v6v4.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: SrvResolverResult.java */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final DnsName f92851a;

        /* renamed from: b  reason: collision with root package name */
        public final u f92852b;

        /* renamed from: c  reason: collision with root package name */
        public final List<j> f92853c;

        /* renamed from: d  reason: collision with root package name */
        public final c<org.minidns.record.a> f92854d;

        /* renamed from: e  reason: collision with root package name */
        public final c<org.minidns.record.b> f92855e;

        /* renamed from: f  reason: collision with root package name */
        public final int f92856f;

        /* synthetic */ b(DnsName dnsName, u uVar, List list, c cVar, c cVar2, a aVar) {
            this(dnsName, uVar, list, cVar, cVar2);
        }

        private b(DnsName dnsName, u uVar, List<j> list, c<org.minidns.record.a> cVar, c<org.minidns.record.b> cVar2) {
            this.f92851a = dnsName;
            this.f92852b = uVar;
            this.f92853c = Collections.unmodifiableList(list);
            this.f92856f = uVar.f92994e;
            this.f92854d = cVar;
            this.f92855e = cVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c<u> cVar, org.minidns.hla.b bVar) throws MiniDnsException.NullResultException {
        super(cVar.f92839a, cVar.f92844f, cVar.f92843e);
        this.f92847i = bVar;
        this.f92848j = bVar.a().k();
    }

    public List<b> n() throws IOException {
        c cVar;
        List<b> list = this.f92849k;
        if (list != null) {
            return list;
        }
        l();
        List<u> b10 = org.minidns.util.j.b(a());
        ArrayList arrayList = new ArrayList(b10.size());
        for (u uVar : b10) {
            Set emptySet = Collections.emptySet();
            c cVar2 = null;
            if (this.f92848j.f92585v4) {
                c d4 = this.f92847i.d(uVar.f92995f, org.minidns.record.a.class);
                if (d4.m() && !d4.i()) {
                    emptySet = d4.a();
                }
                cVar = d4;
            } else {
                cVar = null;
            }
            Set emptySet2 = Collections.emptySet();
            if (this.f92848j.f92586v6) {
                cVar2 = this.f92847i.d(uVar.f92995f, org.minidns.record.b.class);
                if (cVar2.m() && !cVar2.i()) {
                    emptySet2 = cVar2.a();
                }
            }
            c cVar3 = cVar2;
            if (!emptySet.isEmpty() || !emptySet2.isEmpty()) {
                ArrayList arrayList2 = new ArrayList(emptySet.size() + emptySet2.size());
                int i4 = a.f92850a[this.f92848j.ordinal()];
                if (i4 == 1) {
                    arrayList2.addAll(emptySet);
                } else if (i4 == 2) {
                    arrayList2.addAll(emptySet2);
                } else if (i4 == 3) {
                    arrayList2.addAll(emptySet);
                    arrayList2.addAll(emptySet2);
                } else if (i4 == 4) {
                    arrayList2.addAll(emptySet2);
                    arrayList2.addAll(emptySet);
                }
                arrayList.add(new b(this.f92839a.f92704a, uVar, arrayList2, cVar, cVar3, null));
            }
        }
        this.f92849k = arrayList;
        return arrayList;
    }
}
