package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.internal.n;
import com.google.android.gms.common.data.DataHolder;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class g<L> implements n.b<L> {

    /* renamed from: a  reason: collision with root package name */
    private final DataHolder f28691a;

    @u2.a
    protected g(@NonNull DataHolder dataHolder) {
        this.f28691a = dataHolder;
    }

    @Override // com.google.android.gms.common.api.internal.n.b
    @u2.a
    public final void a(@NonNull L l10) {
        c(l10, this.f28691a);
    }

    @Override // com.google.android.gms.common.api.internal.n.b
    @u2.a
    public void b() {
        DataHolder dataHolder = this.f28691a;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }

    @u2.a
    protected abstract void c(@NonNull L l10, @NonNull DataHolder dataHolder);
}
