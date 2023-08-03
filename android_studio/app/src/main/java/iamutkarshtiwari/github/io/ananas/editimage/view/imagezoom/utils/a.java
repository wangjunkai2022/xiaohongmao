package iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import io.sentry.instrumentation.file.h;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/* compiled from: DecodeUtils.java */
/* loaded from: classes3.dex */
public class a {
    private static int a(int i4, int i10, int i11, int i12, int i13) {
        double d4;
        double d10;
        if (i13 == 0 || i13 == 180) {
            d4 = i4;
            d10 = i10;
        } else {
            d4 = i10;
            d10 = i4;
        }
        return (int) Math.ceil(Math.max(d4 / i11, d10 / i12));
    }

    public static Bitmap b(Context context, Uri uri, int i4, int i10) {
        InputStream h4 = h(context, uri);
        if (h4 == null) {
            return null;
        }
        int a10 = b.a(context, uri);
        int[] iArr = new int[2];
        boolean d4 = d(h4, iArr);
        d.c(h4);
        if (d4) {
            int i11 = 1;
            if (i4 >= 0 && i10 >= 0) {
                i11 = a(iArr[0], iArr[1], (int) (i4 * 1.2d), (int) (i10 * 1.2d), a10);
            }
            BitmapFactory.Options e4 = e();
            e4.inSampleSize = i11;
            return c(context, uri, e4, i4, i10, a10, 0);
        }
        return null;
    }

    static Bitmap c(Context context, Uri uri, BitmapFactory.Options options, int i4, int i10, int i11, int i12) {
        InputStream h4;
        Bitmap bitmap = null;
        if (i12 <= 20 && (h4 = h(context, uri)) != null) {
            try {
                bitmap = BitmapFactory.decodeStream(h4, null, options);
                d.c(h4);
                if (bitmap == null || i4 <= 0 || i10 <= 0) {
                    return bitmap;
                }
                Bitmap s9 = iamutkarshtiwari.github.io.ananas.editimage.utils.a.s(bitmap, i4, i10, i11);
                if (bitmap != s9) {
                    bitmap.recycle();
                }
                return s9;
            } catch (OutOfMemoryError unused) {
                d.c(h4);
                if (bitmap != null) {
                    bitmap.recycle();
                }
                options.inSampleSize++;
                return c(context, uri, options, i4, i10, i11, i12 + 1);
            }
        }
        return null;
    }

    public static boolean d(InputStream inputStream, int[] iArr) {
        int i4;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, null, options);
        int i10 = options.outHeight;
        if (i10 <= 0 || (i4 = options.outWidth) <= 0) {
            return false;
        }
        iArr[0] = i4;
        iArr[1] = i10;
        return true;
    }

    static BitmapFactory.Options e() {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = false;
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        options.inDither = false;
        options.inJustDecodeBounds = false;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inTempStorage = new byte[16384];
        return options;
    }

    static InputStream f(Context context, Uri uri) {
        try {
            return context.getContentResolver().openInputStream(uri);
        } catch (FileNotFoundException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    static InputStream g(String str) {
        try {
            return h.b.d(new FileInputStream(str), str);
        } catch (FileNotFoundException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static InputStream h(Context context, Uri uri) {
        if (uri == null) {
            return null;
        }
        String scheme = uri.getScheme();
        if (scheme != null && !"file".equals(scheme)) {
            if ("content".equals(scheme)) {
                return f(context, uri);
            }
            if ("http".equals(scheme) || "https".equals(scheme)) {
                return i(uri);
            }
            return null;
        }
        return g(uri.getPath());
    }

    static InputStream i(Uri uri) {
        try {
            URL url = new URL(uri.toString());
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setInstanceFollowRedirects(false);
                try {
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != 301 && responseCode != 302 && responseCode != 303) {
                        try {
                            return (InputStream) url.getContent();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                            return null;
                        }
                    }
                    return i(Uri.parse(httpURLConnection.getHeaderField(com.google.common.net.b.f34636m0)));
                } catch (IOException e10) {
                    e10.printStackTrace();
                    return null;
                }
            } catch (IOException e11) {
                e11.printStackTrace();
                return null;
            }
        } catch (MalformedURLException e12) {
            e12.printStackTrace();
            return null;
        }
    }
}
