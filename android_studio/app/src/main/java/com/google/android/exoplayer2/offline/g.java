package com.google.android.exoplayer2.offline;

import java.io.Closeable;

/* compiled from: DownloadCursor.java */
/* loaded from: classes2.dex */
public interface g extends Closeable {
    e N();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    int getCount();

    int getPosition();

    boolean isAfterLast();

    boolean isBeforeFirst();

    boolean isClosed();

    boolean isFirst();

    boolean isLast();

    boolean moveToFirst();

    boolean moveToLast();

    boolean moveToNext();

    boolean moveToPosition(int i4);

    boolean moveToPrevious();
}
