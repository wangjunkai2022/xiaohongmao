package com.google.mlkit.nl.languageid;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.google.android.gms.tasks.k;
import java.io.Closeable;
import java.util.List;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public interface c extends Closeable, LifecycleObserver {
    @NonNull
    public static final String N0 = "und";
    public static final float O0 = 0.5f;
    public static final float P0 = 0.01f;

    @NonNull
    k<List<IdentifiedLanguage>> Z(@NonNull String str);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    void close();

    @NonNull
    k<String> i0(@NonNull String str);
}
