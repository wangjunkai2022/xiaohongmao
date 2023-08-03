package com.google.mlkit.common.sdkinternal.model;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.ModelType;
import java.io.File;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class g {

    /* renamed from: h  reason: collision with root package name */
    private static final com.google.android.gms.common.internal.k f35860h = new com.google.android.gms.common.internal.k("RemoteModelFileManager", "");

    /* renamed from: a  reason: collision with root package name */
    private final com.google.mlkit.common.sdkinternal.k f35861a;

    /* renamed from: b  reason: collision with root package name */
    private final String f35862b;

    /* renamed from: c  reason: collision with root package name */
    private final ModelType f35863c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final ModelValidator f35864d;

    /* renamed from: e  reason: collision with root package name */
    private final h f35865e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.mlkit.common.sdkinternal.p f35866f;

    /* renamed from: g  reason: collision with root package name */
    private final d f35867g;

    @SuppressLint({"FirebaseLambdaLast"})
    public g(@NonNull com.google.mlkit.common.sdkinternal.k kVar, @NonNull com.google.mlkit.common.model.d dVar, @Nullable ModelValidator modelValidator, @NonNull d dVar2, @NonNull h hVar) {
        String f10;
        this.f35861a = kVar;
        ModelType e4 = dVar.e();
        this.f35863c = e4;
        if (e4 == ModelType.TRANSLATE) {
            f10 = dVar.d();
        } else {
            f10 = dVar.f();
        }
        this.f35862b = f10;
        this.f35864d = modelValidator;
        this.f35866f = com.google.mlkit.common.sdkinternal.p.g(kVar);
        this.f35867g = dVar2;
        this.f35865e = hVar;
    }

    @NonNull
    @u2.a
    public File a(boolean z9) {
        return this.f35867g.f(this.f35862b, this.f35863c, z9);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x009c, code lost:
        com.google.mlkit.common.sdkinternal.model.g.f35860h.c("RemoteModelFileManager", "Hash does not match with expected: ".concat(java.lang.String.valueOf(r11)));
        com.google.android.gms.internal.mlkit_common.vb.b("common").f(com.google.android.gms.internal.mlkit_common.nb.g(), r12, com.google.android.gms.internal.mlkit_common.zzit.MODEL_HASH_MISMATCH, true, r9.f35863c, com.google.android.gms.internal.mlkit_common.zziz.SUCCEEDED);
        r10 = new com.google.mlkit.common.MlKitException("Hash does not match with expected", 102);
     */
    @androidx.annotation.Nullable
    @u2.a
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized java.io.File b(@androidx.annotation.NonNull android.os.ParcelFileDescriptor r10, @androidx.annotation.NonNull java.lang.String r11, @androidx.annotation.NonNull com.google.mlkit.common.model.d r12) throws com.google.mlkit.common.MlKitException {
        /*
            Method dump skipped, instructions count: 284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.common.sdkinternal.model.g.b(android.os.ParcelFileDescriptor, java.lang.String, com.google.mlkit.common.model.d):java.io.File");
    }

    @NonNull
    @WorkerThread
    public final synchronized File c(@NonNull File file) throws MlKitException {
        File file2 = new File(String.valueOf(this.f35867g.e(this.f35862b, this.f35863c).getAbsolutePath()).concat("/0"));
        if (file2.exists()) {
            return file;
        }
        return file.renameTo(file2) ? file2 : file;
    }

    @Nullable
    @WorkerThread
    public final synchronized String d() throws MlKitException {
        return this.f35867g.k(this.f35862b, this.f35863c);
    }

    @WorkerThread
    public final synchronized void e(@NonNull File file) {
        File a10 = a(false);
        if (a10.exists()) {
            File[] listFiles = a10.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file2 : listFiles) {
                if (file2.equals(file)) {
                    this.f35867g.b(file);
                    return;
                }
            }
        }
    }

    @WorkerThread
    public final synchronized boolean f(@NonNull File file) throws MlKitException {
        File e4 = this.f35867g.e(this.f35862b, this.f35863c);
        if (e4.exists()) {
            File[] listFiles = e4.listFiles();
            boolean z9 = true;
            if (listFiles == null) {
                return true;
            }
            for (File file2 : listFiles) {
                if (!file2.equals(file) && !this.f35867g.b(file2)) {
                    z9 = false;
                }
            }
            return z9;
        }
        return false;
    }
}
