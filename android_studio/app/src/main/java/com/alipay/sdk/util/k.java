package com.alipay.sdk.util;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6971a = "content://com.alipay.android.app.settings.data.ServerProvider/current_server";

    public static String a(Context context) {
        if (context == null) {
            return m.a.f86902a;
        }
        String str = m.a.f86902a;
        return TextUtils.isEmpty(str) ? m.a.f86902a : str;
    }

    private static String b(Context context) {
        Cursor query = context.getContentResolver().query(Uri.parse(f6971a), null, null, null, null);
        if (query != null && query.getCount() > 0) {
            r0 = query.moveToFirst() ? query.getString(query.getColumnIndex("url")) : null;
            query.close();
        }
        return r0;
    }
}
