package iamutkarshtiwari.github.io.ananas.editimage.utils;

import android.app.Activity;
import android.content.Context;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import io.sentry.protocol.a;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PermissionsUtils.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J%\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\bH\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0007J+\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Liamutkarshtiwari/github/io/ananas/editimage/utils/h;", "", "Landroid/content/Context;", "context", "", "permission", "", "b", "", a.b.f83633h, "c", "(Landroid/content/Context;[Ljava/lang/String;)Z", "", "grantResults", "d", "Landroid/app/Activity;", "activity", "", "requestCode", "a", "(Landroid/app/Activity;[Ljava/lang/String;I)Z", "<init>", "()V", "lib-ananas_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class h {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final h f69707a = new h();

    private h() {
    }

    private final boolean b(Context context, String str) {
        return ContextCompat.checkSelfPermission(context, str) == 0;
    }

    @JvmStatic
    public static final boolean c(@m8.g Context context, @m8.g String[] permissions) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        for (String str : permissions) {
            if (!f69707a.b(context, str)) {
                return false;
            }
        }
        return true;
    }

    @JvmStatic
    public static final boolean d(@m8.g int[] grantResults) {
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        int length = grantResults.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                return true;
            }
            if (!(grantResults[i4] == 0)) {
                return false;
            }
            i4++;
        }
    }

    public final boolean a(@m8.g Activity activity, @m8.g String[] permissions, int i4) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        if (c(activity, permissions)) {
            return true;
        }
        ActivityCompat.requestPermissions(activity, permissions, i4);
        return false;
    }
}
