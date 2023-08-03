package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class b extends BasePendingResult<c> {

    /* renamed from: r  reason: collision with root package name */
    private int f28527r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f28528s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f28529t;

    /* renamed from: u  reason: collision with root package name */
    private final l<?>[] f28530u;

    /* renamed from: v  reason: collision with root package name */
    private final Object f28531v;

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private List<l<?>> f28532a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private i f28533b;

        public a(@NonNull i iVar) {
            this.f28533b = iVar;
        }

        @NonNull
        public <R extends q> d<R> a(@NonNull l<R> lVar) {
            d<R> dVar = new d<>(this.f28532a.size());
            this.f28532a.add(lVar);
            return dVar;
        }

        @NonNull
        public b b() {
            return new b(this.f28532a, this.f28533b, null);
        }
    }

    /* synthetic */ b(List list, i iVar, x xVar) {
        super(iVar);
        this.f28531v = new Object();
        int size = list.size();
        this.f28527r = size;
        l<?>[] lVarArr = new l[size];
        this.f28530u = lVarArr;
        if (!list.isEmpty()) {
            for (int i4 = 0; i4 < list.size(); i4++) {
                l<?> lVar = (l) list.get(i4);
                this.f28530u[i4] = lVar;
                lVar.c(new w(this));
            }
            return;
        }
        o(new c(Status.RESULT_SUCCESS, lVarArr));
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult, com.google.android.gms.common.api.l
    public void f() {
        super.f();
        for (l<?> lVar : this.f28530u) {
            lVar.f();
        }
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    @NonNull
    /* renamed from: w */
    public c k(@NonNull Status status) {
        return new c(status, this.f28530u);
    }
}
