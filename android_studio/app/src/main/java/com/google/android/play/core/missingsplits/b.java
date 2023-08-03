package com.google.android.play.core.missingsplits;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.play:core@@1.10.3 */
@Deprecated
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicReference f31794a = new AtomicReference(null);

    private b() {
    }

    @NonNull
    @Deprecated
    public static a a(@NonNull Context context) {
        return new d(context, Runtime.getRuntime(), new c(context, context.getPackageManager()), f31794a);
    }
}
