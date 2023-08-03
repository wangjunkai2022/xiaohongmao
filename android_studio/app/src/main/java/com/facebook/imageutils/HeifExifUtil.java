package com.facebook.imageutils;

import android.media.ExifInterface;
import android.os.Build;
import androidx.annotation.RequiresApi;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class HeifExifUtil {

    /* renamed from: a  reason: collision with root package name */
    public static final String f13373a = "HeifExifUtil";

    @com.facebook.soloader.d
    /* loaded from: classes.dex */
    private static class HeifExifUtilAndroidN {
        private HeifExifUtilAndroidN() {
        }

        @RequiresApi(api = 24)
        static int a(final InputStream inputStream) {
            try {
                return new ExifInterface(inputStream).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
            } catch (IOException e4) {
                p0.a.n(HeifExifUtil.f13373a, "Failed reading Heif Exif orientation -> ignoring", e4);
                return 0;
            }
        }
    }

    public static int a(final InputStream inputStream) {
        if (Build.VERSION.SDK_INT >= 24) {
            return HeifExifUtilAndroidN.a(inputStream);
        }
        p0.a.i(f13373a, "Trying to read Heif Exif information before Android N -> ignoring");
        return 0;
    }
}
