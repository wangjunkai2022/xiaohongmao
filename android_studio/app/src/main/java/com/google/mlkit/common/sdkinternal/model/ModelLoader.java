package com.google.mlkit.common.sdkinternal.model;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.u;
import com.google.mlkit.common.MlKitException;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
@WorkerThread
/* loaded from: classes2.dex */
public class ModelLoader {

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.android.gms.common.internal.k f35814e = new com.google.android.gms.common.internal.k("ModelLoader", "");
    @Nullable
    @u2.a
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    public final i f35815a;
    @Nullable
    @u2.a

    /* renamed from: b  reason: collision with root package name */
    public final c f35816b;
    @NonNull
    @u2.a

    /* renamed from: c  reason: collision with root package name */
    protected ModelLoadingState f35817c = ModelLoadingState.NO_MODEL_LOADED;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final b f35818d;

    /* compiled from: com.google.mlkit:common@@18.4.0 */
    @u2.a
    /* loaded from: classes2.dex */
    protected enum ModelLoadingState {
        NO_MODEL_LOADED,
        REMOTE_MODEL_LOADED,
        LOCAL_MODEL_LOADED
    }

    /* compiled from: com.google.mlkit:common@@18.4.0 */
    @u2.a
    /* loaded from: classes2.dex */
    public interface a {
        @u2.a
        void a(@NonNull MappedByteBuffer mappedByteBuffer) throws MlKitException;
    }

    /* compiled from: com.google.mlkit:common@@18.4.0 */
    @u2.a
    /* loaded from: classes2.dex */
    public interface b {
        @u2.a
        void a(@NonNull List<Integer> list);
    }

    @u2.a
    public ModelLoader(@Nullable i iVar, @Nullable c cVar, @NonNull b bVar) {
        boolean z9 = true;
        if (iVar == null && cVar == null) {
            z9 = false;
        }
        u.b(z9, "At least one of RemoteModelLoader or LocalModelLoader must be non-null.");
        u.k(bVar);
        this.f35815a = iVar;
        this.f35816b = cVar;
        this.f35818d = bVar;
    }

    private final String c() {
        c cVar = this.f35816b;
        String str = null;
        if (cVar != null) {
            if (cVar.a().b() != null) {
                str = this.f35816b.a().b();
            } else if (this.f35816b.a().a() != null) {
                str = this.f35816b.a().a();
            } else if (this.f35816b.a().c() != null) {
                str = ((Uri) u.k(this.f35816b.a().c())).toString();
            }
        }
        i iVar = this.f35815a;
        return String.format("Local model path: %s. Remote model name: %s. ", str, iVar == null ? "unspecified" : iVar.b().f());
    }

    private final synchronized boolean d(a aVar, List list) throws MlKitException {
        MappedByteBuffer b10;
        c cVar = this.f35816b;
        if (cVar == null || (b10 = cVar.b()) == null) {
            return false;
        }
        try {
            aVar.a(b10);
            f35814e.c("ModelLoader", "Local model source is loaded successfully");
            return true;
        } catch (RuntimeException e4) {
            list.add(18);
            throw e4;
        }
    }

    private final synchronized boolean e(a aVar, List list) throws MlKitException {
        i iVar = this.f35815a;
        if (iVar != null) {
            try {
                MappedByteBuffer c10 = iVar.c();
                if (c10 != null) {
                    try {
                        aVar.a(c10);
                        f35814e.c("ModelLoader", "Remote model source is loaded successfully");
                        return true;
                    } catch (RuntimeException e4) {
                        list.add(19);
                        throw e4;
                    }
                }
                f35814e.c("ModelLoader", "Remote model source can NOT be loaded, try local model.");
                list.add(21);
            } catch (MlKitException e10) {
                f35814e.c("ModelLoader", "Remote model source can NOT be loaded, try local model.");
                list.add(20);
                throw e10;
            }
        }
        return false;
    }

    @u2.a
    public synchronized boolean a() {
        return this.f35817c == ModelLoadingState.REMOTE_MODEL_LOADED;
    }

    @u2.a
    public synchronized void b(@NonNull a aVar) throws MlKitException {
        Exception exc;
        boolean z9;
        ArrayList arrayList = new ArrayList();
        Exception e4 = null;
        boolean z10 = false;
        try {
            z9 = e(aVar, arrayList);
            exc = null;
        } catch (Exception e10) {
            exc = e10;
            z9 = false;
        }
        if (z9) {
            this.f35818d.a(arrayList);
            this.f35817c = ModelLoadingState.REMOTE_MODEL_LOADED;
            return;
        }
        try {
            z10 = d(aVar, arrayList);
        } catch (Exception e11) {
            e4 = e11;
        }
        if (z10) {
            this.f35818d.a(arrayList);
            this.f35817c = ModelLoadingState.LOCAL_MODEL_LOADED;
            return;
        }
        arrayList.add(17);
        this.f35818d.a(arrayList);
        this.f35817c = ModelLoadingState.NO_MODEL_LOADED;
        if (exc != null) {
            throw new MlKitException("Remote model load failed with the model options: ".concat(String.valueOf(c())), 14, exc);
        }
        if (e4 != null) {
            throw new MlKitException("Local model load failed with the model options: ".concat(String.valueOf(c())), 14, e4);
        }
        throw new MlKitException("Cannot load any model with the model options: ".concat(String.valueOf(c())), 14);
    }
}
