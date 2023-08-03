package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.internal.n;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private final Set<n<?>> f28833a = Collections.newSetFromMap(new WeakHashMap());

    @NonNull
    @u2.a
    public static <L> n<L> a(@NonNull L l10, @NonNull Looper looper, @NonNull String str) {
        com.google.android.gms.common.internal.u.l(l10, "Listener must not be null");
        com.google.android.gms.common.internal.u.l(looper, "Looper must not be null");
        com.google.android.gms.common.internal.u.l(str, "Listener type must not be null");
        return new n<>(looper, l10, str);
    }

    @NonNull
    @u2.a
    public static <L> n<L> b(@NonNull L l10, @NonNull Executor executor, @NonNull String str) {
        com.google.android.gms.common.internal.u.l(l10, "Listener must not be null");
        com.google.android.gms.common.internal.u.l(executor, "Executor must not be null");
        com.google.android.gms.common.internal.u.l(str, "Listener type must not be null");
        return new n<>(executor, l10, str);
    }

    @NonNull
    @u2.a
    public static <L> n.a<L> c(@NonNull L l10, @NonNull String str) {
        com.google.android.gms.common.internal.u.l(l10, "Listener must not be null");
        com.google.android.gms.common.internal.u.l(str, "Listener type must not be null");
        com.google.android.gms.common.internal.u.h(str, "Listener type must not be empty");
        return new n.a<>(l10, str);
    }

    @NonNull
    public final <L> n<L> d(@NonNull L l10, @NonNull Looper looper, @NonNull String str) {
        n<L> a10 = a(l10, looper, "NO_TYPE");
        this.f28833a.add(a10);
        return a10;
    }

    public final void e() {
        for (n<?> nVar : this.f28833a) {
            nVar.a();
        }
        this.f28833a.clear();
    }
}
