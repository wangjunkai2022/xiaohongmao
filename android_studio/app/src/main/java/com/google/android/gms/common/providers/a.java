package com.google.android.gms.common.providers;

import androidx.annotation.NonNull;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@Deprecated
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static InterfaceC0198a f29257a;

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* renamed from: com.google.android.gms.common.providers.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0198a {
        @NonNull
        @u2.a
        @Deprecated
        ScheduledExecutorService a();
    }

    private a() {
    }

    @NonNull
    @u2.a
    @Deprecated
    public static synchronized InterfaceC0198a a() {
        InterfaceC0198a interfaceC0198a;
        synchronized (a.class) {
            if (f29257a == null) {
                f29257a = new b();
            }
            interfaceC0198a = f29257a;
        }
        return interfaceC0198a;
    }
}
