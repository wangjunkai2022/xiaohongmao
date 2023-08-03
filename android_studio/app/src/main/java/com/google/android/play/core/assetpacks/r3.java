package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class r3 {

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31561c = new com.google.android.play.core.internal.h("PatchSliceTaskHandler");

    /* renamed from: a  reason: collision with root package name */
    private final p0 f31562a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31563b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r3(p0 p0Var, com.google.android.play.core.internal.n1 n1Var) {
        this.f31562a = p0Var;
        this.f31563b = n1Var;
    }

    public final void a(q3 q3Var) {
        File y9 = this.f31562a.y(q3Var.f31538b, q3Var.f31539c, q3Var.f31540d);
        File file = new File(this.f31562a.z(q3Var.f31538b, q3Var.f31539c, q3Var.f31540d), q3Var.f31544h);
        try {
            InputStream inputStream = q3Var.f31546j;
            if (q3Var.f31543g == 2) {
                inputStream = new GZIPInputStream(inputStream, 8192);
            }
            s0 s0Var = new s0(y9, file);
            File G = this.f31562a.G(q3Var.f31538b, q3Var.f31541e, q3Var.f31542f, q3Var.f31544h);
            if (!G.exists()) {
                G.mkdirs();
            }
            y3 y3Var = new y3(this.f31562a, q3Var.f31538b, q3Var.f31541e, q3Var.f31542f, q3Var.f31544h);
            com.google.android.play.core.internal.k1.a(s0Var, inputStream, new w1(G, y3Var), q3Var.f31545i);
            y3Var.i(0);
            inputStream.close();
            f31561c.d("Patching and extraction finished for slice %s of pack %s.", q3Var.f31544h, q3Var.f31538b);
            ((x4) this.f31563b.zza()).g(q3Var.f31537a, q3Var.f31538b, q3Var.f31544h, 0);
            try {
                q3Var.f31546j.close();
            } catch (IOException unused) {
                f31561c.e("Could not close file for slice %s of pack %s.", q3Var.f31544h, q3Var.f31538b);
            }
        } catch (IOException e4) {
            f31561c.b("IOException during patching %s.", e4.getMessage());
            throw new t1(String.format("Error patching slice %s of pack %s.", q3Var.f31544h, q3Var.f31538b), e4, q3Var.f31537a);
        }
    }
}
