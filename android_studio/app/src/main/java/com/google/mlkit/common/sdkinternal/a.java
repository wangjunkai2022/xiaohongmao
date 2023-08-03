package com.google.mlkit.common.sdkinternal;

import androidx.annotation.NonNull;
import java.lang.ref.ReferenceQueue;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final ReferenceQueue f35768a = new ReferenceQueue();

    /* renamed from: b  reason: collision with root package name */
    private final Set f35769b = Collections.synchronizedSet(new HashSet());

    /* compiled from: com.google.mlkit:common@@18.4.0 */
    /* renamed from: com.google.mlkit.common.sdkinternal.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0278a {
        @u2.a
        void a();
    }

    private a() {
    }

    @NonNull
    @u2.a
    public static a a() {
        a aVar = new a();
        aVar.b(aVar, s.f35909a);
        final ReferenceQueue referenceQueue = aVar.f35768a;
        final Set set = aVar.f35769b;
        Thread thread = new Thread(new Runnable() { // from class: com.google.mlkit.common.sdkinternal.r
            @Override // java.lang.Runnable
            public final void run() {
                ReferenceQueue referenceQueue2 = referenceQueue;
                Set set2 = set;
                while (!set2.isEmpty()) {
                    try {
                        ((u) referenceQueue2.remove()).a();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }, "MlKitCleaner");
        thread.setDaemon(true);
        thread.start();
        return aVar;
    }

    @NonNull
    @u2.a
    public InterfaceC0278a b(@NonNull Object obj, @NonNull Runnable runnable) {
        u uVar = new u(obj, this.f35768a, this.f35769b, runnable, null);
        this.f35769b.add(uVar);
        return uVar;
    }
}
