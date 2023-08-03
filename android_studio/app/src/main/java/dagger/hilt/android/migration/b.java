package dagger.hilt.android.migration;

import android.app.Application;
import androidx.annotation.NonNull;
import q6.f;

/* compiled from: CustomInjection.java */
/* loaded from: classes3.dex */
public final class b {
    private b() {
    }

    public static void a(@NonNull Application app) {
        f.b(app);
        f.a(app instanceof k6.a, "'%s' is not a custom inject application. Check that you have annotated the application with both @HiltAndroidApp and @CustomInject.", app.getClass());
        ((k6.a) app).a();
    }
}
