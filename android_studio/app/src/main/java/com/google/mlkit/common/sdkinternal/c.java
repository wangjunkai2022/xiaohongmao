package com.google.mlkit.common.sdkinternal;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.internal.mlkit_common.kb;
import com.google.android.gms.internal.mlkit_common.nb;
import com.google.android.gms.internal.mlkit_common.t7;
import com.google.android.gms.internal.mlkit_common.vb;
import com.google.android.gms.internal.mlkit_common.w7;
import com.google.android.gms.internal.mlkit_common.zzip;
import com.google.android.gms.internal.mlkit_common.zziu;
import com.google.mlkit.common.sdkinternal.a;
import java.io.Closeable;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class c implements Closeable {
    @u2.a

    /* renamed from: d  reason: collision with root package name */
    public static final int f35772d = 1;

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f35773a = new AtomicBoolean();

    /* renamed from: b  reason: collision with root package name */
    private final String f35774b;

    /* renamed from: c  reason: collision with root package name */
    private final a.InterfaceC0278a f35775c;

    /* compiled from: com.google.mlkit:common@@18.4.0 */
    @u2.a
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.mlkit.common.sdkinternal.a f35776a;

        public a(@NonNull com.google.mlkit.common.sdkinternal.a aVar) {
            this.f35776a = aVar;
        }

        @NonNull
        @u2.a
        public c a(@NonNull Object obj, int i4, @NonNull Runnable runnable) {
            return new c(obj, i4, this.f35776a, runnable, vb.b("common"));
        }
    }

    c(Object obj, final int i4, com.google.mlkit.common.sdkinternal.a aVar, final Runnable runnable, final kb kbVar) {
        this.f35774b = obj.toString();
        this.f35775c = aVar.b(obj, new Runnable() { // from class: com.google.mlkit.common.sdkinternal.v
            @Override // java.lang.Runnable
            public final void run() {
                c.this.a(i4, kbVar, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(int i4, kb kbVar, Runnable runnable) {
        if (!this.f35773a.get()) {
            Log.e("MlKitCloseGuard", String.format(Locale.ENGLISH, "%s has not been closed", this.f35774b));
            w7 w7Var = new w7();
            t7 t7Var = new t7();
            t7Var.b(zzip.zzb(i4));
            w7Var.h(t7Var.c());
            kbVar.d(nb.f(w7Var), zziu.HANDLE_LEAKED);
        }
        runnable.run();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f35773a.set(true);
        this.f35775c.a();
    }
}
