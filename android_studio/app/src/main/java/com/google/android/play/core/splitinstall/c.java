package com.google.android.play.core.splitinstall;

import android.app.Activity;
import android.content.IntentSender;
import androidx.annotation.NonNull;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public interface c {
    boolean a(@NonNull f fVar, @NonNull Activity activity, int i4) throws IntentSender.SendIntentException;

    @NonNull
    com.google.android.play.core.tasks.d<Void> b(List<Locale> list);

    @NonNull
    com.google.android.play.core.tasks.d<Void> c(int i4);

    @NonNull
    com.google.android.play.core.tasks.d<List<f>> d();

    @NonNull
    com.google.android.play.core.tasks.d<Void> e(List<Locale> list);

    boolean f(@NonNull f fVar, @NonNull com.google.android.play.core.common.a aVar, int i4) throws IntentSender.SendIntentException;

    com.google.android.play.core.tasks.d<Integer> g(@NonNull e eVar);

    @NonNull
    com.google.android.play.core.tasks.d<Void> h(List<String> list);

    @NonNull
    com.google.android.play.core.tasks.d<f> i(int i4);

    @NonNull
    Set<String> j();

    void k(@NonNull g gVar);

    @NonNull
    com.google.android.play.core.tasks.d<Void> l(List<String> list);

    void m(@NonNull g gVar);

    void n(@NonNull g gVar);

    void o(@NonNull g gVar);

    @NonNull
    Set<String> p();
}
