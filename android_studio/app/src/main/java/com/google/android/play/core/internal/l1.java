package com.google.android.play.core.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class l1 implements Closeable {
    public abstract long a();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract InputStream b(long j4, long j10) throws IOException;

    public final synchronized InputStream d() throws IOException {
        return b(0L, a());
    }
}
