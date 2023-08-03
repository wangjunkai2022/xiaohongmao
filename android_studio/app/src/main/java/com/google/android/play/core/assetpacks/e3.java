package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.IOException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class e3 {

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31298b = new com.google.android.play.core.internal.h("MergeSliceTaskHandler");

    /* renamed from: a  reason: collision with root package name */
    private final p0 f31299a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e3(p0 p0Var) {
        this.f31299a = p0Var;
    }

    private static void b(File file, File file2) {
        File[] listFiles;
        if (file.isDirectory()) {
            file2.mkdirs();
            for (File file3 : file.listFiles()) {
                b(file3, new File(file2, file3.getName()));
            }
            if (!file.delete()) {
                throw new t1("Unable to delete directory: ".concat(String.valueOf(file)));
            }
        } else if (!file2.exists()) {
            if (!file.renameTo(file2)) {
                throw new t1("Unable to move file: ".concat(String.valueOf(file)));
            }
        } else {
            throw new t1("File clashing with existing file from other slice: ".concat(file2.toString()));
        }
    }

    public final void a(d3 d3Var) {
        File H = this.f31299a.H(d3Var.f31538b, d3Var.f31282c, d3Var.f31283d, d3Var.f31284e);
        if (H.exists()) {
            File A = this.f31299a.A(d3Var.f31538b, d3Var.f31282c, d3Var.f31283d);
            if (!A.exists()) {
                A.mkdirs();
            }
            b(H, A);
            try {
                this.f31299a.a(d3Var.f31538b, d3Var.f31282c, d3Var.f31283d, this.f31299a.s(d3Var.f31538b, d3Var.f31282c, d3Var.f31283d) + 1);
                return;
            } catch (IOException e4) {
                f31298b.b("Writing merge checkpoint failed with %s.", e4.getMessage());
                throw new t1("Writing merge checkpoint failed.", e4, d3Var.f31537a);
            }
        }
        throw new t1(String.format("Cannot find verified files for slice %s.", d3Var.f31284e), d3Var.f31537a);
    }
}
