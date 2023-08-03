package com.google.android.exoplayer2.database;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* compiled from: DefaultDatabaseProvider.java */
/* loaded from: classes2.dex */
public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final SQLiteOpenHelper f21552a;

    public b(SQLiteOpenHelper sQLiteOpenHelper) {
        this.f21552a = sQLiteOpenHelper;
    }

    @Override // com.google.android.exoplayer2.database.a
    public SQLiteDatabase getReadableDatabase() {
        return this.f21552a.getReadableDatabase();
    }

    @Override // com.google.android.exoplayer2.database.a
    public SQLiteDatabase getWritableDatabase() {
        return this.f21552a.getWritableDatabase();
    }
}
