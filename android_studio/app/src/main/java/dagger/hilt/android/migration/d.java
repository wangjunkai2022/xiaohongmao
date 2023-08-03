package dagger.hilt.android.migration;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.view.View;
import androidx.activity.ComponentActivity;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import q6.f;

/* compiled from: OptionalInjectCheck.java */
/* loaded from: classes3.dex */
public final class d {
    private d() {
    }

    private static boolean a(@NonNull Object obj) {
        f.b(obj);
        f.a(obj instanceof k6.b, "'%s' is not an optionally injected android entry point. Check that you have annotated the class with both @AndroidEntryPoint and @OptionalInject.", obj.getClass());
        return ((k6.b) obj).a();
    }

    public static boolean b(@NonNull Service service) {
        return a(service);
    }

    public static boolean c(@NonNull BroadcastReceiver broadcastReceiver) {
        return a(broadcastReceiver);
    }

    public static boolean d(@NonNull View view) {
        return a(view);
    }

    public static boolean e(@NonNull ComponentActivity activity) {
        return a(activity);
    }

    public static boolean f(@NonNull Fragment fragment) {
        return a(fragment);
    }
}
