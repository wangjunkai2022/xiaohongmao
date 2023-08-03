package com.google.android.exoplayer2.offline;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.offline.a0;
import com.google.android.exoplayer2.upstream.h0;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* compiled from: FilteringManifestParser.java */
/* loaded from: classes2.dex */
public final class b0<T extends a0<T>> implements h0.a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final h0.a<? extends T> f24278a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final List<StreamKey> f24279b;

    public b0(h0.a<? extends T> aVar, @Nullable List<StreamKey> list) {
        this.f24278a = aVar;
        this.f24279b = list;
    }

    @Override // com.google.android.exoplayer2.upstream.h0.a
    /* renamed from: b */
    public T a(Uri uri, InputStream inputStream) throws IOException {
        T a10 = this.f24278a.a(uri, inputStream);
        List<StreamKey> list = this.f24279b;
        return (list == null || list.isEmpty()) ? a10 : (T) a10.a(this.f24279b);
    }
}
