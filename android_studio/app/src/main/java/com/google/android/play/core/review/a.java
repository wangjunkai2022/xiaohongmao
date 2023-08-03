package com.google.android.play.core.review;

import android.app.Activity;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public interface a {
    @NonNull
    com.google.android.play.core.tasks.d<ReviewInfo> a();

    @NonNull
    com.google.android.play.core.tasks.d<Void> b(@NonNull Activity activity, @NonNull ReviewInfo reviewInfo);
}
