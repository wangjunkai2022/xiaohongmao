package b6;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.FileProvider;
import java.io.File;

/* compiled from: FileProvider7.java */
/* loaded from: classes3.dex */
public class a {
    public static Uri a(Context context, File file) {
        if (Build.VERSION.SDK_INT >= 24) {
            return b(context, file);
        }
        return Uri.fromFile(file);
    }

    public static Uri b(Context context, File file) {
        return FileProvider.getUriForFile(context, context.getPackageName() + ".android7.fileprovider", file);
    }

    public static void c(Context context, Intent intent, Uri uri, boolean z9) {
        int i4 = z9 ? 3 : 1;
        intent.addFlags(i4);
        for (ResolveInfo resolveInfo : context.getPackageManager().queryIntentActivities(intent, 65536)) {
            context.grantUriPermission(resolveInfo.activityInfo.packageName, uri, i4);
        }
    }

    public static void d(Context context, Intent intent, File file, boolean z9) {
        if (Build.VERSION.SDK_INT >= 24) {
            intent.setData(a(context, file));
            intent.addFlags(1);
            if (z9) {
                intent.addFlags(2);
                return;
            }
            return;
        }
        intent.setData(Uri.fromFile(file));
    }

    public static void e(Context context, Intent intent, String str, File file, boolean z9) {
        if (Build.VERSION.SDK_INT >= 24) {
            intent.setDataAndType(a(context, file), str);
            intent.addFlags(1);
            if (z9) {
                intent.addFlags(2);
                return;
            }
            return;
        }
        intent.setDataAndType(Uri.fromFile(file), str);
    }
}
