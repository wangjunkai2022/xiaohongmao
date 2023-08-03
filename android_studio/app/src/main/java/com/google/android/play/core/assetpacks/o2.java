package com.google.android.play.core.assetpacks;

import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class o2 {

    /* renamed from: g  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31498g = new com.google.android.play.core.internal.h("ExtractorSessionStoreView");

    /* renamed from: a  reason: collision with root package name */
    private final p0 f31499a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31500b;

    /* renamed from: c  reason: collision with root package name */
    private final x1 f31501c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31502d;

    /* renamed from: e  reason: collision with root package name */
    private final Map f31503e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private final ReentrantLock f31504f = new ReentrantLock();

    /* JADX INFO: Access modifiers changed from: package-private */
    public o2(p0 p0Var, com.google.android.play.core.internal.n1 n1Var, x1 x1Var, com.google.android.play.core.internal.n1 n1Var2) {
        this.f31499a = p0Var;
        this.f31500b = n1Var;
        this.f31501c = x1Var;
        this.f31502d = n1Var2;
    }

    private final l2 q(int i4) {
        Map map = this.f31503e;
        Integer valueOf = Integer.valueOf(i4);
        l2 l2Var = (l2) map.get(valueOf);
        if (l2Var != null) {
            return l2Var;
        }
        throw new t1(String.format("Could not find session %d while trying to get it", valueOf), i4);
    }

    private final Object r(n2 n2Var) {
        try {
            this.f31504f.lock();
            return n2Var.zza();
        } finally {
            this.f31504f.unlock();
        }
    }

    private static String s(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        if (stringArrayList != null && !stringArrayList.isEmpty()) {
            return stringArrayList.get(0);
        }
        throw new t1("Session without pack received.");
    }

    private static List t(List list) {
        return list == null ? Collections.emptyList() : list;
    }

    private final Map u(final List list) {
        return (Map) r(new n2() { // from class: com.google.android.play.core.assetpacks.g2
            @Override // com.google.android.play.core.assetpacks.n2
            public final Object zza() {
                return o2.this.i(list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Boolean a(Bundle bundle) {
        int i4 = bundle.getInt("session_id");
        if (i4 == 0) {
            return Boolean.TRUE;
        }
        Map map = this.f31503e;
        Integer valueOf = Integer.valueOf(i4);
        if (!map.containsKey(valueOf)) {
            return Boolean.TRUE;
        }
        l2 l2Var = (l2) this.f31503e.get(valueOf);
        if (l2Var.f31405c.f31382d == 6) {
            return Boolean.FALSE;
        }
        return Boolean.valueOf(!o0.c(l2Var.f31405c.f31382d, bundle.getInt(b3.e.a("status", s(bundle)))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Boolean b(Bundle bundle) {
        int i4 = bundle.getInt("session_id");
        if (i4 == 0) {
            return Boolean.FALSE;
        }
        Map map = this.f31503e;
        Integer valueOf = Integer.valueOf(i4);
        boolean z9 = true;
        if (map.containsKey(valueOf)) {
            l2 q9 = q(i4);
            int i10 = bundle.getInt(b3.e.a("status", q9.f31405c.f31379a));
            k2 k2Var = q9.f31405c;
            int i11 = k2Var.f31382d;
            if (o0.c(i11, i10)) {
                f31498g.a("Found stale update for session %s with status %d.", valueOf, Integer.valueOf(i11));
                k2 k2Var2 = q9.f31405c;
                String str = k2Var2.f31379a;
                int i12 = k2Var2.f31382d;
                if (i12 == 4) {
                    ((x4) this.f31500b.zza()).b(i4, str);
                } else if (i12 == 5) {
                    ((x4) this.f31500b.zza()).e(i4);
                } else if (i12 == 6) {
                    ((x4) this.f31500b.zza()).f(Arrays.asList(str));
                }
            } else {
                k2Var.f31382d = i10;
                if (o0.d(i10)) {
                    n(i4);
                    this.f31501c.c(q9.f31405c.f31379a);
                } else {
                    for (m2 m2Var : k2Var.f31384f) {
                        ArrayList parcelableArrayList = bundle.getParcelableArrayList(b3.e.b("chunk_intents", q9.f31405c.f31379a, m2Var.f31454a));
                        if (parcelableArrayList != null) {
                            for (int i13 = 0; i13 < parcelableArrayList.size(); i13++) {
                                if (parcelableArrayList.get(i13) != null && ((Intent) parcelableArrayList.get(i13)).getData() != null) {
                                    ((i2) m2Var.f31457d.get(i13)).f31337a = true;
                                }
                            }
                        }
                    }
                }
            }
        } else {
            String s9 = s(bundle);
            long j4 = bundle.getLong(b3.e.a("pack_version", s9));
            String string = bundle.getString(b3.e.a("pack_version_tag", s9), "");
            int i14 = bundle.getInt(b3.e.a("status", s9));
            long j10 = bundle.getLong(b3.e.a("total_bytes_to_download", s9));
            ArrayList<String> stringArrayList = bundle.getStringArrayList(b3.e.a("slice_ids", s9));
            ArrayList arrayList = new ArrayList();
            for (String str2 : t(stringArrayList)) {
                ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(b3.e.b("chunk_intents", s9, str2));
                ArrayList arrayList2 = new ArrayList();
                for (Intent intent : t(parcelableArrayList2)) {
                    if (intent == null) {
                        z9 = false;
                    }
                    arrayList2.add(new i2(z9));
                    z9 = true;
                }
                String string2 = bundle.getString(b3.e.b("uncompressed_hash_sha256", s9, str2));
                long j11 = bundle.getLong(b3.e.b("uncompressed_size", s9, str2));
                int i15 = bundle.getInt(b3.e.b("patch_format", s9, str2), 0);
                arrayList.add(i15 != 0 ? new m2(str2, string2, j11, arrayList2, 0, i15) : new m2(str2, string2, j11, arrayList2, bundle.getInt(b3.e.b("compression_format", s9, str2), 0), 0));
                z9 = true;
            }
            this.f31503e.put(Integer.valueOf(i4), new l2(i4, bundle.getInt("app_version_code"), new k2(s9, j4, i14, j10, arrayList, string)));
        }
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object c(String str, int i4, long j4) {
        l2 l2Var = (l2) u(Arrays.asList(str)).get(str);
        if (l2Var == null || o0.d(l2Var.f31405c.f31382d)) {
            f31498g.b(String.format("Could not find pack %s while trying to complete it", str), new Object[0]);
        }
        this.f31499a.e(str, i4, j4);
        l2Var.f31405c.f31382d = 4;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object d(int i4, int i10) {
        q(i4).f31405c.f31382d = 5;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object e(int i4) {
        l2 q9 = q(i4);
        k2 k2Var = q9.f31405c;
        if (o0.d(k2Var.f31382d)) {
            this.f31499a.e(k2Var.f31379a, q9.f31404b, k2Var.f31380b);
            k2 k2Var2 = q9.f31405c;
            int i10 = k2Var2.f31382d;
            if (i10 == 5 || i10 == 6) {
                this.f31499a.f(k2Var2.f31379a, q9.f31404b, k2Var2.f31380b);
                return null;
            }
            return null;
        }
        throw new t1(String.format("Could not safely delete session %d because it is not in a terminal state.", Integer.valueOf(i4)), i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map f(final List list) {
        return (Map) r(new n2() { // from class: com.google.android.play.core.assetpacks.f2
            @Override // com.google.android.play.core.assetpacks.n2
            public final Object zza() {
                return o2.this.h(list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map g() {
        return this.f31503e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Map h(List list) {
        Map u9 = u(list);
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            final l2 l2Var = (l2) u9.get(str);
            if (l2Var == null) {
                hashMap.put(str, 8);
            } else {
                k2 k2Var = l2Var.f31405c;
                if (o0.a(k2Var.f31382d)) {
                    try {
                        k2Var.f31382d = 6;
                        ((Executor) this.f31502d.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.h2
                            @Override // java.lang.Runnable
                            public final void run() {
                                o2.this.n(l2Var.f31403a);
                            }
                        });
                        this.f31501c.c(str);
                    } catch (t1 unused) {
                        f31498g.d("Session %d with pack %s does not exist, no need to cancel.", Integer.valueOf(l2Var.f31403a), str);
                    }
                }
                hashMap.put(str, Integer.valueOf(l2Var.f31405c.f31382d));
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Map i(List list) {
        HashMap hashMap = new HashMap();
        for (l2 l2Var : this.f31503e.values()) {
            String str = l2Var.f31405c.f31379a;
            if (list.contains(str)) {
                l2 l2Var2 = (l2) hashMap.get(str);
                if ((l2Var2 == null ? -1 : l2Var2.f31403a) < l2Var.f31403a) {
                    hashMap.put(str, l2Var);
                }
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j() {
        this.f31504f.lock();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k(final String str, final int i4, final long j4) {
        r(new n2() { // from class: com.google.android.play.core.assetpacks.e2
            @Override // com.google.android.play.core.assetpacks.n2
            public final Object zza() {
                o2.this.c(str, i4, j4);
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l() {
        this.f31504f.unlock();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m(final int i4, @b3.b int i10) {
        r(new n2(i4, 5) { // from class: com.google.android.play.core.assetpacks.b2

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ int f31247b;

            @Override // com.google.android.play.core.assetpacks.n2
            public final Object zza() {
                o2.this.d(this.f31247b, 5);
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void n(final int i4) {
        r(new n2() { // from class: com.google.android.play.core.assetpacks.a2
            @Override // com.google.android.play.core.assetpacks.n2
            public final Object zza() {
                o2.this.e(i4);
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean o(final Bundle bundle) {
        return ((Boolean) r(new n2() { // from class: com.google.android.play.core.assetpacks.c2
            @Override // com.google.android.play.core.assetpacks.n2
            public final Object zza() {
                return o2.this.a(bundle);
            }
        })).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean p(final Bundle bundle) {
        return ((Boolean) r(new n2() { // from class: com.google.android.play.core.assetpacks.d2
            @Override // com.google.android.play.core.assetpacks.n2
            public final Object zza() {
                return o2.this.b(bundle);
            }
        })).booleanValue();
    }
}
