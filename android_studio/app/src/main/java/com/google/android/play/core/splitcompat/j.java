package com.google.android.play.core.splitcompat;

import android.util.Log;
import io.sentry.instrumentation.file.l;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class j implements l {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Set f31837a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ t f31838b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ZipFile f31839c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(n nVar, Set set, t tVar, ZipFile zipFile) {
        this.f31837a = set;
        this.f31838b = tVar;
        this.f31839c = zipFile;
    }

    @Override // com.google.android.play.core.splitcompat.l
    public final void a(m mVar, File file, boolean z9) throws IOException {
        this.f31837a.add(file);
        if (z9) {
            return;
        }
        Log.i("SplitCompat", String.format("NativeLibraryExtractor: split '%s' has native library '%s' that does not exist; extracting from '%s!%s' to '%s'", this.f31838b.b(), mVar.f31840a, this.f31838b.a().getAbsolutePath(), mVar.f31841b.getName(), file.getAbsolutePath()));
        ZipFile zipFile = this.f31839c;
        ZipEntry zipEntry = mVar.f31841b;
        byte[] bArr = new byte[4096];
        if (file.exists()) {
            file.delete();
        }
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        try {
            FileOutputStream a10 = l.b.a(new FileOutputStream(file), file);
            f.m(file);
            while (true) {
                int read = inputStream.read(bArr);
                if (read > 0) {
                    a10.write(bArr, 0, read);
                } else {
                    a10.close();
                    inputStream.close();
                    return;
                }
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable unused) {
                }
            }
            throw th;
        }
    }
}
