package io.sentry.cache;

import java.io.File;
import java.util.Comparator;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes4.dex */
public final /* synthetic */ class a implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ a f83051a = new a();

    private /* synthetic */ a() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int h4;
        h4 = b.h((File) obj, (File) obj2);
        return h4;
    }
}
