package com.google.android.exoplayer2.metadata.mp4;

import com.google.android.exoplayer2.metadata.mp4.SlowMotionData;
import java.util.Comparator;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ a f24146a = new a();

    private /* synthetic */ a() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$static$0;
        lambda$static$0 = SlowMotionData.Segment.lambda$static$0((SlowMotionData.Segment) obj, (SlowMotionData.Segment) obj2);
        return lambda$static$0;
    }
}
