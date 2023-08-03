package com.google.mlkit.common.sdkinternal.model;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.internal.mlkit_common.kb;
import com.google.android.gms.internal.mlkit_common.vb;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.model.c;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class a {

    /* renamed from: h  reason: collision with root package name */
    private static final com.google.android.gms.common.internal.k f35824h = new com.google.android.gms.common.internal.k("CustomModelLoader", "");
    @GuardedBy("CustomModelLoader.class")

    /* renamed from: i  reason: collision with root package name */
    private static final Map f35825i = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private final com.google.mlkit.common.sdkinternal.k f35826a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final com.google.mlkit.common.model.c f35827b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final com.google.mlkit.common.model.a f35828c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final f f35829d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final g f35830e;

    /* renamed from: f  reason: collision with root package name */
    private final kb f35831f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f35832g;

    /* compiled from: com.google.mlkit:common@@18.4.0 */
    @u2.a
    /* renamed from: com.google.mlkit.common.sdkinternal.model.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0279a {
        @u2.a
        boolean a(@NonNull com.google.mlkit.common.model.c cVar) throws MlKitException;

        @u2.a
        void b() throws MlKitException;
    }

    private a(@NonNull com.google.mlkit.common.sdkinternal.k kVar, @Nullable com.google.mlkit.common.model.c cVar, @Nullable com.google.mlkit.common.model.a aVar) {
        if (aVar != null) {
            g gVar = new g(kVar, aVar, null, new d(kVar), new com.google.mlkit.common.internal.model.d(kVar, aVar.f()));
            this.f35830e = gVar;
            this.f35829d = f.g(kVar, aVar, new d(kVar), gVar, (e) kVar.a(e.class));
            this.f35832g = true;
        } else {
            this.f35830e = null;
            this.f35829d = null;
        }
        this.f35826a = kVar;
        this.f35827b = cVar;
        this.f35828c = aVar;
        this.f35831f = vb.b("common");
    }

    @NonNull
    @u2.a
    public static synchronized a e(@NonNull com.google.mlkit.common.sdkinternal.k kVar, @Nullable com.google.mlkit.common.model.c cVar, @Nullable com.google.mlkit.common.model.a aVar) {
        String f10;
        a aVar2;
        synchronized (a.class) {
            if (aVar == null) {
                f10 = ((com.google.mlkit.common.model.c) u.k(cVar)).toString();
            } else {
                f10 = aVar.f();
            }
            Map map = f35825i;
            if (!map.containsKey(f10)) {
                map.put(f10, new a(kVar, cVar, aVar));
            }
            aVar2 = (a) map.get(f10);
        }
        return aVar2;
    }

    @Nullable
    @WorkerThread
    private final File g() throws MlKitException {
        String d4 = ((g) u.k(this.f35830e)).d();
        if (d4 == null) {
            f35824h.c("CustomModelLoader", "No existing model file");
            return null;
        }
        File file = new File(d4);
        File[] listFiles = file.listFiles();
        return ((File[]) u.k(listFiles)).length == 1 ? listFiles[0] : file;
    }

    @WorkerThread
    private final void h() throws MlKitException {
        ((f) u.k(this.f35829d)).j();
    }

    @WorkerThread
    private static final com.google.mlkit.common.model.c i(File file) {
        if (file.isDirectory()) {
            c.a aVar = new c.a();
            aVar.c(new File(file.getAbsolutePath(), com.google.mlkit.common.sdkinternal.e.f35786c).toString());
            return aVar.a();
        }
        c.a aVar2 = new c.a();
        aVar2.b(file.getAbsolutePath());
        return aVar2.a();
    }

    @u2.a
    @VisibleForTesting
    @Nullable
    @WorkerThread
    public synchronized com.google.mlkit.common.model.c a() throws MlKitException {
        f35824h.c("CustomModelLoader", "Try to get the latest existing model file.");
        File g4 = g();
        if (g4 == null) {
            return null;
        }
        return i(g4);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0098 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009a A[Catch: all -> 0x00a0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0022, B:9:0x002a, B:24:0x009a, B:10:0x002e, B:12:0x0045, B:15:0x004e, B:16:0x0067, B:18:0x006f, B:19:0x008b), top: B:30:0x0001 }] */
    @u2.a
    @androidx.annotation.VisibleForTesting
    @androidx.annotation.Nullable
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized com.google.mlkit.common.model.c b() throws com.google.mlkit.common.MlKitException {
        /*
            r8 = this;
            monitor-enter(r8)
            com.google.android.gms.common.internal.k r0 = com.google.mlkit.common.sdkinternal.model.a.f35824h     // Catch: java.lang.Throwable -> La0
            java.lang.String r1 = "CustomModelLoader"
            java.lang.String r2 = "Try to get newly downloaded model file."
            r0.c(r1, r2)     // Catch: java.lang.Throwable -> La0
            com.google.mlkit.common.sdkinternal.model.f r1 = r8.f35829d     // Catch: java.lang.Throwable -> La0
            java.lang.Object r1 = com.google.android.gms.common.internal.u.k(r1)     // Catch: java.lang.Throwable -> La0
            com.google.mlkit.common.sdkinternal.model.f r1 = (com.google.mlkit.common.sdkinternal.model.f) r1     // Catch: java.lang.Throwable -> La0
            java.lang.Long r1 = r1.c()     // Catch: java.lang.Throwable -> La0
            com.google.mlkit.common.sdkinternal.model.f r2 = r8.f35829d     // Catch: java.lang.Throwable -> La0
            java.lang.String r2 = r2.d()     // Catch: java.lang.Throwable -> La0
            r3 = 0
            if (r1 == 0) goto L8b
            if (r2 != 0) goto L22
            goto L8b
        L22:
            com.google.mlkit.common.sdkinternal.model.f r4 = r8.f35829d     // Catch: java.lang.Throwable -> La0
            java.lang.Integer r4 = r4.e()     // Catch: java.lang.Throwable -> La0
            if (r4 != 0) goto L2e
            r8.h()     // Catch: java.lang.Throwable -> La0
            goto L95
        L2e:
            java.lang.String r5 = "Download Status code: "
            java.lang.String r6 = "CustomModelLoader"
            java.lang.String r7 = r4.toString()     // Catch: java.lang.Throwable -> La0
            java.lang.String r5 = r5.concat(r7)     // Catch: java.lang.Throwable -> La0
            r0.c(r6, r5)     // Catch: java.lang.Throwable -> La0
            int r5 = r4.intValue()     // Catch: java.lang.Throwable -> La0
            r6 = 8
            if (r5 != r6) goto L67
            com.google.mlkit.common.sdkinternal.model.f r1 = r8.f35829d     // Catch: java.lang.Throwable -> La0
            java.io.File r1 = r1.u(r2)     // Catch: java.lang.Throwable -> La0
            if (r1 != 0) goto L4e
            goto L95
        L4e:
            java.lang.String r4 = "CustomModelLoader"
            java.lang.String r5 = "Moved the downloaded model to private folder successfully: "
            java.lang.String r6 = r1.getParent()     // Catch: java.lang.Throwable -> La0
            java.lang.String r6 = java.lang.String.valueOf(r6)     // Catch: java.lang.Throwable -> La0
            java.lang.String r5 = r5.concat(r6)     // Catch: java.lang.Throwable -> La0
            r0.c(r4, r5)     // Catch: java.lang.Throwable -> La0
            com.google.mlkit.common.sdkinternal.model.f r0 = r8.f35829d     // Catch: java.lang.Throwable -> La0
            r0.l(r2)     // Catch: java.lang.Throwable -> La0
            goto L96
        L67:
            int r0 = r4.intValue()     // Catch: java.lang.Throwable -> La0
            r2 = 16
            if (r0 != r2) goto L95
            com.google.android.gms.internal.mlkit_common.kb r0 = r8.f35831f     // Catch: java.lang.Throwable -> La0
            com.google.android.gms.internal.mlkit_common.ab r2 = com.google.android.gms.internal.mlkit_common.nb.g()     // Catch: java.lang.Throwable -> La0
            com.google.mlkit.common.model.a r4 = r8.f35828c     // Catch: java.lang.Throwable -> La0
            java.lang.Object r4 = com.google.android.gms.common.internal.u.k(r4)     // Catch: java.lang.Throwable -> La0
            com.google.mlkit.common.model.d r4 = (com.google.mlkit.common.model.d) r4     // Catch: java.lang.Throwable -> La0
            r5 = 0
            com.google.mlkit.common.sdkinternal.model.f r6 = r8.f35829d     // Catch: java.lang.Throwable -> La0
            int r1 = r6.f(r1)     // Catch: java.lang.Throwable -> La0
            r0.e(r2, r4, r5, r1)     // Catch: java.lang.Throwable -> La0
            r8.h()     // Catch: java.lang.Throwable -> La0
            goto L95
        L8b:
            java.lang.String r1 = "CustomModelLoader"
            java.lang.String r2 = "No new model is downloading."
            r0.c(r1, r2)     // Catch: java.lang.Throwable -> La0
            r8.h()     // Catch: java.lang.Throwable -> La0
        L95:
            r1 = r3
        L96:
            if (r1 != 0) goto L9a
            monitor-exit(r8)
            return r3
        L9a:
            com.google.mlkit.common.model.c r0 = i(r1)     // Catch: java.lang.Throwable -> La0
            monitor-exit(r8)
            return r0
        La0:
            r0 = move-exception
            monitor-exit(r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.common.sdkinternal.model.a.b():com.google.mlkit.common.model.c");
    }

    @u2.a
    @VisibleForTesting
    @WorkerThread
    public void c() throws MlKitException {
        File g4 = g();
        if (g4 != null) {
            ((g) u.k(this.f35830e)).e(g4);
            com.google.mlkit.common.sdkinternal.p.g(this.f35826a).c((com.google.mlkit.common.model.d) u.k(this.f35828c));
        }
    }

    @u2.a
    @VisibleForTesting
    @WorkerThread
    public void d(@NonNull com.google.mlkit.common.model.c cVar) throws MlKitException {
        File parentFile = new File((String) u.k(cVar.a())).getParentFile();
        if (((g) u.k(this.f35830e)).f((File) u.k(parentFile))) {
            f35824h.c("CustomModelLoader", "All old models are deleted.");
            this.f35830e.c(parentFile);
            return;
        }
        f35824h.e("CustomModelLoader", "Failed to delete old models");
    }

    @u2.a
    @WorkerThread
    public synchronized void f(@NonNull InterfaceC0279a interfaceC0279a) throws MlKitException {
        com.google.mlkit.common.model.c cVar = this.f35827b;
        if (cVar == null) {
            cVar = b();
        }
        if (cVar == null) {
            cVar = a();
        }
        if (cVar != null) {
            while (!interfaceC0279a.a(cVar)) {
                if (this.f35828c != null) {
                    c();
                    cVar = a();
                    continue;
                } else {
                    cVar = null;
                    continue;
                }
                if (cVar == null) {
                    interfaceC0279a.b();
                    return;
                }
            }
            if (this.f35828c != null && this.f35832g) {
                d((com.google.mlkit.common.model.c) u.k(cVar));
                this.f35832g = false;
            }
            interfaceC0279a.b();
            return;
        }
        throw new MlKitException("Model is not available.", 14);
    }
}
