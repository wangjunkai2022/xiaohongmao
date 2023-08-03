package com.google.mlkit.common.sdkinternal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.ModelType;
import java.io.File;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class d {
    @u2.a

    /* renamed from: b  reason: collision with root package name */
    public static final int f35840b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.android.gms.common.internal.k f35841c = new com.google.android.gms.common.internal.k("ModelFileHelper", "");
    @NonNull
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    public static final String f35842d = String.format("com.google.mlkit.%s.models", "translate");
    @NonNull
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    public static final String f35843e = String.format("com.google.mlkit.%s.models", "custom");
    @VisibleForTesting

    /* renamed from: f  reason: collision with root package name */
    static final String f35844f = String.format("com.google.mlkit.%s.models", com.google.android.exoplayer2.text.ttml.d.X);

    /* renamed from: a  reason: collision with root package name */
    private final com.google.mlkit.common.sdkinternal.k f35845a;

    public d(@NonNull com.google.mlkit.common.sdkinternal.k kVar) {
        this.f35845a = kVar;
    }

    @WorkerThread
    private final File l(@NonNull String str, @NonNull ModelType modelType, boolean z9) throws MlKitException {
        File f10 = f(str, modelType, z9);
        if (!f10.exists()) {
            f35841c.c("ModelFileHelper", "model folder does not exist, creating one: ".concat(String.valueOf(f10.getAbsolutePath())));
            if (!f10.mkdirs()) {
                throw new MlKitException("Failed to create model folder: ".concat(String.valueOf(f10)), 13);
            }
        } else if (!f10.isDirectory()) {
            throw new MlKitException("Can not create model folder, since an existing file has the same name: ".concat(String.valueOf(f10)), 6);
        }
        return f10;
    }

    @u2.a
    @WorkerThread
    public synchronized void a(@NonNull ModelType modelType, @NonNull String str) {
        b(f(str, modelType, false));
        b(f(str, modelType, true));
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002a, code lost:
        if (r5 != false) goto L21;
     */
    @u2.a
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean b(@androidx.annotation.Nullable java.io.File r8) {
        /*
            r7 = this;
            r0 = 0
            if (r8 != 0) goto L4
            return r0
        L4:
            boolean r1 = r8.isDirectory()
            r2 = 1
            if (r1 == 0) goto L2c
            java.io.File[] r1 = r8.listFiles()
            java.lang.Object r1 = com.google.android.gms.common.internal.u.k(r1)
            java.io.File[] r1 = (java.io.File[]) r1
            int r3 = r1.length
            r4 = 0
            r5 = 1
        L18:
            if (r4 >= r3) goto L2a
            r6 = r1[r4]
            if (r5 == 0) goto L26
            boolean r5 = r7.b(r6)
            if (r5 == 0) goto L26
            r5 = 1
            goto L27
        L26:
            r5 = 0
        L27:
            int r4 = r4 + 1
            goto L18
        L2a:
            if (r5 == 0) goto L33
        L2c:
            boolean r8 = r8.delete()
            if (r8 == 0) goto L33
            return r2
        L33:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.common.sdkinternal.model.d.b(java.io.File):boolean");
    }

    @u2.a
    @WorkerThread
    public void c(@NonNull String str, @NonNull ModelType modelType) throws MlKitException {
        File l10 = l(str, modelType, true);
        if (b(l10)) {
            return;
        }
        f35841c.e("ModelFileHelper", "Failed to delete the temp labels file directory: ".concat(String.valueOf(l10 != null ? l10.getAbsolutePath() : null)));
    }

    @u2.a
    @WorkerThread
    public int d(@NonNull File file) {
        File[] listFiles = file.listFiles();
        int i4 = -1;
        if (listFiles != null && (r1 = listFiles.length) != 0) {
            for (File file2 : listFiles) {
                try {
                    i4 = Math.max(i4, Integer.parseInt(file2.getName()));
                } catch (NumberFormatException unused) {
                    f35841c.c("ModelFileHelper", "Contains non-integer file name ".concat(String.valueOf(file2.getName())));
                }
            }
        }
        return i4;
    }

    @NonNull
    @u2.a
    @WorkerThread
    public File e(@NonNull String str, @NonNull ModelType modelType) throws MlKitException {
        return l(str, modelType, false);
    }

    @NonNull
    @u2.a
    @WorkerThread
    public File f(@NonNull String str, @NonNull ModelType modelType, boolean z9) {
        String str2;
        ModelType modelType2 = ModelType.UNKNOWN;
        int ordinal = modelType.ordinal();
        if (ordinal == 1) {
            str2 = f35844f;
        } else if (ordinal == 2) {
            str2 = f35842d;
        } else if (ordinal == 4) {
            str2 = f35843e;
        } else {
            String name = modelType.name();
            throw new IllegalArgumentException("Unknown model type " + name + ". Cannot find a dir to store the downloaded model.");
        }
        File file = new File(this.f35845a.b().getNoBackupFilesDir(), str2);
        if (z9) {
            file = new File(file, "temp");
        }
        return new File(file, str);
    }

    @NonNull
    @u2.a
    @WorkerThread
    public File g(@NonNull String str, @NonNull ModelType modelType) throws MlKitException {
        return l(str, modelType, true);
    }

    @NonNull
    @u2.a
    @WorkerThread
    public File h(@NonNull String str, @NonNull ModelType modelType, @NonNull String str2) throws MlKitException {
        File l10 = l(str, modelType, true);
        if (l10.exists() && l10.isFile() && !l10.delete()) {
            throw new MlKitException("Failed to delete the temp labels file: ".concat(String.valueOf(l10.getAbsolutePath())), 13);
        }
        if (!l10.exists()) {
            f35841c.c("ModelFileHelper", "Temp labels folder does not exist, creating one: ".concat(String.valueOf(l10.getAbsolutePath())));
            if (!l10.mkdirs()) {
                throw new MlKitException("Failed to create a directory to hold the AutoML model's labels file.", 13);
            }
        }
        return new File(l10, str2);
    }

    @u2.a
    @WorkerThread
    public boolean i(@NonNull String str, @NonNull ModelType modelType) throws MlKitException {
        String k10;
        if (modelType == ModelType.UNKNOWN || (k10 = k(str, modelType)) == null) {
            return false;
        }
        File file = new File(k10);
        if (file.exists()) {
            File file2 = new File(file, com.google.mlkit.common.sdkinternal.e.f35784a);
            f35841c.h("ModelFileHelper", "Model file path: ".concat(String.valueOf(file2.getAbsolutePath())));
            return file2.exists();
        }
        return false;
    }

    @NonNull
    @WorkerThread
    public final File j(@NonNull String str, @NonNull ModelType modelType) throws MlKitException {
        return l(str, modelType, true);
    }

    @Nullable
    @WorkerThread
    public final String k(@NonNull String str, @NonNull ModelType modelType) throws MlKitException {
        File e4 = e(str, modelType);
        int d4 = d(e4);
        if (d4 == -1) {
            return null;
        }
        String absolutePath = e4.getAbsolutePath();
        return absolutePath + "/" + d4;
    }
}
