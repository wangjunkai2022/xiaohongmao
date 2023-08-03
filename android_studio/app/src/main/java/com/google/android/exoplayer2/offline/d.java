package com.google.android.exoplayer2.offline;

import android.util.SparseArray;
import com.google.android.exoplayer2.b1;
import com.google.android.exoplayer2.upstream.cache.b;
import com.google.android.exoplayer2.util.z0;
import java.lang.reflect.Constructor;
import java.util.concurrent.Executor;

/* compiled from: DefaultDownloaderFactory.java */
/* loaded from: classes2.dex */
public class d implements z {

    /* renamed from: c  reason: collision with root package name */
    private static final SparseArray<Constructor<? extends y>> f24308c = c();

    /* renamed from: a  reason: collision with root package name */
    private final b.d f24309a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f24310b;

    @Deprecated
    public d(b.d dVar) {
        this(dVar, androidx.window.layout.d.f657a);
    }

    private y b(DownloadRequest downloadRequest, int i4) {
        Constructor<? extends y> constructor = f24308c.get(i4);
        if (constructor != null) {
            try {
                return constructor.newInstance(new b1.c().F(downloadRequest.uri).C(downloadRequest.streamKeys).j(downloadRequest.customCacheKey).l(downloadRequest.keySetId).a(), this.f24309a, this.f24310b);
            } catch (Exception unused) {
                StringBuilder sb = new StringBuilder(61);
                sb.append("Failed to instantiate downloader for content type ");
                sb.append(i4);
                throw new IllegalStateException(sb.toString());
            }
        }
        StringBuilder sb2 = new StringBuilder(43);
        sb2.append("Module missing for content type ");
        sb2.append(i4);
        throw new IllegalStateException(sb2.toString());
    }

    private static SparseArray<Constructor<? extends y>> c() {
        SparseArray<Constructor<? extends y>> sparseArray = new SparseArray<>();
        try {
            sparseArray.put(0, d(Class.forName("com.google.android.exoplayer2.source.dash.offline.DashDownloader")));
        } catch (ClassNotFoundException unused) {
        }
        try {
            sparseArray.put(2, d(Class.forName("com.google.android.exoplayer2.source.hls.offline.HlsDownloader")));
        } catch (ClassNotFoundException unused2) {
        }
        try {
            sparseArray.put(1, d(Class.forName("com.google.android.exoplayer2.source.smoothstreaming.offline.SsDownloader")));
        } catch (ClassNotFoundException unused3) {
        }
        return sparseArray;
    }

    private static Constructor<? extends y> d(Class<?> cls) {
        try {
            return cls.asSubclass(y.class).getConstructor(b1.class, b.d.class, Executor.class);
        } catch (NoSuchMethodException e4) {
            throw new IllegalStateException("Downloader constructor missing", e4);
        }
    }

    @Override // com.google.android.exoplayer2.offline.z
    public y a(DownloadRequest downloadRequest) {
        int z02 = z0.z0(downloadRequest.uri, downloadRequest.mimeType);
        if (z02 == 0 || z02 == 1 || z02 == 2) {
            return b(downloadRequest, z02);
        }
        if (z02 == 4) {
            return new d0(new b1.c().F(downloadRequest.uri).j(downloadRequest.customCacheKey).a(), this.f24309a, this.f24310b);
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Unsupported type: ");
        sb.append(z02);
        throw new IllegalArgumentException(sb.toString());
    }

    public d(b.d dVar, Executor executor) {
        this.f24309a = (b.d) com.google.android.exoplayer2.util.a.g(dVar);
        this.f24310b = (Executor) com.google.android.exoplayer2.util.a.g(executor);
    }
}
