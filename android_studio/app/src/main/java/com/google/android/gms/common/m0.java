package com.google.android.gms.common;

import androidx.annotation.Nullable;
import com.google.android.gms.internal.common.zzag;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class m0 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f29233a = null;

    /* renamed from: b  reason: collision with root package name */
    private long f29234b = -1;

    /* renamed from: c  reason: collision with root package name */
    private zzag<byte[]> f29235c = zzag.zzl();

    /* renamed from: d  reason: collision with root package name */
    private zzag<byte[]> f29236d = zzag.zzl();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final m0 a(long j4) {
        this.f29234b = j4;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final m0 b(List<byte[]> list) {
        com.google.android.gms.common.internal.u.k(list);
        this.f29236d = zzag.zzk(list);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final m0 c(List<byte[]> list) {
        com.google.android.gms.common.internal.u.k(list);
        this.f29235c = zzag.zzk(list);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final m0 d(String str) {
        this.f29233a = str;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o0 e() {
        if (this.f29233a != null) {
            if (this.f29234b >= 0) {
                if (this.f29235c.isEmpty() && this.f29236d.isEmpty()) {
                    throw new IllegalStateException("Either orderedTestCerts or orderedProdCerts must have at least one cert");
                }
                return new o0(this.f29233a, this.f29234b, this.f29235c, this.f29236d, null);
            }
            throw new IllegalStateException("minimumStampedVersionNumber must be greater than or equal to 0");
        }
        throw new IllegalStateException("packageName must be defined");
    }
}
