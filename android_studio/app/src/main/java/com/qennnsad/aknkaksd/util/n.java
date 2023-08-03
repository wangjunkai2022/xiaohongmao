package com.qennnsad.aknkaksd.util;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.math.BigDecimal;

/* compiled from: DataCleanManager.java */
/* loaded from: classes3.dex */
public class n {
    public static void a(Context context) {
        b(context.getCacheDir());
        if (Environment.getExternalStorageState().equals("mounted")) {
            b(context.getExternalCacheDir());
        }
    }

    private static boolean b(File file) {
        if (file != null && file.isDirectory()) {
            for (String str : file.list()) {
                if (!b(new File(file, str))) {
                    return false;
                }
            }
        }
        return file != null && file.delete();
    }

    public static String c(Context context) {
        if (!"mounted".equals(Environment.getExternalStorageState()) && Environment.isExternalStorageRemovable()) {
            return context.getCacheDir().getPath();
        }
        return context.getExternalCacheDir().getPath();
    }

    public static long d(File file) throws Exception {
        File[] listFiles;
        long length;
        long j4 = 0;
        try {
            for (File file2 : file.listFiles()) {
                if (file2.isDirectory()) {
                    length = d(file2);
                } else {
                    length = file2.length();
                }
                j4 += length;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return j4;
    }

    public static String e(double d4) {
        if (Double.valueOf(d4).compareTo(Double.valueOf(0.0d)) == 0) {
            return "0B";
        }
        double d10 = d4 / 1024.0d;
        if (d10 < 1.0d) {
            return "0K";
        }
        double d11 = d10 / 1024.0d;
        if (d11 < 1.0d) {
            BigDecimal bigDecimal = new BigDecimal(Double.toString(d10));
            return bigDecimal.setScale(2, 4).toPlainString() + "KB";
        }
        double d12 = d11 / 1024.0d;
        if (d12 < 1.0d) {
            BigDecimal bigDecimal2 = new BigDecimal(Double.toString(d11));
            return bigDecimal2.setScale(2, 4).toPlainString() + "MB";
        }
        double d13 = d12 / 1024.0d;
        if (d13 < 1.0d) {
            BigDecimal bigDecimal3 = new BigDecimal(Double.toString(d12));
            return bigDecimal3.setScale(2, 4).toPlainString() + "GB";
        }
        BigDecimal bigDecimal4 = new BigDecimal(d13);
        return bigDecimal4.setScale(2, 4).toPlainString() + "TB";
    }

    public static String f(Context context) throws Exception {
        long d4 = d(context.getCacheDir());
        if (Environment.getExternalStorageState().equals("mounted")) {
            d4 += d(context.getExternalCacheDir());
        }
        return e(d4);
    }
}
