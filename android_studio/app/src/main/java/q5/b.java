package q5;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;
import com.didi.live.spring.R;
import com.im.freechat.utils.h;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* compiled from: StatusBarUtils.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static int f93145a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static int f93146b = 0;

    /* renamed from: c  reason: collision with root package name */
    public static int f93147c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static DisplayMetrics f93148d = null;

    /* renamed from: e  reason: collision with root package name */
    public static final String f93149e = "HOME_CURRENT_TAB_POSITION";

    /* renamed from: f  reason: collision with root package name */
    private static final String f93150f = "ro.miui.ui.version.code";

    /* renamed from: g  reason: collision with root package name */
    private static final String f93151g = "ro.miui.ui.version.name";

    /* renamed from: h  reason: collision with root package name */
    private static final String f93152h = "ro.miui.internal.storage";

    public static boolean a(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
        boolean z9 = false;
        boolean z10 = identifier > 0 ? resources.getBoolean(identifier) : false;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getMethod("get", String.class).invoke(cls, "qemu.hw.mainkeys");
            if (!"1".equals(str)) {
                z9 = "0".equals(str) ? true : z10;
            }
            return z9;
        } catch (Exception unused) {
            return z10;
        }
    }

    public static int b(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
        f93147c = dimensionPixelSize;
        return dimensionPixelSize;
    }

    public static boolean c() {
        try {
            return Build.class.getMethod("hasSmartBar", new Class[0]) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean d() {
        try {
            a i4 = a.i();
            if (i4.e(f93150f, null) == null && i4.e(f93151g, null) == null) {
                if (i4.e(f93152h, null) == null) {
                    return false;
                }
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    private static void e(boolean z9, Activity activity) {
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        try {
            Class<?> cls = Class.forName("android.view.WindowManager$LayoutParams");
            int i4 = cls.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON").getInt(attributes);
            Field declaredField = cls.getDeclaredField("meizuFlags");
            declaredField.setAccessible(true);
            int i10 = declaredField.getInt(attributes);
            if (z9) {
                declaredField.set(attributes, Integer.valueOf(i10 | i4));
            } else {
                declaredField.set(attributes, Integer.valueOf((~i4) & i10));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private static void f(boolean z9, Activity activity) {
        Class<?> cls = activity.getWindow().getClass();
        try {
            Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
            int i4 = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
            Class<?> cls3 = Integer.TYPE;
            Method method = cls.getMethod("setExtraFlags", cls3, cls3);
            Window window = activity.getWindow();
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(z9 ? i4 : 0);
            objArr[1] = Integer.valueOf(i4);
            method.invoke(window, objArr);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void g(Activity activity) {
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        f93148d = new DisplayMetrics();
        defaultDisplay.getRealMetrics(f93148d);
        DisplayMetrics displayMetrics = f93148d;
        f93145a = displayMetrics.widthPixels;
        f93146b = displayMetrics.heightPixels;
    }

    public static void h(Activity activity, boolean z9, boolean z10) {
        int i4 = Build.VERSION.SDK_INT;
        activity.getWindow().getDecorView().setSystemUiVisibility(h.f43782b);
        if (z9) {
            activity.getWindow().setStatusBarColor(activity.getResources().getColor(R.color.main_color));
        } else {
            activity.getWindow().setStatusBarColor(0);
        }
        if (i4 < 23 || z10) {
            return;
        }
        activity.getWindow().getDecorView().setSystemUiVisibility(9216);
    }

    public static void i(boolean z9, Activity activity) {
        if (c()) {
            e(z9, activity);
        } else if (d()) {
            f(z9, activity);
        } else {
            if (z9) {
                if (Build.VERSION.SDK_INT >= 23) {
                    activity.getWindow().getDecorView().setSystemUiVisibility(9216);
                }
            } else {
                activity.getWindow().getDecorView().setSystemUiVisibility(h.f43782b);
            }
            activity.getWindow().getDecorView().findViewById(16908290).setPadding(0, 0, 0, f93147c);
        }
    }
}
