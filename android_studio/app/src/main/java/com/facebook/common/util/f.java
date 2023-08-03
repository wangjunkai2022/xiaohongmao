package com.facebook.common.util;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.provider.MediaStore;
import com.facebook.infer.annotation.Nullsafe;
import java.io.File;
import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.net.URL;
import r7.h;
import v1.t;

/* compiled from: UriUtil.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static final String f11051a = "http";

    /* renamed from: b  reason: collision with root package name */
    public static final String f11052b = "https";

    /* renamed from: c  reason: collision with root package name */
    public static final String f11053c = "file";

    /* renamed from: d  reason: collision with root package name */
    public static final String f11054d = "content";

    /* renamed from: e  reason: collision with root package name */
    private static final Uri f11055e = Uri.withAppendedPath((Uri) v1.a.l(ContactsContract.AUTHORITY_URI), "display_photo");

    /* renamed from: f  reason: collision with root package name */
    public static final String f11056f = "asset";

    /* renamed from: g  reason: collision with root package name */
    public static final String f11057g = "res";

    /* renamed from: h  reason: collision with root package name */
    public static final String f11058h = "android.resource";

    /* renamed from: i  reason: collision with root package name */
    public static final String f11059i = "data";

    @h
    public static AssetFileDescriptor a(ContentResolver contentResolver, final Uri srcUri) {
        if (k(srcUri)) {
            try {
                return contentResolver.openAssetFileDescriptor(srcUri, "r");
            } catch (FileNotFoundException unused) {
            }
        }
        return null;
    }

    @h
    public static String b(ContentResolver contentResolver, final Uri srcUri) {
        int columnIndex;
        Cursor cursor = null;
        r1 = null;
        r1 = null;
        String string = null;
        if (k(srcUri)) {
            try {
                Cursor query = contentResolver.query(srcUri, null, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst() && (columnIndex = query.getColumnIndex("_data")) != -1) {
                            string = query.getString(columnIndex);
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = query;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (query != null) {
                    query.close();
                    return string;
                }
                return string;
            } catch (Throwable th2) {
                th = th2;
            }
        } else if (l(srcUri)) {
            return srcUri.getPath();
        } else {
            return null;
        }
    }

    @h
    public static String c(@h Uri uri) {
        if (uri == null) {
            return null;
        }
        return uri.getScheme();
    }

    public static Uri d(File file) {
        return Uri.fromFile(file);
    }

    public static Uri e(String packageName, int resourceId) {
        return new Uri.Builder().scheme(f11058h).authority(packageName).path(String.valueOf(resourceId)).build();
    }

    public static Uri f(int resourceId) {
        return new Uri.Builder().scheme(f11057g).path(String.valueOf(resourceId)).build();
    }

    public static boolean g(@h Uri uri) {
        return "data".equals(c(uri));
    }

    public static boolean h(@h Uri uri) {
        return f11056f.equals(c(uri));
    }

    public static boolean i(Uri uri) {
        String uri2 = uri.toString();
        return uri2.startsWith(MediaStore.Images.Media.EXTERNAL_CONTENT_URI.toString()) || uri2.startsWith(MediaStore.Images.Media.INTERNAL_CONTENT_URI.toString());
    }

    public static boolean j(Uri uri) {
        return uri.getPath() != null && k(uri) && "com.android.contacts".equals(uri.getAuthority()) && !uri.getPath().startsWith((String) v1.a.l(f11055e.getPath()));
    }

    public static boolean k(@h Uri uri) {
        return "content".equals(c(uri));
    }

    public static boolean l(@h Uri uri) {
        return "file".equals(c(uri));
    }

    public static boolean m(@h Uri uri) {
        return f11057g.equals(c(uri));
    }

    public static boolean n(@h Uri uri) {
        String c10 = c(uri);
        return "https".equals(c10) || "http".equals(c10);
    }

    public static boolean o(@h Uri uri) {
        return f11058h.equals(c(uri));
    }

    @h
    public static Uri p(@h String uriAsString) {
        if (uriAsString != null) {
            return Uri.parse(uriAsString);
        }
        return null;
    }

    @h
    public static URL q(@h @t Uri uri) {
        if (uri == null) {
            return null;
        }
        try {
            return new URL(uri.toString());
        } catch (MalformedURLException e4) {
            throw new RuntimeException(e4);
        }
    }
}
