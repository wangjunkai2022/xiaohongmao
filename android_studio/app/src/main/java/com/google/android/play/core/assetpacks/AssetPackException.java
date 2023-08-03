package com.google.android.play.core.assetpacks;

import com.google.android.play.core.tasks.zzj;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public class AssetPackException extends zzj {
    @b3.a

    /* renamed from: a  reason: collision with root package name */
    private final int f31234a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AssetPackException(@b3.a int i4) {
        super(String.format("Asset Pack Download Error(%d): %s", Integer.valueOf(i4), b3.d.a(i4)));
        if (i4 != 0) {
            this.f31234a = i4;
            return;
        }
        throw new IllegalArgumentException("errorCode should not be 0.");
    }

    @Override // com.google.android.play.core.tasks.zzj
    @b3.a
    public int getErrorCode() {
        return this.f31234a;
    }
}
