package s1;

import com.facebook.imagepipeline.core.o;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: MultiImageTranscoderFactory.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class f implements d {

    /* renamed from: a  reason: collision with root package name */
    private final int f93245a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f93246b;
    @r7.h

    /* renamed from: c  reason: collision with root package name */
    private final d f93247c;
    @r7.h

    /* renamed from: d  reason: collision with root package name */
    private final Integer f93248d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f93249e;

    public f(final int maxBitmapSize, final boolean useDownSamplingRatio, @r7.h final d primaryImageTranscoderFactory, @r7.h final Integer imageTranscoderType, final boolean ensureTranscoderLibraryLoaded) {
        this.f93245a = maxBitmapSize;
        this.f93246b = useDownSamplingRatio;
        this.f93247c = primaryImageTranscoderFactory;
        this.f93248d = imageTranscoderType;
        this.f93249e = ensureTranscoderLibraryLoaded;
    }

    @r7.h
    private c a(com.facebook.imageformat.c imageFormat, boolean isResizingEnabled) {
        d dVar = this.f93247c;
        if (dVar == null) {
            return null;
        }
        return dVar.createImageTranscoder(imageFormat, isResizingEnabled);
    }

    @r7.h
    private c b(com.facebook.imageformat.c imageFormat, boolean isResizingEnabled) {
        Integer num = this.f93248d;
        if (num == null) {
            return null;
        }
        int intValue = num.intValue();
        if (intValue != 0) {
            if (intValue == 1) {
                return d(imageFormat, isResizingEnabled);
            }
            throw new IllegalArgumentException("Invalid ImageTranscoderType");
        }
        return c(imageFormat, isResizingEnabled);
    }

    @r7.h
    private c c(com.facebook.imageformat.c imageFormat, boolean isResizingEnabled) {
        return com.facebook.imagepipeline.nativecode.d.a(this.f93245a, this.f93246b, this.f93249e).createImageTranscoder(imageFormat, isResizingEnabled);
    }

    private c d(com.facebook.imageformat.c imageFormat, boolean isResizingEnabled) {
        return new h(this.f93245a).createImageTranscoder(imageFormat, isResizingEnabled);
    }

    @Override // s1.d
    public c createImageTranscoder(com.facebook.imageformat.c imageFormat, boolean isResizingEnabled) {
        c a10 = a(imageFormat, isResizingEnabled);
        if (a10 == null) {
            a10 = b(imageFormat, isResizingEnabled);
        }
        if (a10 == null && o.a()) {
            a10 = c(imageFormat, isResizingEnabled);
        }
        return a10 == null ? d(imageFormat, isResizingEnabled) : a10;
    }
}
