package s1;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: SimpleImageTranscoderFactory.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class h implements d {

    /* renamed from: a  reason: collision with root package name */
    private final int f93253a;

    public h(final int maxBitmapSize) {
        this.f93253a = maxBitmapSize;
    }

    @Override // s1.d
    public c createImageTranscoder(com.facebook.imageformat.c imageFormat, boolean isResizingEnabled) {
        return new g(isResizingEnabled, this.f93253a);
    }
}
