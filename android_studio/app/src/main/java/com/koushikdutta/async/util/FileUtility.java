package com.koushikdutta.async.util;

import java.io.File;

/* loaded from: classes3.dex */
public class FileUtility {
    public static boolean a(File file) {
        File[] listFiles;
        if (file.exists() && (listFiles = file.listFiles()) != null) {
            for (int i4 = 0; i4 < listFiles.length; i4++) {
                if (listFiles[i4].isDirectory()) {
                    a(listFiles[i4]);
                } else {
                    listFiles[i4].delete();
                }
            }
        }
        return file.delete();
    }
}
