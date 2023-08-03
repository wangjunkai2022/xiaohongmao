package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: DataSource.java */
/* loaded from: classes2.dex */
public interface m extends i {

    /* compiled from: DataSource.java */
    /* loaded from: classes2.dex */
    public interface a {
        m a();
    }

    long a(o oVar) throws IOException;

    Map<String, List<String>> b();

    @Nullable
    Uri c();

    void close() throws IOException;

    void e(p0 p0Var);
}
