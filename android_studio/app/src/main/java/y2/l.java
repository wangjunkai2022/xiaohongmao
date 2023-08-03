package y2;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class l {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static Boolean f94699a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f94700b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static Boolean f94701c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static Boolean f94702d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static Boolean f94703e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static Boolean f94704f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static Boolean f94705g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static Boolean f94706h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static Boolean f94707i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static Boolean f94708j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static Boolean f94709k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static Boolean f94710l;

    private l() {
    }

    @u2.a
    public static boolean a(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f94707i == null) {
            boolean z9 = false;
            if (v.n() && packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                z9 = true;
            }
            f94707i = Boolean.valueOf(z9);
        }
        return f94707i.booleanValue();
    }

    @u2.a
    public static boolean b(@NonNull Context context) {
        if (f94710l == null) {
            boolean z9 = false;
            if (v.q() && context.getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")) {
                z9 = true;
            }
            f94710l = Boolean.valueOf(z9);
        }
        return f94710l.booleanValue();
    }

    @u2.a
    public static boolean c(@NonNull Context context) {
        if (f94704f == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z9 = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services")) {
                z9 = true;
            }
            f94704f = Boolean.valueOf(z9);
        }
        return f94704f.booleanValue();
    }

    @u2.a
    public static boolean d(@NonNull Context context) {
        if (f94699a == null) {
            boolean z9 = false;
            if (!g(context) && !k(context) && !n(context)) {
                if (f94706h == null) {
                    f94706h = Boolean.valueOf(context.getPackageManager().hasSystemFeature("org.chromium.arc"));
                }
                if (!f94706h.booleanValue() && !a(context) && !i(context)) {
                    if (f94709k == null) {
                        f94709k = Boolean.valueOf(context.getPackageManager().hasSystemFeature("com.google.android.feature.AMATI_EXPERIENCE"));
                    }
                    if (!f94709k.booleanValue() && !b(context)) {
                        z9 = true;
                    }
                }
            }
            f94699a = Boolean.valueOf(z9);
        }
        return f94699a.booleanValue();
    }

    @u2.a
    public static boolean e(@NonNull Context context) {
        return o(context.getResources());
    }

    @u2.a
    @TargetApi(21)
    public static boolean f(@NonNull Context context) {
        return m(context);
    }

    @u2.a
    public static boolean g(@NonNull Context context) {
        return h(context.getResources());
    }

    @u2.a
    public static boolean h(@NonNull Resources resources) {
        if (resources == null) {
            return false;
        }
        if (f94700b == null) {
            f94700b = Boolean.valueOf((resources.getConfiguration().screenLayout & 15) > 3 || o(resources));
        }
        return f94700b.booleanValue();
    }

    @u2.a
    public static boolean i(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f94708j == null) {
            boolean z9 = true;
            if (!packageManager.hasSystemFeature("com.google.android.tv") && !packageManager.hasSystemFeature("android.hardware.type.television") && !packageManager.hasSystemFeature("android.software.leanback")) {
                z9 = false;
            }
            f94708j = Boolean.valueOf(z9);
        }
        return f94708j.booleanValue();
    }

    @u2.a
    public static boolean j() {
        int i4 = com.google.android.gms.common.h.f29014a;
        return "user".equals(Build.TYPE);
    }

    @u2.a
    @TargetApi(20)
    public static boolean k(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f94702d == null) {
            boolean z9 = false;
            if (v.i() && packageManager.hasSystemFeature("android.hardware.type.watch")) {
                z9 = true;
            }
            f94702d = Boolean.valueOf(z9);
        }
        return f94702d.booleanValue();
    }

    @u2.a
    @TargetApi(26)
    public static boolean l(@NonNull Context context) {
        if (k(context)) {
            if (!v.m()) {
                return true;
            }
            if (m(context) && !v.n()) {
                return true;
            }
        }
        return false;
    }

    @TargetApi(21)
    public static boolean m(@NonNull Context context) {
        if (f94703e == null) {
            boolean z9 = false;
            if (v.j() && context.getPackageManager().hasSystemFeature("cn.google")) {
                z9 = true;
            }
            f94703e = Boolean.valueOf(z9);
        }
        return f94703e.booleanValue();
    }

    public static boolean n(@NonNull Context context) {
        if (f94705g == null) {
            boolean z9 = true;
            if (!context.getPackageManager().hasSystemFeature("android.hardware.type.iot") && !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
                z9 = false;
            }
            f94705g = Boolean.valueOf(z9);
        }
        return f94705g.booleanValue();
    }

    public static boolean o(@NonNull Resources resources) {
        boolean z9 = false;
        if (resources == null) {
            return false;
        }
        if (f94701c == null) {
            Configuration configuration = resources.getConfiguration();
            if ((configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600) {
                z9 = true;
            }
            f94701c = Boolean.valueOf(z9);
        }
        return f94701c.booleanValue();
    }
}
