package com.google.mlkit.common.sdkinternal.model;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.mlkit_common.kb;
import com.google.android.gms.internal.mlkit_common.vb;
import com.google.mlkit.common.MlKitException;
import java.io.File;
import java.nio.MappedByteBuffer;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class i {

    /* renamed from: h  reason: collision with root package name */
    private static final com.google.android.gms.common.internal.k f35868h = new com.google.android.gms.common.internal.k("RemoteModelLoader", "");
    @GuardedBy("RemoteModelLoader.class")

    /* renamed from: i  reason: collision with root package name */
    private static final Map f35869i = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private final com.google.mlkit.common.sdkinternal.k f35870a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.mlkit.common.model.d f35871b;

    /* renamed from: c  reason: collision with root package name */
    private final f f35872c;

    /* renamed from: d  reason: collision with root package name */
    private final g f35873d;

    /* renamed from: e  reason: collision with root package name */
    private final j f35874e;

    /* renamed from: f  reason: collision with root package name */
    private final kb f35875f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f35876g;

    private i(@NonNull com.google.mlkit.common.sdkinternal.k kVar, @NonNull com.google.mlkit.common.model.d dVar, @NonNull ModelValidator modelValidator, @NonNull j jVar, @NonNull h hVar) {
        g gVar = new g(kVar, dVar, modelValidator, new d(kVar), hVar);
        this.f35873d = gVar;
        this.f35876g = true;
        this.f35872c = f.g(kVar, dVar, new d(kVar), gVar, (e) kVar.a(e.class));
        this.f35874e = jVar;
        this.f35870a = kVar;
        this.f35871b = dVar;
        this.f35875f = vb.b("common");
    }

    @NonNull
    @u2.a
    public static synchronized i a(@NonNull com.google.mlkit.common.sdkinternal.k kVar, @NonNull com.google.mlkit.common.model.d dVar, @NonNull ModelValidator modelValidator, @NonNull j jVar, @NonNull h hVar) {
        i iVar;
        synchronized (i.class) {
            String f10 = dVar.f();
            Map map = f35869i;
            if (!map.containsKey(f10)) {
                map.put(f10, new i(kVar, dVar, modelValidator, jVar, hVar));
            }
            iVar = (i) map.get(f10);
        }
        return iVar;
    }

    @NonNull
    @WorkerThread
    private final MappedByteBuffer d(@NonNull String str) throws MlKitException {
        return this.f35874e.a(str);
    }

    private final MappedByteBuffer e(File file) throws MlKitException {
        try {
            return d(file.getAbsolutePath());
        } catch (Exception e4) {
            this.f35873d.e(file);
            throw new MlKitException("Failed to load newly downloaded model.", 14, e4);
        }
    }

    @NonNull
    @u2.a
    public com.google.mlkit.common.model.d b() {
        return this.f35871b;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b5 A[Catch: all -> 0x00f6, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0020, B:9:0x0028, B:26:0x00b5, B:28:0x00c4, B:30:0x00cc, B:33:0x00d2, B:34:0x00f0, B:35:0x00f1, B:10:0x002f, B:12:0x0046, B:15:0x004f, B:17:0x006d, B:19:0x0075, B:20:0x0087, B:22:0x008f, B:23:0x00a6), top: B:42:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f1 A[Catch: all -> 0x00f6, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0020, B:9:0x0028, B:26:0x00b5, B:28:0x00c4, B:30:0x00cc, B:33:0x00d2, B:34:0x00f0, B:35:0x00f1, B:10:0x002f, B:12:0x0046, B:15:0x004f, B:17:0x006d, B:19:0x0075, B:20:0x0087, B:22:0x008f, B:23:0x00a6), top: B:42:0x0001, inners: #1 }] */
    @androidx.annotation.Nullable
    @u2.a
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized java.nio.MappedByteBuffer c() throws com.google.mlkit.common.MlKitException {
        /*
            Method dump skipped, instructions count: 249
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.common.sdkinternal.model.i.c():java.nio.MappedByteBuffer");
    }
}
