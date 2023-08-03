package com.facebook.soloader;

import java.io.IOException;

/* compiled from: NativeLoaderToSoLoaderDelegate.java */
/* loaded from: classes.dex */
public class r implements y1.b {
    @Override // y1.b
    public int a() {
        return SoLoader.n();
    }

    @Override // y1.b
    public String b(String str) throws IOException {
        return SoLoader.l(str);
    }

    @Override // y1.b
    public boolean c(String str, int i4) {
        return SoLoader.u(str, ((i4 & 1) != 0 ? 16 : 0) | 0);
    }
}
