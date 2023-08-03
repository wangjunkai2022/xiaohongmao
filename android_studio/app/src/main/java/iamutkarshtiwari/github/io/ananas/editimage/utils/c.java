package iamutkarshtiwari.github.io.ananas.editimage.utils;

import android.content.ContentValues;
import android.content.Context;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.im.freechat.ui.chat.history.o;
import java.io.File;

/* compiled from: FileUtil.java */
/* loaded from: classes3.dex */
public class c {
    public static void a(Context context, String str) {
        if (TextUtils.isEmpty(str) || context == null) {
            return;
        }
        File file = new File(str);
        if (!file.exists() || file.length() == 0) {
            return;
        }
        ContentValues contentValues = new ContentValues(2);
        String c10 = c(str);
        StringBuilder sb = new StringBuilder();
        sb.append("image/");
        if (TextUtils.isEmpty(c10)) {
            c10 = "jpeg";
        }
        sb.append(c10);
        contentValues.put(o.f42921d, sb.toString());
        contentValues.put("_data", str);
        context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
    }

    public static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return new File(str).exists();
    }

    public static String c(String str) {
        int lastIndexOf;
        return (str == null || str.length() <= 0 || (lastIndexOf = str.lastIndexOf(46)) <= -1 || lastIndexOf >= str.length() + (-1)) ? "" : str.substring(lastIndexOf + 1);
    }
}
