package com.google.android.exoplayer2.drm;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class MediaDrmCallbackException extends IOException {
    public final long bytesLoaded;
    public final com.google.android.exoplayer2.upstream.o dataSpec;
    public final Map<String, List<String>> responseHeaders;
    public final Uri uriAfterRedirects;

    public MediaDrmCallbackException(com.google.android.exoplayer2.upstream.o oVar, Uri uri, Map<String, List<String>> map, long j4, Throwable th) {
        super(th);
        this.dataSpec = oVar;
        this.uriAfterRedirects = uri;
        this.responseHeaders = map;
        this.bytesLoaded = j4;
    }
}
