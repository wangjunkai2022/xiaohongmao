package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class h implements com.google.android.gms.common.api.q, com.google.android.gms.common.api.n {
    @NonNull
    @u2.a

    /* renamed from: a  reason: collision with root package name */
    protected final Status f28702a;
    @NonNull
    @u2.a

    /* renamed from: b  reason: collision with root package name */
    protected final DataHolder f28703b;

    @u2.a
    protected h(@NonNull DataHolder dataHolder) {
        this(dataHolder, new Status(dataHolder.getStatusCode()));
    }

    @u2.a
    protected h(@NonNull DataHolder dataHolder, @NonNull Status status) {
        this.f28702a = status;
        this.f28703b = dataHolder;
    }

    @Override // com.google.android.gms.common.api.q
    @NonNull
    @u2.a
    public Status getStatus() {
        return this.f28702a;
    }

    @Override // com.google.android.gms.common.api.n
    @u2.a
    public void release() {
        DataHolder dataHolder = this.f28703b;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }
}
