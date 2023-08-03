package com.google.android.gms.common.api;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.data.a;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class g<T, R extends com.google.android.gms.common.data.a<T> & q> extends p<R> implements com.google.android.gms.common.data.b<T> {
    @u2.a
    public g() {
    }

    @Override // com.google.android.gms.common.data.b, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ((com.google.android.gms.common.data.a) a()).close();
    }

    @Override // com.google.android.gms.common.data.b
    @NonNull
    public final T get(int i4) {
        return (T) ((com.google.android.gms.common.data.a) a()).get(i4);
    }

    @Override // com.google.android.gms.common.data.b
    public final int getCount() {
        return ((com.google.android.gms.common.data.a) a()).getCount();
    }

    @Override // com.google.android.gms.common.data.b
    @Nullable
    public final Bundle getMetadata() {
        return ((com.google.android.gms.common.data.a) a()).getMetadata();
    }

    @Override // com.google.android.gms.common.data.b
    public final boolean isClosed() {
        return ((com.google.android.gms.common.data.a) a()).isClosed();
    }

    @Override // com.google.android.gms.common.data.b, java.lang.Iterable
    @NonNull
    public final Iterator<T> iterator() {
        return ((com.google.android.gms.common.data.a) a()).iterator();
    }

    @Override // com.google.android.gms.common.data.b, com.google.android.gms.common.api.n
    public final void release() {
        ((com.google.android.gms.common.data.a) a()).release();
    }

    @Override // com.google.android.gms.common.data.b
    @NonNull
    public final Iterator<T> x() {
        return ((com.google.android.gms.common.data.a) a()).x();
    }

    /* JADX WARN: Incorrect types in method signature: (TR;)V */
    /* JADX WARN: Multi-variable type inference failed */
    @u2.a
    public g(@NonNull com.google.android.gms.common.data.a aVar) {
        super(aVar);
    }
}
