package androidx.window.layout;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.window.layout.WindowInfoTracker;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import m8.g;

/* compiled from: WindowInfoTracker.kt */
/* loaded from: classes.dex */
public final /* synthetic */ class b {
    static {
        WindowInfoTracker.Companion companion = WindowInfoTracker.Companion;
    }

    @JvmStatic
    @g
    @JvmName(name = "getOrCreate")
    public static WindowInfoTracker a(@g Context context) {
        return WindowInfoTracker.Companion.getOrCreate(context);
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void b(@g WindowInfoTrackerDecorator windowInfoTrackerDecorator) {
        WindowInfoTracker.Companion.overrideDecorator(windowInfoTrackerDecorator);
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void c() {
        WindowInfoTracker.Companion.reset();
    }
}
