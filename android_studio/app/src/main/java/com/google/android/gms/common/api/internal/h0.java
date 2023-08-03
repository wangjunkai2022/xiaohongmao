package com.google.android.gms.common.api.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class h0 {

    /* renamed from: a  reason: collision with root package name */
    private final Map<BasePendingResult<?>, Boolean> f28704a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    private final Map<com.google.android.gms.tasks.l<?>, Boolean> f28705b = Collections.synchronizedMap(new WeakHashMap());

    private final void h(boolean z9, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f28704a) {
            hashMap = new HashMap(this.f28704a);
        }
        synchronized (this.f28705b) {
            hashMap2 = new HashMap(this.f28705b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z9 || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).l(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z9 || ((Boolean) entry2.getValue()).booleanValue()) {
                ((com.google.android.gms.tasks.l) entry2.getKey()).d(new ApiException(status));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(BasePendingResult<? extends com.google.android.gms.common.api.q> basePendingResult, boolean z9) {
        this.f28704a.put(basePendingResult, Boolean.valueOf(z9));
        basePendingResult.c(new f0(this, basePendingResult));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <TResult> void d(com.google.android.gms.tasks.l<TResult> lVar, boolean z9) {
        this.f28705b.put(lVar, Boolean.valueOf(z9));
        lVar.a().e(new g0(this, lVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(int i4, @Nullable String str) {
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i4 == 1) {
            sb.append(" due to service disconnection.");
        } else if (i4 == 3) {
            sb.append(" due to dead object exception.");
        }
        if (str != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(str);
        }
        h(true, new Status(20, sb.toString()));
    }

    public final void f() {
        h(false, i.f28721r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g() {
        return (this.f28704a.isEmpty() && this.f28705b.isEmpty()) ? false : true;
    }
}
