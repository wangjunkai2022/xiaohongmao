package com.xw.repo;

import android.content.res.Resources;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.TypedValue;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

/* compiled from: BubbleUtils.java */
/* loaded from: classes3.dex */
class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f59946a = "ro.miui.ui.version.name";

    /* renamed from: b  reason: collision with root package name */
    private static Properties f59947b = new Properties();

    /* renamed from: c  reason: collision with root package name */
    private static Boolean f59948c;

    b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i4) {
        return (int) TypedValue.applyDimension(1, i4, Resources.getSystem().getDisplayMetrics());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b() {
        Boolean bool = f59948c;
        if (bool != null) {
            return bool.booleanValue();
        }
        FileInputStream fileInputStream = null;
        try {
            try {
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            if (Build.VERSION.SDK_INT < 26) {
                try {
                    File file = new File(Environment.getRootDirectory(), "build.prop");
                    fileInputStream = h.b.a(new FileInputStream(file), file);
                    f59947b.load(fileInputStream);
                } catch (IOException e10) {
                    e10.printStackTrace();
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                f59948c = Boolean.valueOf(f59947b.containsKey(f59946a));
                return f59948c.booleanValue();
            }
            try {
                boolean z9 = true;
                if (TextUtils.isEmpty((String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, f59946a))) {
                    z9 = false;
                }
                f59948c = Boolean.valueOf(z9);
            } catch (Exception unused) {
                f59948c = Boolean.FALSE;
            }
            return f59948c.booleanValue();
        } catch (Throwable th) {
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i4) {
        return (int) TypedValue.applyDimension(2, i4, Resources.getSystem().getDisplayMetrics());
    }
}
