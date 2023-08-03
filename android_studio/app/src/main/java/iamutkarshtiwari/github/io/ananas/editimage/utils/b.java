package iamutkarshtiwari.github.io.ananas.editimage.utils;

import android.content.Context;

/* compiled from: DensityUtil.java */
/* loaded from: classes3.dex */
public class b {
    public static int a(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int b(Context context, float f10) {
        return (int) ((f10 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
