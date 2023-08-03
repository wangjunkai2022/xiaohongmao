package com.google.android.play.core.review;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import com.google.android.play.core.tasks.o;

/* compiled from: com.google.android.play:core@@1.10.3 */
@SuppressLint({"RestrictedApi"})
/* loaded from: classes2.dex */
public final class d implements a {

    /* renamed from: a  reason: collision with root package name */
    private final i f31804a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f31805b = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(i iVar) {
        this.f31804a = iVar;
    }

    @Override // com.google.android.play.core.review.a
    @NonNull
    public final com.google.android.play.core.tasks.d<ReviewInfo> a() {
        return this.f31804a.b();
    }

    @Override // com.google.android.play.core.review.a
    @NonNull
    public final com.google.android.play.core.tasks.d<Void> b(@NonNull Activity activity, @NonNull ReviewInfo reviewInfo) {
        if (reviewInfo.zzb()) {
            return com.google.android.play.core.tasks.f.e(null);
        }
        Intent intent = new Intent(activity, PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", reviewInfo.zza());
        intent.putExtra("window_flags", activity.getWindow().getDecorView().getWindowSystemUiVisibility());
        o oVar = new o();
        intent.putExtra("result_receiver", new zzc(this, this.f31805b, oVar));
        activity.startActivity(intent);
        return oVar.a();
    }
}
