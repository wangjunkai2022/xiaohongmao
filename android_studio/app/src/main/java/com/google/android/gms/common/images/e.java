package com.google.android.gms.common.images;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.s;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f29048a;

    public e(Uri uri) {
        this.f29048a = uri;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            return s.b(((e) obj).f29048a, this.f29048a);
        }
        return false;
    }

    public final int hashCode() {
        return s.c(this.f29048a);
    }
}
