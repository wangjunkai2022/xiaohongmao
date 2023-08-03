package com.facebook.soloader;

import android.os.StrictMode;
import java.io.File;

/* compiled from: NoopSoSource.java */
/* loaded from: classes.dex */
public class s extends v {
    @Override // com.facebook.soloader.v
    public int e(String str, int i4, StrictMode.ThreadPolicy threadPolicy) {
        return 1;
    }

    @Override // com.facebook.soloader.v
    public File g(String str) {
        throw new UnsupportedOperationException("unpacking not supported in test mode");
    }
}
