package com.google.mlkit.common.sdkinternal.model;

import android.app.DownloadManager;
import android.content.IntentFilter;
import android.database.Cursor;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.LongSparseArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.internal.mlkit_common.ab;
import com.google.android.gms.internal.mlkit_common.kb;
import com.google.android.gms.internal.mlkit_common.nb;
import com.google.android.gms.internal.mlkit_common.vb;
import com.google.android.gms.internal.mlkit_common.zzit;
import com.google.android.gms.internal.mlkit_common.zziz;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.ModelType;
import io.sentry.clientreport.e;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class f {

    /* renamed from: m  reason: collision with root package name */
    private static final com.google.android.gms.common.internal.k f35846m = new com.google.android.gms.common.internal.k("ModelDownloadManager", "");
    @GuardedBy("RemoteModelDownloadManager.class")

    /* renamed from: n  reason: collision with root package name */
    private static final Map f35847n = new HashMap();
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private final LongSparseArray f35848a = new LongSparseArray();
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private final LongSparseArray f35849b = new LongSparseArray();

    /* renamed from: c  reason: collision with root package name */
    private final com.google.mlkit.common.sdkinternal.k f35850c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final DownloadManager f35851d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.mlkit.common.model.d f35852e;

    /* renamed from: f  reason: collision with root package name */
    private final ModelType f35853f;

    /* renamed from: g  reason: collision with root package name */
    private final kb f35854g;

    /* renamed from: h  reason: collision with root package name */
    private final com.google.mlkit.common.sdkinternal.p f35855h;

    /* renamed from: i  reason: collision with root package name */
    private final d f35856i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final e f35857j;

    /* renamed from: k  reason: collision with root package name */
    private final g f35858k;

    /* renamed from: l  reason: collision with root package name */
    private com.google.mlkit.common.model.b f35859l;

    @VisibleForTesting
    f(@NonNull com.google.mlkit.common.sdkinternal.k kVar, @NonNull com.google.mlkit.common.model.d dVar, @NonNull d dVar2, @NonNull g gVar, @Nullable e eVar, @NonNull kb kbVar) {
        this.f35850c = kVar;
        this.f35853f = dVar.e();
        this.f35852e = dVar;
        DownloadManager downloadManager = (DownloadManager) kVar.b().getSystemService("download");
        this.f35851d = downloadManager;
        this.f35854g = kbVar;
        if (downloadManager == null) {
            f35846m.c("ModelDownloadManager", "Download manager service is not available in the service.");
        }
        this.f35856i = dVar2;
        this.f35855h = com.google.mlkit.common.sdkinternal.p.g(kVar);
        this.f35857j = eVar;
        this.f35858k = gVar;
    }

    @Nullable
    @WorkerThread
    private final synchronized Long A(@NonNull com.google.mlkit.common.sdkinternal.m mVar, @NonNull com.google.mlkit.common.model.b bVar) throws MlKitException {
        u.l(bVar, "DownloadConditions can not be null");
        String d4 = this.f35855h.d(this.f35852e);
        Integer e4 = e();
        if (d4 != null && d4.equals(mVar.a()) && e4 != null) {
            Integer e10 = e();
            if (e10 == null || (e10.intValue() != 8 && e10.intValue() != 16)) {
                kb kbVar = this.f35854g;
                ab g4 = nb.g();
                com.google.mlkit.common.model.d dVar = this.f35852e;
                kbVar.f(g4, dVar, zzit.NO_ERROR, false, dVar.e(), zziz.DOWNLOADING);
            }
            f35846m.c("ModelDownloadManager", "New model is already in downloading, do nothing.");
            return null;
        }
        com.google.android.gms.common.internal.k kVar = f35846m;
        kVar.c("ModelDownloadManager", "Need to download a new model.");
        j();
        DownloadManager.Request request = new DownloadManager.Request(mVar.d());
        if (this.f35856i.i(mVar.b(), mVar.c())) {
            kVar.c("ModelDownloadManager", "Model update is enabled and have a previous downloaded model, use download condition");
            this.f35854g.f(nb.g(), this.f35852e, zzit.NO_ERROR, false, mVar.c(), zziz.UPDATE_AVAILABLE);
        }
        if (Build.VERSION.SDK_INT >= 24) {
            request.setRequiresCharging(bVar.a());
        }
        if (bVar.b()) {
            request.setAllowedNetworkTypes(2);
        }
        return z(request, mVar);
    }

    @NonNull
    @u2.a
    public static synchronized f g(@NonNull com.google.mlkit.common.sdkinternal.k kVar, @NonNull com.google.mlkit.common.model.d dVar, @NonNull d dVar2, @NonNull g gVar, @Nullable e eVar) {
        f fVar;
        synchronized (f.class) {
            Map map = f35847n;
            if (!map.containsKey(dVar)) {
                map.put(dVar, new f(kVar, dVar, dVar2, gVar, eVar, vb.b("common")));
            }
            fVar = (f) map.get(dVar);
        }
        return fVar;
    }

    private final com.google.android.gms.tasks.k v(long j4) {
        this.f35850c.b().registerReceiver(y(j4), new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"), null, com.google.mlkit.common.sdkinternal.i.b().a());
        return w(j4).a();
    }

    private final synchronized com.google.android.gms.tasks.l w(long j4) {
        com.google.android.gms.tasks.l lVar = (com.google.android.gms.tasks.l) this.f35849b.get(j4);
        if (lVar == null) {
            com.google.android.gms.tasks.l lVar2 = new com.google.android.gms.tasks.l();
            this.f35849b.put(j4, lVar2);
            return lVar2;
        }
        return lVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MlKitException x(@Nullable Long l10) {
        DownloadManager downloadManager = this.f35851d;
        Cursor cursor = null;
        if (downloadManager != null && l10 != null) {
            cursor = downloadManager.query(new DownloadManager.Query().setFilterById(l10.longValue()));
        }
        int i4 = 13;
        String str = "Model downloading failed";
        if (cursor != null && cursor.moveToFirst()) {
            int i10 = cursor.getInt(cursor.getColumnIndex(e.b.f83079a));
            if (i10 == 1006) {
                i4 = 101;
                str = "Model downloading failed due to insufficient space on the device.";
            } else {
                str = "Model downloading failed due to error code: " + i10 + " from Android DownloadManager";
            }
        }
        return new MlKitException(str, i4);
    }

    private final synchronized p y(long j4) {
        p pVar = (p) this.f35848a.get(j4);
        if (pVar == null) {
            p pVar2 = new p(this, j4, w(j4), null);
            this.f35848a.put(j4, pVar2);
            return pVar2;
        }
        return pVar;
    }

    @Nullable
    private final synchronized Long z(@NonNull DownloadManager.Request request, @NonNull com.google.mlkit.common.sdkinternal.m mVar) {
        DownloadManager downloadManager = this.f35851d;
        if (downloadManager == null) {
            return null;
        }
        long enqueue = downloadManager.enqueue(request);
        com.google.android.gms.common.internal.k kVar = f35846m;
        kVar.c("ModelDownloadManager", "Schedule a new downloading task: " + enqueue);
        this.f35855h.m(enqueue, mVar);
        this.f35854g.f(nb.g(), this.f35852e, zzit.NO_ERROR, false, mVar.c(), zziz.SCHEDULED);
        return Long.valueOf(enqueue);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ac, code lost:
        r1 = A(r1, r13.f35859l);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b2, code lost:
        if (r1 == null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00bc, code lost:
        return v(r1.longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00bd, code lost:
        com.google.mlkit.common.sdkinternal.model.f.f35846m.h("ModelDownloadManager", "Didn't schedule download for the updated model");
     */
    @androidx.annotation.NonNull
    @u2.a
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.google.android.gms.tasks.k<java.lang.Void> a() {
        /*
            r13 = this;
            com.google.android.gms.internal.mlkit_common.kb r0 = r13.f35854g
            com.google.android.gms.internal.mlkit_common.ab r1 = com.google.android.gms.internal.mlkit_common.nb.g()
            com.google.mlkit.common.model.d r2 = r13.f35852e
            com.google.android.gms.internal.mlkit_common.zzit r3 = com.google.android.gms.internal.mlkit_common.zzit.NO_ERROR
            com.google.mlkit.common.sdkinternal.ModelType r5 = com.google.mlkit.common.sdkinternal.ModelType.UNKNOWN
            com.google.android.gms.internal.mlkit_common.zziz r6 = com.google.android.gms.internal.mlkit_common.zziz.EXPLICITLY_REQUESTED
            r4 = 0
            r0.f(r1, r2, r3, r4, r5, r6)
            r0 = 0
            com.google.mlkit.common.sdkinternal.m r1 = r13.s()     // Catch: com.google.mlkit.common.MlKitException -> L19
            r2 = r0
            goto L1c
        L19:
            r1 = move-exception
            r2 = r1
            r1 = r0
        L1c:
            r3 = 13
            java.lang.Integer r4 = r13.e()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            java.lang.Long r5 = r13.c()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            boolean r6 = r13.i()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            if (r6 != 0) goto Laa
            if (r4 == 0) goto L38
            int r6 = r4.intValue()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            r7 = 8
            if (r6 != r7) goto L38
            goto Laa
        L38:
            if (r4 == 0) goto L4e
            int r6 = r4.intValue()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            r7 = 16
            if (r6 != r7) goto L4e
            com.google.mlkit.common.MlKitException r0 = r13.x(r5)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            r13.j()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.android.gms.tasks.k r0 = com.google.android.gms.tasks.n.f(r0)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            return r0
        L4e:
            if (r4 == 0) goto L8a
            int r6 = r4.intValue()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            r7 = 4
            if (r6 == r7) goto L65
            int r6 = r4.intValue()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            r7 = 2
            if (r6 == r7) goto L65
            int r4 = r4.intValue()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            r6 = 1
            if (r4 != r6) goto L8a
        L65:
            if (r5 == 0) goto L8a
            java.lang.String r4 = r13.d()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            if (r4 == 0) goto L8a
            com.google.android.gms.internal.mlkit_common.kb r6 = r13.f35854g     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.android.gms.internal.mlkit_common.ab r7 = com.google.android.gms.internal.mlkit_common.nb.g()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.mlkit.common.model.d r8 = r13.f35852e     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.android.gms.internal.mlkit_common.zzit r9 = com.google.android.gms.internal.mlkit_common.zzit.NO_ERROR     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            r10 = 0
            com.google.mlkit.common.sdkinternal.ModelType r11 = r8.e()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.android.gms.internal.mlkit_common.zziz r12 = com.google.android.gms.internal.mlkit_common.zziz.DOWNLOADING     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            r6.f(r7, r8, r9, r10, r11, r12)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            long r0 = r5.longValue()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.android.gms.tasks.k r0 = r13.v(r0)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            return r0
        L8a:
            if (r1 != 0) goto L8d
            goto L93
        L8d:
            com.google.mlkit.common.model.b r0 = r13.f35859l     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            java.lang.Long r0 = r13.A(r1, r0)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
        L93:
            if (r0 != 0) goto La1
            com.google.mlkit.common.MlKitException r0 = new com.google.mlkit.common.MlKitException     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            java.lang.String r1 = "Failed to schedule the download task"
            r0.<init>(r1, r3, r2)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.android.gms.tasks.k r0 = com.google.android.gms.tasks.n.f(r0)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            return r0
        La1:
            long r0 = r0.longValue()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.android.gms.tasks.k r0 = r13.v(r0)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            return r0
        Laa:
            if (r1 == 0) goto Lc6
            com.google.mlkit.common.model.b r2 = r13.f35859l     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            java.lang.Long r1 = r13.A(r1, r2)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            if (r1 == 0) goto Lbd
            long r0 = r1.longValue()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.android.gms.tasks.k r0 = r13.v(r0)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            return r0
        Lbd:
            com.google.android.gms.common.internal.k r1 = com.google.mlkit.common.sdkinternal.model.f.f35846m     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            java.lang.String r2 = "ModelDownloadManager"
            java.lang.String r4 = "Didn't schedule download for the updated model"
            r1.h(r2, r4)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
        Lc6:
            com.google.android.gms.tasks.k r0 = com.google.android.gms.tasks.n.g(r0)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            return r0
        Lcb:
            r0 = move-exception
            com.google.mlkit.common.MlKitException r1 = new com.google.mlkit.common.MlKitException
            java.lang.String r2 = "Failed to ensure the model is downloaded."
            r1.<init>(r2, r3, r0)
            com.google.android.gms.tasks.k r0 = com.google.android.gms.tasks.n.f(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.common.sdkinternal.model.f.a():com.google.android.gms.tasks.k");
    }

    @Nullable
    @u2.a
    public synchronized ParcelFileDescriptor b() {
        Long c10 = c();
        DownloadManager downloadManager = this.f35851d;
        ParcelFileDescriptor parcelFileDescriptor = null;
        if (downloadManager == null || c10 == null) {
            return null;
        }
        try {
            parcelFileDescriptor = downloadManager.openDownloadedFile(c10.longValue());
        } catch (FileNotFoundException unused) {
            f35846m.e("ModelDownloadManager", "Downloaded file is not found");
        }
        return parcelFileDescriptor;
    }

    @Nullable
    @u2.a
    public synchronized Long c() {
        return this.f35855h.e(this.f35852e);
    }

    @Nullable
    @u2.a
    public synchronized String d() {
        return this.f35855h.d(this.f35852e);
    }

    @Nullable
    @u2.a
    public synchronized Integer e() {
        Long c10 = c();
        DownloadManager downloadManager = this.f35851d;
        Integer num = null;
        if (downloadManager != null && c10 != null) {
            Cursor query = downloadManager.query(new DownloadManager.Query().setFilterById(c10.longValue()));
            Integer valueOf = (query == null || !query.moveToFirst()) ? null : Integer.valueOf(query.getInt(query.getColumnIndex("status")));
            if (valueOf == null) {
                if (query != null) {
                    query.close();
                }
                return null;
            }
            if (valueOf.intValue() == 2 || valueOf.intValue() == 4 || valueOf.intValue() == 1 || valueOf.intValue() == 8 || valueOf.intValue() == 16) {
                num = valueOf;
            }
            query.close();
            return num;
        }
        return null;
    }

    @u2.a
    public int f(@NonNull Long l10) {
        int columnIndex;
        DownloadManager downloadManager = this.f35851d;
        Cursor cursor = null;
        if (downloadManager != null && l10 != null) {
            cursor = downloadManager.query(new DownloadManager.Query().setFilterById(l10.longValue()));
        }
        if (cursor == null || !cursor.moveToFirst() || (columnIndex = cursor.getColumnIndex(e.b.f83079a)) == -1) {
            return 0;
        }
        return cursor.getInt(columnIndex);
    }

    @u2.a
    @WorkerThread
    public boolean h() throws MlKitException {
        try {
            if (i()) {
                return true;
            }
        } catch (MlKitException unused) {
            f35846m.c("ModelDownloadManager", "Failed to check if the model exist locally.");
        }
        Long c10 = c();
        String d4 = d();
        if (c10 != null && d4 != null) {
            Integer e4 = e();
            f35846m.c("ModelDownloadManager", "Download Status code: ".concat(String.valueOf(e4)));
            if (e4 != null) {
                return s.b(e4, 8) && u(d4) != null;
            }
            j();
            return false;
        }
        f35846m.c("ModelDownloadManager", "No new model is downloading.");
        j();
        return false;
    }

    @u2.a
    public boolean i() throws MlKitException {
        return this.f35856i.i(this.f35852e.f(), this.f35853f);
    }

    @u2.a
    public synchronized void j() throws MlKitException {
        Long c10 = c();
        if (this.f35851d != null && c10 != null) {
            f35846m.c("ModelDownloadManager", "Cancel or remove existing downloading task: ".concat(c10.toString()));
            if (this.f35851d.remove(c10.longValue()) > 0 || e() == null) {
                this.f35856i.c(this.f35852e.f(), this.f35852e.e());
                this.f35855h.a(this.f35852e);
            }
        }
    }

    @u2.a
    public void k(@NonNull com.google.mlkit.common.model.b bVar) {
        u.l(bVar, "DownloadConditions can not be null");
        this.f35859l = bVar;
    }

    @u2.a
    public synchronized void l(@NonNull String str) throws MlKitException {
        this.f35855h.o(this.f35852e, str);
        j();
    }

    @Nullable
    @WorkerThread
    final synchronized com.google.mlkit.common.sdkinternal.m s() throws MlKitException {
        boolean z9;
        boolean i4 = i();
        if (i4) {
            kb kbVar = this.f35854g;
            ab g4 = nb.g();
            com.google.mlkit.common.model.d dVar = this.f35852e;
            kbVar.f(g4, dVar, zzit.NO_ERROR, false, dVar.e(), zziz.LIVE);
        }
        e eVar = this.f35857j;
        if (eVar != null) {
            com.google.mlkit.common.sdkinternal.m a10 = eVar.a(this.f35852e);
            if (a10 == null) {
                return null;
            }
            com.google.mlkit.common.sdkinternal.k kVar = this.f35850c;
            com.google.mlkit.common.model.d dVar2 = this.f35852e;
            String a11 = a10.a();
            com.google.mlkit.common.sdkinternal.p g10 = com.google.mlkit.common.sdkinternal.p.g(kVar);
            boolean equals = a11.equals(g10.f(dVar2));
            boolean z10 = false;
            if (equals && com.google.mlkit.common.sdkinternal.d.a(kVar.b()).equals(g10.l())) {
                f35846m.e("ModelDownloadManager", "The model is incompatible with TFLite and the app is not upgraded, do not download");
                z9 = false;
            } else {
                z9 = true;
            }
            if (!i4) {
                this.f35855h.c(this.f35852e);
            }
            boolean z11 = !a10.a().equals(com.google.mlkit.common.sdkinternal.p.g(this.f35850c).h(this.f35852e));
            if (!z9) {
                z10 = z11;
            } else if (!i4 || z11) {
                return a10;
            }
            if (i4 && (z10 ^ z9)) {
                return null;
            }
            throw new MlKitException("The model " + this.f35852e.c() + " is incompatible with TFLite runtime", 100);
        }
        throw new MlKitException("Please include com.google.mlkit:linkfirebase sdk as your dependency when you try to download from Firebase.", 14);
    }

    @Nullable
    public final File u(@NonNull String str) throws MlKitException {
        com.google.android.gms.common.internal.k kVar = f35846m;
        kVar.c("ModelDownloadManager", "Model downloaded successfully");
        this.f35854g.f(nb.g(), this.f35852e, zzit.NO_ERROR, true, this.f35853f, zziz.SUCCEEDED);
        ParcelFileDescriptor b10 = b();
        if (b10 == null) {
            j();
            return null;
        }
        kVar.c("ModelDownloadManager", "moving downloaded model from external storage to private folder.");
        try {
            return this.f35858k.b(b10, str, this.f35852e);
        } finally {
            j();
        }
    }
}
