package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.internal.n;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class t<A extends a.b, L> {

    /* renamed from: a  reason: collision with root package name */
    private final n<L> f28881a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Feature[] f28882b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f28883c;

    /* renamed from: d  reason: collision with root package name */
    private final int f28884d;

    @u2.a
    protected t(@NonNull n<L> nVar) {
        this(nVar, null, false, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    public t(@NonNull n<L> nVar, @Nullable Feature[] featureArr, boolean z9, int i4) {
        this.f28881a = nVar;
        this.f28882b = featureArr;
        this.f28883c = z9;
        this.f28884d = i4;
    }

    @u2.a
    public void a() {
        this.f28881a.a();
    }

    @Nullable
    @u2.a
    public n.a<L> b() {
        return this.f28881a.b();
    }

    @Nullable
    @u2.a
    public Feature[] c() {
        return this.f28882b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    public abstract void d(@NonNull A a10, @NonNull com.google.android.gms.tasks.l<Void> lVar) throws RemoteException;

    public final int e() {
        return this.f28884d;
    }

    public final boolean f() {
        return this.f28883c;
    }

    @u2.a
    protected t(@NonNull n<L> nVar, @NonNull Feature[] featureArr, boolean z9) {
        this(nVar, featureArr, z9, 0);
    }
}
