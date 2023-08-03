package io.sentry.android.core;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import m8.a;

/* compiled from: EmptySecureContentProvider.java */
@a.c
/* loaded from: classes4.dex */
abstract class s0 extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private final io.sentry.android.core.internal.util.d f82589a = new io.sentry.android.core.internal.util.d();

    @Override // android.content.ContentProvider
    public final int delete(@m8.g Uri uri, @m8.h String str, @m8.h String[] strArr) {
        this.f82589a.a(this);
        return 0;
    }

    @Override // android.content.ContentProvider
    @m8.h
    public final Uri insert(@m8.g Uri uri, @m8.h ContentValues contentValues) {
        this.f82589a.a(this);
        return null;
    }

    @Override // android.content.ContentProvider
    @m8.h
    public final Cursor query(@m8.g Uri uri, @m8.h String[] strArr, @m8.h String str, @m8.h String[] strArr2, @m8.h String str2) {
        this.f82589a.a(this);
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(@m8.g Uri uri, @m8.h ContentValues contentValues, @m8.h String str, @m8.h String[] strArr) {
        this.f82589a.a(this);
        return 0;
    }
}
