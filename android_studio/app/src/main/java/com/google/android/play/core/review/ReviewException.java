package com.google.android.play.core.review;

import com.google.android.play.core.tasks.zzj;
import java.util.Locale;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public class ReviewException extends zzj {

    /* renamed from: a  reason: collision with root package name */
    private final int f31803a;

    public ReviewException(int i4) {
        super(String.format(Locale.getDefault(), "Review Error(%d): %s", Integer.valueOf(i4), e3.b.a(i4)));
        this.f31803a = i4;
    }

    @Override // com.google.android.play.core.tasks.zzj
    public int getErrorCode() {
        return this.f31803a;
    }
}
