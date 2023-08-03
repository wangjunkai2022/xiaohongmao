package com.google.android.play.core.assetpacks;

import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class a4 {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f31241a = Pattern.compile("[0-9]+-(NAM|LFH)\\.dat");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List a(File file, File file2) throws IOException {
        File[] fileArr;
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file2.listFiles(z3.f31703a);
        if (listFiles == null) {
            fileArr = new File[0];
        } else {
            File[] fileArr2 = new File[listFiles.length];
            for (File file3 : listFiles) {
                int parseInt = Integer.parseInt(file3.getName().split("-")[0]);
                if (parseInt <= listFiles.length && fileArr2[parseInt] == null) {
                    fileArr2[parseInt] = file3;
                } else {
                    throw new t1("Metadata folder ordering corrupt.");
                }
            }
            fileArr = fileArr2;
        }
        for (File file4 : fileArr) {
            arrayList.add(file4);
            if (file4.getName().contains("LFH")) {
                FileInputStream a10 = h.b.a(new FileInputStream(file4), file4);
                try {
                    e4 b10 = new e1(a10).b();
                    if (b10.c() != null) {
                        File file5 = new File(file, b10.c());
                        if (file5.exists()) {
                            arrayList.add(file5);
                            a10.close();
                        } else {
                            throw new t1(String.format("Missing asset file %s during slice reconstruction.", file5.getCanonicalPath()));
                        }
                    } else {
                        throw new t1("Metadata files corrupt. Could not read local file header.");
                    }
                } catch (Throwable th) {
                    try {
                        a10.close();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            }
        }
        return arrayList;
    }
}
