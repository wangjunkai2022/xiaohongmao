package io.sentry.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import m8.a;

/* compiled from: FileUtils.java */
@a.c
/* loaded from: classes4.dex */
public final class c {
    public static boolean a(@m8.h File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        if (file.isFile()) {
            return file.delete();
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return true;
        }
        for (File file2 : listFiles) {
            if (!a(file2)) {
                return false;
            }
        }
        return file.delete();
    }

    @m8.h
    public static String b(@m8.h File file) throws IOException {
        if (file == null || !file.exists() || !file.isFile() || !file.canRead()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        try {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                sb.append(readLine);
            }
            while (true) {
                String readLine2 = bufferedReader.readLine();
                if (readLine2 != null) {
                    sb.append("\n");
                    sb.append(readLine2);
                } else {
                    bufferedReader.close();
                    return sb.toString();
                }
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
