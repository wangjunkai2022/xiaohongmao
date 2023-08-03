package io.sentry.cache;

import java.io.File;
import java.io.FilenameFilter;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes4.dex */
public final /* synthetic */ class c implements FilenameFilter {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ c f83057a = new c();

    private /* synthetic */ c() {
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        boolean endsWith;
        endsWith = str.endsWith(d.f83058g);
        return endsWith;
    }
}
