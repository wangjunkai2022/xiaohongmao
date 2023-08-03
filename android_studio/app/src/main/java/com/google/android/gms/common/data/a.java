package com.google.android.gms.common.data;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class a<T> implements b<T> {
    @Nullable
    @u2.a

    /* renamed from: a  reason: collision with root package name */
    protected final DataHolder f28978a;

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    public a(@Nullable DataHolder dataHolder) {
        this.f28978a = dataHolder;
    }

    @Override // com.google.android.gms.common.data.b, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        release();
    }

    @Override // com.google.android.gms.common.data.b
    public abstract T get(int i4);

    @Override // com.google.android.gms.common.data.b
    public int getCount() {
        DataHolder dataHolder = this.f28978a;
        if (dataHolder == null) {
            return 0;
        }
        return dataHolder.getCount();
    }

    @Override // com.google.android.gms.common.data.b
    @Nullable
    public final Bundle getMetadata() {
        DataHolder dataHolder = this.f28978a;
        if (dataHolder == null) {
            return null;
        }
        return dataHolder.getMetadata();
    }

    @Override // com.google.android.gms.common.data.b
    @Deprecated
    public boolean isClosed() {
        DataHolder dataHolder = this.f28978a;
        return dataHolder == null || dataHolder.isClosed();
    }

    @Override // com.google.android.gms.common.data.b, java.lang.Iterable
    @NonNull
    public Iterator<T> iterator() {
        return new c(this);
    }

    @Override // com.google.android.gms.common.data.b, com.google.android.gms.common.api.n
    public void release() {
        DataHolder dataHolder = this.f28978a;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }

    @Override // com.google.android.gms.common.data.b
    @NonNull
    public Iterator<T> x() {
        return new l(this);
    }
}
