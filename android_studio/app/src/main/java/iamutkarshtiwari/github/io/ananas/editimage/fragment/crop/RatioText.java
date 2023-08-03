package iamutkarshtiwari.github.io.ananas.editimage.fragment.crop;

import androidx.annotation.StringRes;
import f7.b;
import kotlin.Metadata;

/* compiled from: RatioText.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001b\b\u0002\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u0017"}, d2 = {"Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;", "", "", "a", "I", "getRatioTextId", "()I", "ratioTextId", "Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;", "b", "Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;", "getAspectRatio", "()Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;", "aspectRatio", "<init>", "(Ljava/lang/String;IILiamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;)V", "FREE", "FIT_IMAGE", "SQUARE", "RATIO_3_4", "RATIO_4_3", "RATIO_9_16", "RATIO_16_9", "lib-ananas_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public enum RatioText {
    FREE(b.o.f67191q0, new a(0, 0, 3, null)),
    FIT_IMAGE(b.o.f67187p0, new a(-1, -1)),
    SQUARE(b.o.L0, new a(1, 1)),
    RATIO_3_4(b.o.C0, new a(3, 4)),
    RATIO_4_3(b.o.D0, new a(4, 3)),
    RATIO_9_16(b.o.E0, new a(9, 16)),
    RATIO_16_9(b.o.B0, new a(16, 9));
    

    /* renamed from: a  reason: collision with root package name */
    private final int f69384a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final a f69385b;

    RatioText(@StringRes int i4, a aVar) {
        this.f69384a = i4;
        this.f69385b = aVar;
    }

    @m8.g
    public final a getAspectRatio() {
        return this.f69385b;
    }

    public final int getRatioTextId() {
        return this.f69384a;
    }
}
