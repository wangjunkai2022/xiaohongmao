package com.airbnb.lottie.model.content;

import android.graphics.Paint;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.content.s;
import java.util.List;

/* loaded from: classes.dex */
public class ShapeStroke implements b {

    /* renamed from: a  reason: collision with root package name */
    private final String f4459a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4460b;

    /* renamed from: c  reason: collision with root package name */
    private final List<com.airbnb.lottie.model.animatable.b> f4461c;

    /* renamed from: d  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.a f4462d;

    /* renamed from: e  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.d f4463e;

    /* renamed from: f  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4464f;

    /* renamed from: g  reason: collision with root package name */
    private final LineCapType f4465g;

    /* renamed from: h  reason: collision with root package name */
    private final LineJoinType f4466h;

    /* renamed from: i  reason: collision with root package name */
    private final float f4467i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f4468j;

    /* loaded from: classes.dex */
    public enum LineCapType {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap toPaintCap() {
            int i4 = a.f4471a[ordinal()];
            if (i4 != 1) {
                if (i4 != 2) {
                    return Paint.Cap.SQUARE;
                }
                return Paint.Cap.ROUND;
            }
            return Paint.Cap.BUTT;
        }
    }

    /* loaded from: classes.dex */
    public enum LineJoinType {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join toPaintJoin() {
            int i4 = a.f4472b[ordinal()];
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        return null;
                    }
                    return Paint.Join.ROUND;
                }
                return Paint.Join.MITER;
            }
            return Paint.Join.BEVEL;
        }
    }

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4471a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f4472b;

        static {
            int[] iArr = new int[LineJoinType.values().length];
            f4472b = iArr;
            try {
                iArr[LineJoinType.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4472b[LineJoinType.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4472b[LineJoinType.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[LineCapType.values().length];
            f4471a = iArr2;
            try {
                iArr2[LineCapType.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4471a[LineCapType.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4471a[LineCapType.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ShapeStroke(String str, @Nullable com.airbnb.lottie.model.animatable.b bVar, List<com.airbnb.lottie.model.animatable.b> list, com.airbnb.lottie.model.animatable.a aVar, com.airbnb.lottie.model.animatable.d dVar, com.airbnb.lottie.model.animatable.b bVar2, LineCapType lineCapType, LineJoinType lineJoinType, float f10, boolean z9) {
        this.f4459a = str;
        this.f4460b = bVar;
        this.f4461c = list;
        this.f4462d = aVar;
        this.f4463e = dVar;
        this.f4464f = bVar2;
        this.f4465g = lineCapType;
        this.f4466h = lineJoinType;
        this.f4467i = f10;
        this.f4468j = z9;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.c a(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new s(hVar, aVar, this);
    }

    public LineCapType b() {
        return this.f4465g;
    }

    public com.airbnb.lottie.model.animatable.a c() {
        return this.f4462d;
    }

    public com.airbnb.lottie.model.animatable.b d() {
        return this.f4460b;
    }

    public LineJoinType e() {
        return this.f4466h;
    }

    public List<com.airbnb.lottie.model.animatable.b> f() {
        return this.f4461c;
    }

    public float g() {
        return this.f4467i;
    }

    public String h() {
        return this.f4459a;
    }

    public com.airbnb.lottie.model.animatable.d i() {
        return this.f4463e;
    }

    public com.airbnb.lottie.model.animatable.b j() {
        return this.f4464f;
    }

    public boolean k() {
        return this.f4468j;
    }
}
