package com.google.android.play.core.assetpacks;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public interface c {
    void a(@NonNull e eVar);

    @Nullable
    a b(@NonNull String str, @NonNull String str2);

    com.google.android.play.core.tasks.d<Integer> c(@NonNull Activity activity);

    com.google.android.play.core.tasks.d<f> d(List<String> list);

    void e();

    @Nullable
    b f(@NonNull String str);

    void g(@NonNull e eVar);

    com.google.android.play.core.tasks.d<Void> h(@NonNull String str);

    f i(@NonNull List<String> list);

    com.google.android.play.core.tasks.d<f> j(List<String> list);

    Map<String, b> k();
}
