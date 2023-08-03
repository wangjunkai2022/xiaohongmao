package com.google.mlkit.common.sdkinternal;

import com.google.mlkit.common.sdkinternal.a;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.Set;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class u extends PhantomReference implements a.InterfaceC0278a {

    /* renamed from: a  reason: collision with root package name */
    private final Set f35910a;

    /* renamed from: b  reason: collision with root package name */
    private final Runnable f35911b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ u(Object obj, ReferenceQueue referenceQueue, Set set, Runnable runnable, t tVar) {
        super(obj, referenceQueue);
        this.f35910a = set;
        this.f35911b = runnable;
    }

    @Override // com.google.mlkit.common.sdkinternal.a.InterfaceC0278a
    public final void a() {
        if (this.f35910a.remove(this)) {
            clear();
            this.f35911b.run();
        }
    }
}
