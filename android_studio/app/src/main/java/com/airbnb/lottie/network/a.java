package com.airbnb.lottie.network;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.core.util.Pair;
import com.airbnb.lottie.utils.d;
import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.l;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: NetworkCache.java */
/* loaded from: classes.dex */
class a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4607a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4608b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, String str) {
        this.f4607a = context.getApplicationContext();
        this.f4608b = str;
    }

    private static String b(String str, FileExtension fileExtension, boolean z9) {
        StringBuilder sb = new StringBuilder();
        sb.append("lottie_cache_");
        sb.append(str.replaceAll("\\W+", ""));
        sb.append(z9 ? fileExtension.tempExtension() : fileExtension.extension);
        return sb.toString();
    }

    @Nullable
    private File c(String str) throws FileNotFoundException {
        File file = new File(this.f4607a.getCacheDir(), b(str, FileExtension.JSON, false));
        if (file.exists()) {
            return file;
        }
        File file2 = new File(this.f4607a.getCacheDir(), b(str, FileExtension.ZIP, false));
        if (file2.exists()) {
            return file2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @WorkerThread
    public Pair<FileExtension, InputStream> a() {
        FileExtension fileExtension;
        try {
            File c10 = c(this.f4608b);
            if (c10 == null) {
                return null;
            }
            FileInputStream a10 = h.b.a(new FileInputStream(c10), c10);
            if (c10.getAbsolutePath().endsWith(".zip")) {
                fileExtension = FileExtension.ZIP;
            } else {
                fileExtension = FileExtension.JSON;
            }
            d.a("Cache hit for " + this.f4608b + " at " + c10.getAbsolutePath());
            return new Pair<>(fileExtension, a10);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(FileExtension fileExtension) {
        File file = new File(this.f4607a.getCacheDir(), b(this.f4608b, fileExtension, true));
        File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
        boolean renameTo = file.renameTo(file2);
        d.a("Copying temp file to real file (" + file2 + ")");
        if (renameTo) {
            return;
        }
        d.d("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + ".");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public File e(InputStream inputStream, FileExtension fileExtension) throws IOException {
        File file = new File(this.f4607a.getCacheDir(), b(this.f4608b, fileExtension, true));
        try {
            FileOutputStream a10 = l.b.a(new FileOutputStream(file), file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    a10.write(bArr, 0, read);
                } else {
                    a10.flush();
                    a10.close();
                    return file;
                }
            }
        } finally {
            inputStream.close();
        }
    }
}
