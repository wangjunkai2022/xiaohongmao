package com.ksyun.media.streamer.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class BitmapLoader {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46709a = "BitmapLoader";

    /* renamed from: b  reason: collision with root package name */
    private static final int f46710b = 2048;

    private static Bitmap a(Context context, String str) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        try {
            inputStream = context.getAssets().open(str);
        } catch (Exception unused) {
            inputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception unused2) {
                }
            }
            return decodeStream;
        } catch (Exception unused3) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception unused4) {
                }
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            inputStream2 = inputStream;
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (Exception unused5) {
                }
            }
            throw th;
        }
    }

    public static Bitmap loadBitmap(Context context, String str) {
        return loadBitmap(context, str, 2048, 2048);
    }

    public static Bitmap loadBitmap(Context context, String str, int i4, int i10) {
        Bitmap a10;
        if (context != null && str != null && !str.isEmpty()) {
            if (str.startsWith("file://")) {
                a10 = BitmapFactory.decodeFile(str.substring(7));
            } else if (str.startsWith("assets://")) {
                a10 = a(context, str.substring(9));
            } else {
                Bitmap decodeFile = BitmapFactory.decodeFile(str);
                a10 = decodeFile == null ? a(context, str) : decodeFile;
            }
            if (a10 == null) {
                Log.e(f46709a, "loadBitmap " + str + " failed!");
                return null;
            }
            if (i4 == 0 && i10 == 0) {
                if (a10.getWidth() > a10.getHeight()) {
                    i4 = 2048;
                } else {
                    i10 = 2048;
                }
            }
            if ((a10.getWidth() <= i4 || i4 <= 0) && (a10.getHeight() <= i10 || i10 <= 0)) {
                return a10;
            }
            if (a10.getWidth() > i4 && i4 > 0) {
                i10 = (a10.getHeight() * i4) / a10.getWidth();
            } else {
                i4 = (a10.getWidth() * i10) / a10.getHeight();
            }
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(a10, (i4 / 2) * 2, (i10 / 2) * 2, true);
            a10.recycle();
            return createScaledBitmap;
        }
        Log.e(f46709a, "loadBitmap " + str + " failed!");
        return null;
    }
}
