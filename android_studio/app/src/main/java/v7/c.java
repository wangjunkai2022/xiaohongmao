package v7;

import android.content.res.Resources;

/* compiled from: Utils.java */
/* loaded from: classes4.dex */
public final class c {
    private c() {
    }

    public static int a(int px) {
        return px * ((int) Resources.getSystem().getDisplayMetrics().density);
    }
}
