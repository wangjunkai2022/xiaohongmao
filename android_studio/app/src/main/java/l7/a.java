package l7;

import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Utils.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static int f86892a;

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicInteger f86893b = new AtomicInteger(1);

    private a() {
    }

    public static int a() {
        AtomicInteger atomicInteger;
        int i4;
        int i10;
        do {
            atomicInteger = f86893b;
            i4 = atomicInteger.get();
            i10 = i4 + 1;
            if (i10 > 16777215) {
                i10 = 1;
            }
        } while (!atomicInteger.compareAndSet(i4, i10));
        return i4;
    }

    public static int b() {
        return f86892a;
    }

    public static int c(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.y;
    }

    public static int d(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.x;
    }

    public static int e(Context context) {
        return 200;
    }

    public static boolean f(Context context) {
        return context.getResources().getConfiguration().keyboardHidden == 1;
    }

    public static void g(int i4) {
        f86892a = i4;
    }
}
