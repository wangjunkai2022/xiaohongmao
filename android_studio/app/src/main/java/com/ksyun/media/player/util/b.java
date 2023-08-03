package com.ksyun.media.player.util;

import android.util.Log;
import java.io.File;

/* compiled from: IOUtils.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f45594a = "com.ksyun.media.player.util.b";

    public static void a(String str) {
        if (new File(str).delete()) {
            String str2 = f45594a;
            Log.i(str2, "Successfully deleted empty directory: " + str);
            return;
        }
        String str3 = f45594a;
        Log.e(str3, "Failed to delete empty directory: " + str);
    }

    public static boolean a(File file) {
        if (file.isDirectory()) {
            String[] list = file.list();
            if (list != null) {
                for (String str : list) {
                    if (!a(new File(file, str))) {
                        return false;
                    }
                }
            } else {
                Log.e(f45594a, "children can not null");
            }
        }
        return file.delete();
    }
}
