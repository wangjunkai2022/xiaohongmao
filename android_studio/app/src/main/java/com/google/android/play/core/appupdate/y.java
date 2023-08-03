package com.google.android.play.core.appupdate;

import com.google.android.play.core.appupdate.d;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class y extends d.a {

    /* renamed from: a  reason: collision with root package name */
    private int f31231a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f31232b;

    /* renamed from: c  reason: collision with root package name */
    private byte f31233c;

    @Override // com.google.android.play.core.appupdate.d.a
    public final d a() {
        if (this.f31233c != 3) {
            StringBuilder sb = new StringBuilder();
            if ((this.f31233c & 1) == 0) {
                sb.append(" appUpdateType");
            }
            if ((this.f31233c & 2) == 0) {
                sb.append(" allowAssetPackDeletion");
            }
            throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
        }
        return new a0(this.f31231a, this.f31232b, null);
    }

    @Override // com.google.android.play.core.appupdate.d.a
    public final d.a b(boolean z9) {
        this.f31232b = z9;
        this.f31233c = (byte) (this.f31233c | 2);
        return this;
    }

    @Override // com.google.android.play.core.appupdate.d.a
    public final d.a c(int i4) {
        this.f31231a = i4;
        this.f31233c = (byte) (this.f31233c | 1);
        return this;
    }
}
