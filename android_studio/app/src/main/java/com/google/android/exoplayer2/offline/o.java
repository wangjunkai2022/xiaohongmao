package com.google.android.exoplayer2.offline;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.IOException;

/* compiled from: DownloadIndex.java */
@WorkerThread
/* loaded from: classes2.dex */
public interface o {
    g d(int... iArr) throws IOException;

    @Nullable
    e g(String str) throws IOException;
}
