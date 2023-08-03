package kotlin.random;

import io.sentry.protocol.y;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.g;

/* compiled from: XorWowRandom.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0000\u0018\u0000 \u00122\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\u0012B\u0017\b\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007B7\b\u0000\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0005¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\b\u0010\u0011\u001a\u00020\u0005H\u0016R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lkotlin/random/XorWowRandom;", "Lkotlin/random/Random;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "seed1", "", "seed2", "(II)V", y.b.f83919g, y.b.f83920h, "z", "w", "v", "addend", "(IIIIII)V", "nextBits", "bitCount", "nextInt", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class XorWowRandom extends Random implements Serializable {
    @g
    private static final Companion Companion = new Companion(null);
    @Deprecated
    private static final long serialVersionUID = 0;
    private int addend;

    /* renamed from: v  reason: collision with root package name */
    private int f84749v;

    /* renamed from: w  reason: collision with root package name */
    private int f84750w;

    /* renamed from: x  reason: collision with root package name */
    private int f84751x;

    /* renamed from: y  reason: collision with root package name */
    private int f84752y;

    /* renamed from: z  reason: collision with root package name */
    private int f84753z;

    /* compiled from: XorWowRandom.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lkotlin/random/XorWowRandom$Companion;", "", "()V", "serialVersionUID", "", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    private static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public XorWowRandom(int i4, int i10, int i11, int i12, int i13, int i14) {
        this.f84751x = i4;
        this.f84752y = i10;
        this.f84753z = i11;
        this.f84750w = i12;
        this.f84749v = i13;
        this.addend = i14;
        int i15 = i4 | i10 | i11 | i12 | i13;
        if (!(i15 != 0)) {
            throw new IllegalArgumentException("Initial state must have at least one non-zero element.".toString());
        }
        for (int i16 = 0; i16 < 64; i16++) {
            nextInt();
        }
    }

    @Override // kotlin.random.Random
    public int nextBits(int i4) {
        return RandomKt.takeUpperBits(nextInt(), i4);
    }

    @Override // kotlin.random.Random
    public int nextInt() {
        int i4 = this.f84751x;
        int i10 = i4 ^ (i4 >>> 2);
        this.f84751x = this.f84752y;
        this.f84752y = this.f84753z;
        this.f84753z = this.f84750w;
        int i11 = this.f84749v;
        this.f84750w = i11;
        int i12 = ((i10 ^ (i10 << 1)) ^ i11) ^ (i11 << 4);
        this.f84749v = i12;
        int i13 = this.addend + 362437;
        this.addend = i13;
        return i12 + i13;
    }

    public XorWowRandom(int i4, int i10) {
        this(i4, i10, 0, 0, ~i4, (i4 << 10) ^ (i10 >>> 4));
    }
}
