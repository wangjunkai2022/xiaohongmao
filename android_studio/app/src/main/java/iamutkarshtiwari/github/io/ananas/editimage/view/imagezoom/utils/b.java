package iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.utils;

import android.content.ContentProviderClient;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.imagepipeline.common.e;
import io.sentry.protocol.Device;
import java.io.IOException;

/* compiled from: ExifUtils.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f69830a = {ExifInterface.TAG_F_NUMBER, ExifInterface.TAG_DATETIME, ExifInterface.TAG_EXPOSURE_TIME, ExifInterface.TAG_FLASH, ExifInterface.TAG_FOCAL_LENGTH, ExifInterface.TAG_GPS_ALTITUDE, ExifInterface.TAG_GPS_ALTITUDE_REF, ExifInterface.TAG_GPS_DATESTAMP, ExifInterface.TAG_GPS_LATITUDE, ExifInterface.TAG_GPS_LATITUDE_REF, ExifInterface.TAG_GPS_LONGITUDE, ExifInterface.TAG_GPS_LONGITUDE_REF, ExifInterface.TAG_GPS_PROCESSING_METHOD, ExifInterface.TAG_GPS_TIMESTAMP, ExifInterface.TAG_IMAGE_LENGTH, ExifInterface.TAG_IMAGE_WIDTH, ExifInterface.TAG_ISO_SPEED_RATINGS, ExifInterface.TAG_MAKE, ExifInterface.TAG_MODEL, ExifInterface.TAG_WHITE_BALANCE};

    public static int a(Context context, Uri uri) {
        String scheme = uri.getScheme();
        if (scheme != null && !"file".equals(scheme)) {
            if (scheme.equals("content")) {
                try {
                    ContentProviderClient acquireContentProviderClient = context.getContentResolver().acquireContentProviderClient(uri);
                    if (acquireContentProviderClient != null) {
                        try {
                            Cursor query = acquireContentProviderClient.query(uri, new String[]{Device.b.f83600k, "_data"}, null, null, null);
                            if (query == null) {
                                return 0;
                            }
                            int columnIndex = query.getColumnIndex(Device.b.f83600k);
                            int columnIndex2 = query.getColumnIndex("_data");
                            try {
                                if (query.getCount() > 0) {
                                    query.moveToFirst();
                                    int i4 = columnIndex > -1 ? query.getInt(columnIndex) : 0;
                                    if (columnIndex2 > -1) {
                                        i4 |= c(query.getString(columnIndex2));
                                    }
                                    return i4;
                                }
                            } finally {
                                query.close();
                            }
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                } catch (SecurityException unused) {
                }
            }
            return 0;
        }
        return c(uri.getPath());
    }

    public static int b(android.media.ExifInterface exifInterface) {
        int attributeInt;
        if (exifInterface != null && (attributeInt = exifInterface.getAttributeInt(ExifInterface.TAG_ORIENTATION, -1)) != -1) {
            if (attributeInt == 3) {
                return e.f12205e;
            }
            if (attributeInt == 6) {
                return 90;
            }
            if (attributeInt == 8) {
                return e.f12206f;
            }
        }
        return 0;
    }

    public static int c(String str) {
        if (str == null) {
            return 0;
        }
        try {
            return b(new android.media.ExifInterface(str));
        } catch (IOException unused) {
            return 0;
        }
    }

    public static String d(int i4) {
        if (i4 != 0) {
            if (i4 != 90) {
                if (i4 != 180) {
                    if (i4 == 270) {
                        return String.valueOf(8);
                    }
                    throw new AssertionError("invalid: " + i4);
                }
                return String.valueOf(3);
            }
            return String.valueOf(6);
        }
        return String.valueOf(1);
    }

    public static boolean e(String str, Bundle bundle) {
        String[] strArr;
        try {
            android.media.ExifInterface exifInterface = new android.media.ExifInterface(str);
            for (String str2 : f69830a) {
                bundle.putString(str2, exifInterface.getAttribute(str2));
            }
            return true;
        } catch (IOException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static boolean f(String str, Bundle bundle) {
        String[] strArr;
        try {
            android.media.ExifInterface exifInterface = new android.media.ExifInterface(str);
            for (String str2 : f69830a) {
                if (bundle.containsKey(str2)) {
                    exifInterface.setAttribute(str2, bundle.getString(str2));
                }
            }
            try {
                exifInterface.saveAttributes();
                return true;
            } catch (IOException e4) {
                e4.printStackTrace();
                return false;
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
