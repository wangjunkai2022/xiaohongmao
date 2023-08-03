package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class c4 {

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31269b = new com.google.android.play.core.internal.h("VerifySliceTaskHandler");

    /* renamed from: a  reason: collision with root package name */
    private final p0 f31270a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c4(p0 p0Var) {
        this.f31270a = p0Var;
    }

    private final void b(b4 b4Var, File file) {
        try {
            File F = this.f31270a.F(b4Var.f31538b, b4Var.f31250c, b4Var.f31251d, b4Var.f31252e);
            if (F.exists()) {
                try {
                    if (a3.a(a4.a(file, F)).equals(b4Var.f31253f)) {
                        f31269b.d("Verification of slice %s of pack %s successful.", b4Var.f31252e, b4Var.f31538b);
                        return;
                    }
                    throw new t1(String.format("Verification failed for slice %s.", b4Var.f31252e), b4Var.f31537a);
                } catch (IOException e4) {
                    throw new t1(String.format("Could not digest file during verification for slice %s.", b4Var.f31252e), e4, b4Var.f31537a);
                } catch (NoSuchAlgorithmException e10) {
                    throw new t1("SHA256 algorithm not supported.", e10, b4Var.f31537a);
                }
            }
            throw new t1(String.format("Cannot find metadata files for slice %s.", b4Var.f31252e), b4Var.f31537a);
        } catch (IOException e11) {
            throw new t1(String.format("Could not reconstruct slice archive during verification for slice %s.", b4Var.f31252e), e11, b4Var.f31537a);
        }
    }

    public final void a(b4 b4Var) {
        File G = this.f31270a.G(b4Var.f31538b, b4Var.f31250c, b4Var.f31251d, b4Var.f31252e);
        if (G.exists()) {
            b(b4Var, G);
            File H = this.f31270a.H(b4Var.f31538b, b4Var.f31250c, b4Var.f31251d, b4Var.f31252e);
            if (!H.exists()) {
                H.mkdirs();
            }
            if (!G.renameTo(H)) {
                throw new t1(String.format("Failed to move slice %s after verification.", b4Var.f31252e), b4Var.f31537a);
            }
            return;
        }
        throw new t1(String.format("Cannot find unverified files for slice %s.", b4Var.f31252e), b4Var.f31537a);
    }
}
