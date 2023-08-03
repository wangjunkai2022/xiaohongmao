package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.Format;
import java.util.Comparator;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes2.dex */
public final /* synthetic */ class b implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ b f26024a = new b();

    private /* synthetic */ b() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int w9;
        w9 = c.w((Format) obj, (Format) obj2);
        return w9;
    }
}
