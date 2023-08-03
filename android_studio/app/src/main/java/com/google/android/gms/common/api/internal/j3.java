package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class j3 {

    /* renamed from: c  reason: collision with root package name */
    public static final Status f28786c = new Status(8, "The connection to Google Play services was lost");
    @y2.d0

    /* renamed from: a  reason: collision with root package name */
    final Set<BasePendingResult<?>> f28787a = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));

    /* renamed from: b  reason: collision with root package name */
    private final i3 f28788b = new i3(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(BasePendingResult<? extends com.google.android.gms.common.api.q> basePendingResult) {
        this.f28787a.add(basePendingResult);
        basePendingResult.v(this.f28788b);
    }

    public final void b() {
        BasePendingResult[] basePendingResultArr;
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f28787a.toArray(new BasePendingResult[0])) {
            basePendingResult.v(null);
            if (basePendingResult.u()) {
                this.f28787a.remove(basePendingResult);
            }
        }
    }
}
