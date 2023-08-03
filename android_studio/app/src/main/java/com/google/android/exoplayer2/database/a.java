package com.google.android.exoplayer2.database;

import android.database.sqlite.SQLiteDatabase;

/* compiled from: DatabaseProvider.java */
/* loaded from: classes2.dex */
public interface a {
    public static final String G0 = "ExoPlayer";

    SQLiteDatabase getReadableDatabase();

    SQLiteDatabase getWritableDatabase();
}
