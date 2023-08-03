package com.google.android.exoplayer2.offline;

import androidx.annotation.Nullable;
import java.io.IOException;

/* compiled from: Downloader.java */
/* loaded from: classes2.dex */
public interface y {

    /* compiled from: Downloader.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(long j4, long j10, float f10);
    }

    void a(@Nullable a aVar) throws IOException, InterruptedException;

    void cancel();

    void remove();
}
