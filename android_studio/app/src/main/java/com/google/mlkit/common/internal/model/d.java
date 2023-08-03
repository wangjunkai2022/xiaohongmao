package com.google.mlkit.common.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.u;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.ModelType;
import java.io.File;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class d implements com.google.mlkit.common.sdkinternal.model.h {

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.android.gms.common.internal.k f35730c = new com.google.android.gms.common.internal.k("CustomModelFileMover", "");

    /* renamed from: a  reason: collision with root package name */
    private final String f35731a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.mlkit.common.sdkinternal.model.d f35732b;

    public d(@NonNull com.google.mlkit.common.sdkinternal.k kVar, @NonNull String str) {
        this.f35731a = str;
        this.f35732b = new com.google.mlkit.common.sdkinternal.model.d(kVar);
    }

    private static boolean c(File file, File file2) {
        String absolutePath = file.getAbsolutePath();
        String absolutePath2 = file2.getAbsolutePath();
        if (file.renameTo(file2)) {
            f35730c.c("CustomModelFileMover", String.format("Moved file from %s to %s successfully", absolutePath, absolutePath2));
            file2.setExecutable(false);
            file2.setWritable(false);
            return true;
        }
        com.google.android.gms.common.internal.k kVar = f35730c;
        kVar.c("CustomModelFileMover", String.format("Move file to %s failed, remove the temp file %s.", absolutePath2, absolutePath));
        if (!file.delete()) {
            kVar.c("CustomModelFileMover", "Failed to delete the temp file: ".concat(String.valueOf(absolutePath)));
        }
        return false;
    }

    @Override // com.google.mlkit.common.sdkinternal.model.h
    @Nullable
    public final File a(File file) throws MlKitException {
        File file2;
        com.google.mlkit.common.sdkinternal.model.d dVar = this.f35732b;
        String str = this.f35731a;
        ModelType modelType = ModelType.CUSTOM;
        File e4 = dVar.e(str, modelType);
        File file3 = new File(new File(e4, String.valueOf(this.f35732b.d(e4) + 1)), com.google.mlkit.common.sdkinternal.e.f35784a);
        File parentFile = file3.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            ((File) u.k(parentFile)).mkdirs();
        }
        File file4 = null;
        if (c(file, file3)) {
            File h4 = this.f35732b.h(this.f35731a, modelType, com.google.mlkit.common.sdkinternal.e.f35785b);
            if (h4.exists()) {
                file2 = new File(parentFile, com.google.mlkit.common.sdkinternal.e.f35785b);
                if (!c(h4, file2)) {
                    return null;
                }
            } else {
                file2 = null;
            }
            File h10 = this.f35732b.h(this.f35731a, modelType, com.google.mlkit.common.sdkinternal.e.f35786c);
            if (h10.exists()) {
                File file5 = new File(parentFile, com.google.mlkit.common.sdkinternal.e.f35786c);
                if (!c(h10, file5)) {
                    return null;
                }
                file4 = file5;
            }
            return (file2 == null && file4 == null) ? file3 : parentFile;
        }
        return null;
    }

    @Override // com.google.mlkit.common.sdkinternal.model.h
    public final File b() throws MlKitException {
        File e4 = this.f35732b.e(this.f35731a, ModelType.CUSTOM);
        return new File(new File(e4, String.valueOf(this.f35732b.d(e4) + 1)), com.google.mlkit.common.sdkinternal.e.f35784a);
    }
}
