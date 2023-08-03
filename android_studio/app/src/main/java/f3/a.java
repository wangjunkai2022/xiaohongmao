package f3;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.annotation.NonNull;
import com.google.android.play.core.review.ReviewException;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.tasks.d;
import com.google.android.play.core.tasks.f;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public class a implements com.google.android.play.core.review.a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f65402a;

    /* renamed from: b  reason: collision with root package name */
    private ReviewInfo f65403b;

    public a(Context context) {
        this.f65402a = context;
    }

    @Override // com.google.android.play.core.review.a
    @NonNull
    public d<ReviewInfo> a() {
        ReviewInfo zzc = ReviewInfo.zzc(PendingIntent.getBroadcast(this.f65402a, 0, new Intent(), Build.VERSION.SDK_INT >= 23 ? 67108864 : 0), false);
        this.f65403b = zzc;
        return f.e(zzc);
    }

    @Override // com.google.android.play.core.review.a
    @NonNull
    public d<Void> b(@NonNull Activity activity, @NonNull ReviewInfo reviewInfo) {
        return reviewInfo != this.f65403b ? f.d(new ReviewException(-2)) : f.e(null);
    }
}
