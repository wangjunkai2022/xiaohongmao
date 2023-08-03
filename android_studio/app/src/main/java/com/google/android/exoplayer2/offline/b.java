package com.google.android.exoplayer2.offline;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.File;
import java.io.IOException;

/* compiled from: ActionFileUpgradeUtil.java */
/* loaded from: classes2.dex */
public final class b {

    /* compiled from: ActionFileUpgradeUtil.java */
    /* loaded from: classes2.dex */
    public interface a {
        String a(DownloadRequest downloadRequest);
    }

    private b() {
    }

    static void a(DownloadRequest downloadRequest, c cVar, boolean z9, long j4) throws IOException {
        e eVar;
        e g4 = cVar.g(downloadRequest.id);
        if (g4 != null) {
            eVar = r.r(g4, downloadRequest, g4.f24335f, j4);
        } else {
            eVar = new e(downloadRequest, z9 ? 3 : 0, j4, j4, -1L, 0, 0);
        }
        cVar.h(eVar);
    }

    @WorkerThread
    public static void b(File file, @Nullable a aVar, c cVar, boolean z9, boolean z10) throws IOException {
        DownloadRequest[] e4;
        com.google.android.exoplayer2.offline.a aVar2 = new com.google.android.exoplayer2.offline.a(file);
        if (aVar2.b()) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                for (DownloadRequest downloadRequest : aVar2.e()) {
                    if (aVar != null) {
                        downloadRequest = downloadRequest.copyWithId(aVar.a(downloadRequest));
                    }
                    a(downloadRequest, cVar, z10, currentTimeMillis);
                }
                aVar2.a();
            } catch (Throwable th) {
                if (z9) {
                    aVar2.a();
                }
                throw th;
            }
        }
    }
}
