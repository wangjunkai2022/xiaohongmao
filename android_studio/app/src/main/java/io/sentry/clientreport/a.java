package io.sentry.clientreport;

import io.sentry.DataCategory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import m8.a;

/* compiled from: AtomicClientReportStorage.java */
@a.c
/* loaded from: classes4.dex */
final class a implements g {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Map<c, AtomicLong> f83065a;

    public a() {
        DiscardReason[] values;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        for (DiscardReason discardReason : DiscardReason.values()) {
            for (DataCategory dataCategory : DataCategory.values()) {
                concurrentHashMap.put(new c(discardReason.getReason(), dataCategory.getCategory()), new AtomicLong(0L));
            }
        }
        this.f83065a = Collections.unmodifiableMap(concurrentHashMap);
    }

    @Override // io.sentry.clientreport.g
    public void a(c cVar, Long l10) {
        AtomicLong atomicLong = this.f83065a.get(cVar);
        if (atomicLong != null) {
            atomicLong.addAndGet(l10.longValue());
        }
    }

    @Override // io.sentry.clientreport.g
    public List<e> b() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<c, AtomicLong> entry : this.f83065a.entrySet()) {
            Long valueOf = Long.valueOf(entry.getValue().getAndSet(0L));
            if (valueOf.longValue() > 0) {
                arrayList.add(new e(entry.getKey().b(), entry.getKey().a(), valueOf));
            }
        }
        return arrayList;
    }
}
