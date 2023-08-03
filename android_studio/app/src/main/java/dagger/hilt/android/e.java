package dagger.hilt.android;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import io.sentry.protocol.i;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EntryPointAccessors.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ+\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0007¢\u0006\u0004\b\u0007\u0010\bJ+\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00022\u0006\u0010\n\u001a\u00020\t2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0007¢\u0006\u0004\b\u000b\u0010\fJ+\u0010\u000f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0007¢\u0006\u0004\b\u000f\u0010\u0010J+\u0010\u0013\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0012\u001a\u00020\u00112\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J \u0010\u0015\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0002\u0018\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0086\b¢\u0006\u0004\b\u0015\u0010\u0016J \u0010\u0017\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0002\u0018\u00012\u0006\u0010\n\u001a\u00020\tH\u0086\b¢\u0006\u0004\b\u0017\u0010\u0018J \u0010\u0019\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0002\u0018\u00012\u0006\u0010\u000e\u001a\u00020\rH\u0086\b¢\u0006\u0004\b\u0019\u0010\u001aJ \u0010\u001b\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0002\u0018\u00012\u0006\u0010\u0012\u001a\u00020\u0011H\u0086\b¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Ldagger/hilt/android/e;", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/content/Context;", "context", "Ljava/lang/Class;", "entryPoint", "d", "(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;", "Landroid/app/Activity;", "activity", "b", "(Landroid/app/Activity;Ljava/lang/Class;)Ljava/lang/Object;", "Landroidx/fragment/app/Fragment;", i.b.f83726i, "f", "(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;", "Landroid/view/View;", "view", "h", "(Landroid/view/View;Ljava/lang/Class;)Ljava/lang/Object;", "c", "(Landroid/content/Context;)Ljava/lang/Object;", "a", "(Landroid/app/Activity;)Ljava/lang/Object;", "e", "(Landroidx/fragment/app/Fragment;)Ljava/lang/Object;", "g", "(Landroid/view/View;)Ljava/lang/Object;", "<init>", "()V", "java_dagger_hilt_android-entry_point_accessors_internal_kt"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class e {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final e f62012a = new e();

    private e() {
    }

    @JvmStatic
    public static final <T> T b(@m8.g Activity activity, @m8.g Class<T> entryPoint) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(entryPoint, "entryPoint");
        return (T) dagger.hilt.c.a(activity, entryPoint);
    }

    @JvmStatic
    public static final <T> T d(@m8.g Context context, @m8.g Class<T> entryPoint) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(entryPoint, "entryPoint");
        return (T) dagger.hilt.c.a(g6.a.a(context.getApplicationContext()), entryPoint);
    }

    @JvmStatic
    public static final <T> T f(@m8.g Fragment fragment, @m8.g Class<T> entryPoint) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(entryPoint, "entryPoint");
        return (T) dagger.hilt.c.a(fragment, entryPoint);
    }

    @JvmStatic
    public static final <T> T h(@m8.g View view, @m8.g Class<T> entryPoint) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(entryPoint, "entryPoint");
        return (T) dagger.hilt.c.a(view, entryPoint);
    }

    public final /* synthetic */ <T> T a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) b(activity, Object.class);
    }

    public final /* synthetic */ <T> T c(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) d(context, Object.class);
    }

    public final /* synthetic */ <T> T e(Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) f(fragment, Object.class);
    }

    public final /* synthetic */ <T> T g(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) h(view, Object.class);
    }
}
