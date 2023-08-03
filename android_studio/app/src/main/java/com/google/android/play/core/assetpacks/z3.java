package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FilenameFilter;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final /* synthetic */ class z3 implements FilenameFilter {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ z3 f31703a = new z3();

    private /* synthetic */ z3() {
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        boolean matches;
        matches = a4.f31241a.matcher(str).matches();
        return matches;
    }
}
