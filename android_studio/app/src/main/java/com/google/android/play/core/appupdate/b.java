package com.google.android.play.core.appupdate;

import android.app.Activity;
import android.content.IntentSender;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public interface b {
    boolean a(@NonNull a aVar, @NonNull Activity activity, @NonNull d dVar, int i4) throws IntentSender.SendIntentException;

    boolean b(@NonNull a aVar, @d3.b int i4, @NonNull com.google.android.play.core.common.a aVar2, int i10) throws IntentSender.SendIntentException;

    @NonNull
    com.google.android.play.core.tasks.d<Void> c();

    @NonNull
    com.google.android.play.core.tasks.d<a> d();

    void e(@NonNull com.google.android.play.core.install.a aVar);

    boolean f(@NonNull a aVar, @NonNull com.google.android.play.core.common.a aVar2, @NonNull d dVar, int i4) throws IntentSender.SendIntentException;

    com.google.android.play.core.tasks.d<Integer> g(@NonNull a aVar, @NonNull Activity activity, @NonNull d dVar);

    boolean h(@NonNull a aVar, @d3.b int i4, @NonNull Activity activity, int i10) throws IntentSender.SendIntentException;

    void i(@NonNull com.google.android.play.core.install.a aVar);
}
