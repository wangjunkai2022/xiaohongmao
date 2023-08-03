package com.google.android.play.core.splitinstall.testing;

import java.io.File;
import java.io.FileFilter;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final /* synthetic */ class m implements FileFilter {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ m f31976a = new m();

    private /* synthetic */ m() {
    }

    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        int i4 = a.f31935q;
        return file.getName().endsWith(".apk");
    }
}
