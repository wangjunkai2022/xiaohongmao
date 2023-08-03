package n0;

import com.facebook.infer.annotation.Nullsafe;
import java.io.File;

/* compiled from: FileTree.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a {
    public static boolean a(File directory) {
        File[] listFiles = directory.listFiles();
        boolean z9 = true;
        if (listFiles != null) {
            for (File file : listFiles) {
                z9 &= b(file);
            }
        }
        return z9;
    }

    public static boolean b(File file) {
        if (file.isDirectory()) {
            a(file);
        }
        return file.delete();
    }

    public static void c(File directory, b visitor) {
        visitor.c(directory);
        File[] listFiles = directory.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isDirectory()) {
                    c(file, visitor);
                } else {
                    visitor.b(file);
                }
            }
        }
        visitor.a(directory);
    }
}
