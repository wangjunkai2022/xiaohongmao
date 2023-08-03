package com.google.mlkit.common.sdkinternal.model;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.util.concurrent.Executor;
import y2.d0;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public abstract class b {
    @NonNull
    @u2.a

    /* renamed from: a  reason: collision with root package name */
    protected final d f35833a;

    /* renamed from: c  reason: collision with root package name */
    private final Context f35835c;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.gms.tasks.l f35834b = new com.google.android.gms.tasks.l();

    /* renamed from: d  reason: collision with root package name */
    private final Executor f35836d = com.google.mlkit.common.sdkinternal.i.g();

    @u2.a
    protected b(@NonNull Context context, @NonNull d dVar) {
        this.f35835c = context;
        this.f35833a = dVar;
    }

    @u2.a
    protected static void a(@NonNull File file) {
        File[] listFiles = file.listFiles();
        if ((listFiles == null || listFiles.length == 0) && !file.delete()) {
            Log.e("MlKitLegacyMigration", "Error deleting model directory ".concat(String.valueOf(file)));
        }
    }

    @u2.a
    protected static boolean e(@NonNull String str) {
        String[] split = str.split("\\+", -1);
        if (split.length != 2) {
            return false;
        }
        try {
            y2.c.c(split[0]);
            y2.c.c(split[1]);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    @u2.a
    @d0
    public static void g(@NonNull File file, @NonNull File file2) {
        if (file.exists()) {
            if (!file2.exists() && !file.renameTo(file2)) {
                String valueOf = String.valueOf(file);
                String valueOf2 = String.valueOf(file2);
                Log.e("MlKitLegacyMigration", "Error moving model file " + valueOf + " to " + valueOf2);
            }
            if (!file.exists() || file.delete()) {
                return;
            }
            Log.e("MlKitLegacyMigration", "Error deleting model file ".concat(String.valueOf(file)));
        }
    }

    @NonNull
    @u2.a
    @d0
    protected abstract String b();

    @NonNull
    @u2.a
    @d0
    public File c() {
        return new File(this.f35835c.getNoBackupFilesDir(), b());
    }

    @NonNull
    @u2.a
    public com.google.android.gms.tasks.k<Void> d() {
        return this.f35834b.a();
    }

    @u2.a
    protected abstract void f(@NonNull File file);

    @u2.a
    public void h() {
        this.f35836d.execute(new Runnable() { // from class: com.google.mlkit.common.sdkinternal.model.m
            @Override // java.lang.Runnable
            public final void run() {
                b.this.i();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void i() {
        File c10 = c();
        File[] listFiles = c10.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                f(file);
            }
            a(c10);
        }
        this.f35834b.c(null);
    }
}
