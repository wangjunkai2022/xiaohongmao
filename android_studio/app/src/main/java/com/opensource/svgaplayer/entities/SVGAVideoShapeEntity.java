package com.opensource.svgaplayer.entities;

import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.facebook.common.callercontext.ContextChain;
import com.opensource.svgaplayer.proto.ShapeEntity;
import com.opensource.svgaplayer.proto.Transform;
import io.sentry.protocol.y;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import m8.h;
import org.json.JSONArray;
import org.json.JSONObject;
import t4.b;
import t4.d;
import t4.e;

/* compiled from: SVGAVideoShapeEntity.kt */
@Metadata(bv = {}, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001:\u0002\u0016;B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b8\u00109B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0006¢\u0006\u0004\b8\u0010:J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0006H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0006H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0006H\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0006H\u0002J\u0006\u0010\u0016\u001a\u00020\u0004R$\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0016\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR@\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001d2\u0014\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001d8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0012\u0010\u001f\u001a\u0004\b \u0010!R(\u0010'\u001a\u0004\u0018\u00010#2\b\u0010\u0018\u001a\u0004\u0018\u00010#8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\r\u0010$\u001a\u0004\b%\u0010&R(\u0010,\u001a\u0004\u0018\u00010(2\b\u0010\u0018\u001a\u0004\u0018\u00010(8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0011\u0010)\u001a\u0004\b*\u0010+R$\u00103\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0011\u00107\u001a\u0002048F¢\u0006\u0006\u001a\u0004\b5\u00106¨\u0006<"}, d2 = {"Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;", "", "Lorg/json/JSONObject;", "obj", "", "s", "Lcom/opensource/svgaplayer/proto/ShapeEntity;", "r", "m", "l", "Lorg/json/JSONArray;", "", "e", "c", "o", "Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;", "color", "d", "b", "n", "q", "p", "a", "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;", "<set-?>", "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;", "j", "()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;", "type", "", "", "Ljava/util/Map;", "f", "()Ljava/util/Map;", "args", "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;", "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;", "h", "()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;", "styles", "Landroid/graphics/Matrix;", "Landroid/graphics/Matrix;", ContextChain.TAG_INFRA, "()Landroid/graphics/Matrix;", "transform", "Landroid/graphics/Path;", "Landroid/graphics/Path;", "g", "()Landroid/graphics/Path;", "t", "(Landroid/graphics/Path;)V", "shapePath", "", "k", "()Z", "isKeep", "<init>", "(Lorg/json/JSONObject;)V", "(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V", "Type", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class SVGAVideoShapeEntity {
    @g

    /* renamed from: a  reason: collision with root package name */
    private Type f47225a = Type.shape;
    @h

    /* renamed from: b  reason: collision with root package name */
    private Map<String, ? extends Object> f47226b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private a f47227c;
    @h

    /* renamed from: d  reason: collision with root package name */
    private Matrix f47228d;
    @h

    /* renamed from: e  reason: collision with root package name */
    private Path f47229e;

    /* compiled from: SVGAVideoShapeEntity.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;", "", "(Ljava/lang/String;I)V", "shape", "rect", "ellipse", "keep", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes3.dex */
    public enum Type {
        shape,
        rect,
        ellipse,
        keep
    }

    /* compiled from: SVGAVideoShapeEntity.kt */
    @Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u0014\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b(\u0010)R*\u0010\t\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0004\u0010\u0006\"\u0004\b\u0007\u0010\bR*\u0010\r\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0005\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR*\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u000e8\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R*\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00168\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\n\u0010\u0019\"\u0004\b\u001a\u0010\u001bR*\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00168\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u0017\u0010\u0019\"\u0004\b\u001e\u0010\u001bR*\u0010!\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0005\u001a\u0004\b\u001d\u0010\u0006\"\u0004\b \u0010\bR*\u0010'\u001a\u00020\"2\u0006\u0010\u0003\u001a\u00020\"8\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010#\u001a\u0004\b\u000f\u0010$\"\u0004\b%\u0010&¨\u0006*"}, d2 = {"Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$a;", "", "", "<set-?>", "a", "I", "()I", "h", "(I)V", "fill", "b", "f", "m", "stroke", "", "c", "F", "g", "()F", "n", "(F)V", "strokeWidth", "", "d", "Ljava/lang/String;", "()Ljava/lang/String;", ContextChain.TAG_INFRA, "(Ljava/lang/String;)V", "lineCap", "e", "k", "lineJoin", "l", "miterLimit", "", "[F", "()[F", "j", "([F)V", "lineDash", "<init>", "()V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private int f47231a;

        /* renamed from: b  reason: collision with root package name */
        private int f47232b;

        /* renamed from: c  reason: collision with root package name */
        private float f47233c;

        /* renamed from: f  reason: collision with root package name */
        private int f47236f;
        @g

        /* renamed from: d  reason: collision with root package name */
        private String f47234d = "butt";
        @g

        /* renamed from: e  reason: collision with root package name */
        private String f47235e = "miter";
        @g

        /* renamed from: g  reason: collision with root package name */
        private float[] f47237g = new float[0];

        public final int a() {
            return this.f47231a;
        }

        @g
        public final String b() {
            return this.f47234d;
        }

        @g
        public final float[] c() {
            return this.f47237g;
        }

        @g
        public final String d() {
            return this.f47235e;
        }

        public final int e() {
            return this.f47236f;
        }

        public final int f() {
            return this.f47232b;
        }

        public final float g() {
            return this.f47233c;
        }

        public final void h(int i4) {
            this.f47231a = i4;
        }

        public final void i(@g String str) {
            this.f47234d = str;
        }

        public final void j(@g float[] fArr) {
            this.f47237g = fArr;
        }

        public final void k(@g String str) {
            this.f47235e = str;
        }

        public final void l(int i4) {
            this.f47236f = i4;
        }

        public final void m(int i4) {
            this.f47232b = i4;
        }

        public final void n(float f10) {
            this.f47233c = f10;
        }
    }

    public SVGAVideoShapeEntity(@g JSONObject jSONObject) {
        s(jSONObject);
        m(jSONObject);
        o(jSONObject);
        q(jSONObject);
    }

    private final float b(ShapeEntity.ShapeStyle.RGBAColor rGBAColor) {
        return rGBAColor.f47366a.floatValue() <= 1.0f ? 255.0f : 1.0f;
    }

    private final float c(JSONArray jSONArray) {
        return jSONArray.optDouble(3) <= ((double) 1) ? 255.0f : 1.0f;
    }

    private final float d(ShapeEntity.ShapeStyle.RGBAColor rGBAColor) {
        Float f10 = rGBAColor.f47369r;
        float f11 = 1;
        if ((f10 != null ? f10.floatValue() : 0.0f) <= f11) {
            Float f12 = rGBAColor.f47368g;
            if ((f12 != null ? f12.floatValue() : 0.0f) <= f11) {
                Float f13 = rGBAColor.f47367b;
                if ((f13 != null ? f13.floatValue() : 0.0f) <= f11) {
                    return 255.0f;
                }
            }
        }
        return 1.0f;
    }

    private final float e(JSONArray jSONArray) {
        double d4 = 1;
        return (jSONArray.optDouble(0) > d4 || jSONArray.optDouble(1) > d4 || jSONArray.optDouble(2) > d4) ? 1.0f : 255.0f;
    }

    private final void l(ShapeEntity shapeEntity) {
        String str;
        HashMap hashMap = new HashMap();
        ShapeEntity.ShapeArgs shapeArgs = shapeEntity.shape;
        if (shapeArgs != null && (str = shapeArgs.f47364d) != null) {
            hashMap.put("d", str);
        }
        ShapeEntity.EllipseArgs ellipseArgs = shapeEntity.ellipse;
        if (ellipseArgs != null) {
            Float f10 = ellipseArgs.f47356x;
            if (f10 == null) {
                f10 = Float.valueOf(0.0f);
            }
            hashMap.put(y.b.f83919g, f10);
            Float f11 = ellipseArgs.f47357y;
            if (f11 == null) {
                f11 = Float.valueOf(0.0f);
            }
            hashMap.put(y.b.f83920h, f11);
            Float f12 = ellipseArgs.radiusX;
            if (f12 == null) {
                f12 = Float.valueOf(0.0f);
            }
            hashMap.put("radiusX", f12);
            Float f13 = ellipseArgs.radiusY;
            if (f13 == null) {
                f13 = Float.valueOf(0.0f);
            }
            hashMap.put("radiusY", f13);
        }
        ShapeEntity.RectArgs rectArgs = shapeEntity.rect;
        if (rectArgs != null) {
            Float f14 = rectArgs.f47360x;
            if (f14 == null) {
                f14 = Float.valueOf(0.0f);
            }
            hashMap.put(y.b.f83919g, f14);
            Float f15 = rectArgs.f47361y;
            if (f15 == null) {
                f15 = Float.valueOf(0.0f);
            }
            hashMap.put(y.b.f83920h, f15);
            Float f16 = rectArgs.width;
            if (f16 == null) {
                f16 = Float.valueOf(0.0f);
            }
            hashMap.put("width", f16);
            Float f17 = rectArgs.height;
            if (f17 == null) {
                f17 = Float.valueOf(0.0f);
            }
            hashMap.put("height", f17);
            Float f18 = rectArgs.cornerRadius;
            if (f18 == null) {
                f18 = Float.valueOf(0.0f);
            }
            hashMap.put("cornerRadius", f18);
        }
        this.f47226b = hashMap;
    }

    private final void m(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        JSONObject optJSONObject = jSONObject.optJSONObject("args");
        if (optJSONObject != null) {
            Iterator<String> keys = optJSONObject.keys();
            Intrinsics.checkExpressionValueIsNotNull(keys, "values.keys()");
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = optJSONObject.get(next);
                if (obj != null) {
                    hashMap.put(next, obj);
                }
            }
            this.f47226b = hashMap;
        }
    }

    private final void n(ShapeEntity shapeEntity) {
        ShapeEntity.ShapeStyle shapeStyle = shapeEntity.styles;
        if (shapeStyle != null) {
            a aVar = new a();
            ShapeEntity.ShapeStyle.RGBAColor rGBAColor = shapeStyle.fill;
            if (rGBAColor != null) {
                float d4 = d(rGBAColor);
                float b10 = b(rGBAColor);
                Float f10 = rGBAColor.f47366a;
                int floatValue = (int) ((f10 != null ? f10.floatValue() : 0.0f) * b10);
                Float f11 = rGBAColor.f47369r;
                int floatValue2 = (int) ((f11 != null ? f11.floatValue() : 0.0f) * d4);
                Float f12 = rGBAColor.f47368g;
                int floatValue3 = (int) ((f12 != null ? f12.floatValue() : 0.0f) * d4);
                Float f13 = rGBAColor.f47367b;
                aVar.h(Color.argb(floatValue, floatValue2, floatValue3, (int) ((f13 != null ? f13.floatValue() : 0.0f) * d4)));
            }
            ShapeEntity.ShapeStyle.RGBAColor rGBAColor2 = shapeStyle.stroke;
            if (rGBAColor2 != null) {
                float d10 = d(rGBAColor2);
                float b11 = b(rGBAColor2);
                Float f14 = rGBAColor2.f47366a;
                int floatValue4 = (int) ((f14 != null ? f14.floatValue() : 0.0f) * b11);
                Float f15 = rGBAColor2.f47369r;
                int floatValue5 = (int) ((f15 != null ? f15.floatValue() : 0.0f) * d10);
                Float f16 = rGBAColor2.f47368g;
                int floatValue6 = (int) ((f16 != null ? f16.floatValue() : 0.0f) * d10);
                Float f17 = rGBAColor2.f47367b;
                aVar.m(Color.argb(floatValue4, floatValue5, floatValue6, (int) ((f17 != null ? f17.floatValue() : 0.0f) * d10)));
            }
            Float f18 = shapeStyle.strokeWidth;
            aVar.n(f18 != null ? f18.floatValue() : 0.0f);
            ShapeEntity.ShapeStyle.LineCap lineCap = shapeStyle.lineCap;
            if (lineCap != null) {
                int i4 = d.$EnumSwitchMapping$1[lineCap.ordinal()];
                if (i4 == 1) {
                    aVar.i("butt");
                } else if (i4 == 2) {
                    aVar.i("round");
                } else if (i4 == 3) {
                    aVar.i("square");
                }
            }
            ShapeEntity.ShapeStyle.LineJoin lineJoin = shapeStyle.lineJoin;
            if (lineJoin != null) {
                int i10 = d.$EnumSwitchMapping$2[lineJoin.ordinal()];
                if (i10 == 1) {
                    aVar.k("bevel");
                } else if (i10 == 2) {
                    aVar.k("miter");
                } else if (i10 == 3) {
                    aVar.k("round");
                }
            }
            Float f19 = shapeStyle.miterLimit;
            aVar.l((int) (f19 != null ? f19.floatValue() : 0.0f));
            aVar.j(new float[3]);
            Float f20 = shapeStyle.lineDashI;
            if (f20 != null) {
                aVar.c()[0] = f20.floatValue();
            }
            Float f21 = shapeStyle.lineDashII;
            if (f21 != null) {
                aVar.c()[1] = f21.floatValue();
            }
            Float f22 = shapeStyle.lineDashIII;
            if (f22 != null) {
                aVar.c()[2] = f22.floatValue();
            }
            this.f47227c = aVar;
        }
    }

    private final void o(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("styles");
        if (optJSONObject != null) {
            a aVar = new a();
            JSONArray optJSONArray = optJSONObject.optJSONArray("fill");
            if (optJSONArray != null && optJSONArray.length() == 4) {
                double e4 = e(optJSONArray);
                aVar.h(Color.argb((int) (optJSONArray.optDouble(3) * c(optJSONArray)), (int) (optJSONArray.optDouble(0) * e4), (int) (optJSONArray.optDouble(1) * e4), (int) (optJSONArray.optDouble(2) * e4)));
            }
            JSONArray optJSONArray2 = optJSONObject.optJSONArray("stroke");
            if (optJSONArray2 != null && optJSONArray2.length() == 4) {
                double e10 = e(optJSONArray2);
                aVar.m(Color.argb((int) (optJSONArray2.optDouble(3) * c(optJSONArray2)), (int) (optJSONArray2.optDouble(0) * e10), (int) (optJSONArray2.optDouble(1) * e10), (int) (optJSONArray2.optDouble(2) * e10)));
            }
            aVar.n((float) optJSONObject.optDouble("strokeWidth", 0.0d));
            String optString = optJSONObject.optString("lineCap", "butt");
            Intrinsics.checkExpressionValueIsNotNull(optString, "it.optString(\"lineCap\", \"butt\")");
            aVar.i(optString);
            String optString2 = optJSONObject.optString("lineJoin", "miter");
            Intrinsics.checkExpressionValueIsNotNull(optString2, "it.optString(\"lineJoin\", \"miter\")");
            aVar.k(optString2);
            aVar.l(optJSONObject.optInt("miterLimit", 0));
            JSONArray optJSONArray3 = optJSONObject.optJSONArray("lineDash");
            if (optJSONArray3 != null) {
                aVar.j(new float[optJSONArray3.length()]);
                int length = optJSONArray3.length();
                for (int i4 = 0; i4 < length; i4++) {
                    aVar.c()[i4] = (float) optJSONArray3.optDouble(i4, 0.0d);
                }
            }
            this.f47227c = aVar;
        }
    }

    private final void p(ShapeEntity shapeEntity) {
        Transform transform = shapeEntity.transform;
        if (transform != null) {
            Matrix matrix = new Matrix();
            float[] fArr = new float[9];
            Float f10 = transform.f47374a;
            float floatValue = f10 != null ? f10.floatValue() : 1.0f;
            Float f11 = transform.f47375b;
            float floatValue2 = f11 != null ? f11.floatValue() : 0.0f;
            Float f12 = transform.f47376c;
            float floatValue3 = f12 != null ? f12.floatValue() : 0.0f;
            Float f13 = transform.f47377d;
            float floatValue4 = f13 != null ? f13.floatValue() : 1.0f;
            Float f14 = transform.tx;
            float floatValue5 = f14 != null ? f14.floatValue() : 0.0f;
            Float f15 = transform.ty;
            float floatValue6 = f15 != null ? f15.floatValue() : 0.0f;
            fArr[0] = floatValue;
            fArr[1] = floatValue3;
            fArr[2] = floatValue5;
            fArr[3] = floatValue2;
            fArr[4] = floatValue4;
            fArr[5] = floatValue6;
            fArr[6] = 0.0f;
            fArr[7] = 0.0f;
            fArr[8] = 1.0f;
            matrix.setValues(fArr);
            this.f47228d = matrix;
        }
    }

    private final void q(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("transform");
        if (optJSONObject != null) {
            Matrix matrix = new Matrix();
            double optDouble = optJSONObject.optDouble("a", 1.0d);
            double optDouble2 = optJSONObject.optDouble("b", 0.0d);
            float f10 = (float) 0.0d;
            matrix.setValues(new float[]{(float) optDouble, (float) optJSONObject.optDouble("c", 0.0d), (float) optJSONObject.optDouble("tx", 0.0d), (float) optDouble2, (float) optJSONObject.optDouble("d", 1.0d), (float) optJSONObject.optDouble(p.a.f93055i, 0.0d), f10, f10, (float) 1.0d});
            this.f47228d = matrix;
        }
    }

    private final void r(ShapeEntity shapeEntity) {
        Type type;
        ShapeEntity.ShapeType shapeType = shapeEntity.type;
        if (shapeType != null) {
            int i4 = d.$EnumSwitchMapping$0[shapeType.ordinal()];
            if (i4 == 1) {
                type = Type.shape;
            } else if (i4 == 2) {
                type = Type.rect;
            } else if (i4 == 3) {
                type = Type.ellipse;
            } else if (i4 != 4) {
                throw new NoWhenBranchMatchedException();
            } else {
                type = Type.keep;
            }
            this.f47225a = type;
        }
    }

    private final void s(JSONObject jSONObject) {
        boolean equals;
        boolean equals2;
        boolean equals3;
        boolean equals4;
        String optString = jSONObject.optString("type");
        if (optString != null) {
            equals = StringsKt__StringsJVMKt.equals(optString, "shape", true);
            if (equals) {
                this.f47225a = Type.shape;
                return;
            }
            equals2 = StringsKt__StringsJVMKt.equals(optString, "rect", true);
            if (equals2) {
                this.f47225a = Type.rect;
                return;
            }
            equals3 = StringsKt__StringsJVMKt.equals(optString, "ellipse", true);
            if (equals3) {
                this.f47225a = Type.ellipse;
                return;
            }
            equals4 = StringsKt__StringsJVMKt.equals(optString, "keep", true);
            if (equals4) {
                this.f47225a = Type.keep;
            }
        }
    }

    public final void a() {
        if (this.f47229e != null) {
            return;
        }
        e.a().reset();
        Type type = this.f47225a;
        if (type == Type.shape) {
            Map<String, ? extends Object> map = this.f47226b;
            Object obj = map != null ? map.get("d") : null;
            String str = obj instanceof String ? obj : null;
            if (str != null) {
                new b(str).a(e.a());
            }
        } else if (type == Type.ellipse) {
            Map<String, ? extends Object> map2 = this.f47226b;
            Object obj2 = map2 != null ? map2.get(y.b.f83919g) : null;
            if (!(obj2 instanceof Number)) {
                obj2 = null;
            }
            Number number = (Number) obj2;
            if (number == null) {
                return;
            }
            Map<String, ? extends Object> map3 = this.f47226b;
            Object obj3 = map3 != null ? map3.get(y.b.f83920h) : null;
            if (!(obj3 instanceof Number)) {
                obj3 = null;
            }
            Number number2 = (Number) obj3;
            if (number2 == null) {
                return;
            }
            Map<String, ? extends Object> map4 = this.f47226b;
            Object obj4 = map4 != null ? map4.get("radiusX") : null;
            if (!(obj4 instanceof Number)) {
                obj4 = null;
            }
            Number number3 = (Number) obj4;
            if (number3 == null) {
                return;
            }
            Map<String, ? extends Object> map5 = this.f47226b;
            Object obj5 = map5 != null ? map5.get("radiusY") : null;
            Number number4 = (Number) (obj5 instanceof Number ? obj5 : null);
            if (number4 == null) {
                return;
            }
            float floatValue = number.floatValue();
            float floatValue2 = number2.floatValue();
            float floatValue3 = number3.floatValue();
            float floatValue4 = number4.floatValue();
            e.a().addOval(new RectF(floatValue - floatValue3, floatValue2 - floatValue4, floatValue + floatValue3, floatValue2 + floatValue4), Path.Direction.CW);
        } else if (type == Type.rect) {
            Map<String, ? extends Object> map6 = this.f47226b;
            Object obj6 = map6 != null ? map6.get(y.b.f83919g) : null;
            if (!(obj6 instanceof Number)) {
                obj6 = null;
            }
            Number number5 = (Number) obj6;
            if (number5 == null) {
                return;
            }
            Map<String, ? extends Object> map7 = this.f47226b;
            Object obj7 = map7 != null ? map7.get(y.b.f83920h) : null;
            if (!(obj7 instanceof Number)) {
                obj7 = null;
            }
            Number number6 = (Number) obj7;
            if (number6 == null) {
                return;
            }
            Map<String, ? extends Object> map8 = this.f47226b;
            Object obj8 = map8 != null ? map8.get("width") : null;
            if (!(obj8 instanceof Number)) {
                obj8 = null;
            }
            Number number7 = (Number) obj8;
            if (number7 == null) {
                return;
            }
            Map<String, ? extends Object> map9 = this.f47226b;
            Object obj9 = map9 != null ? map9.get("height") : null;
            if (!(obj9 instanceof Number)) {
                obj9 = null;
            }
            Number number8 = (Number) obj9;
            if (number8 == null) {
                return;
            }
            Map<String, ? extends Object> map10 = this.f47226b;
            Object obj10 = map10 != null ? map10.get("cornerRadius") : null;
            Number number9 = obj10 instanceof Number ? obj10 : null;
            if (number9 == null) {
                return;
            }
            float floatValue5 = number5.floatValue();
            float floatValue6 = number6.floatValue();
            float floatValue7 = number7.floatValue();
            float floatValue8 = number8.floatValue();
            float floatValue9 = number9.floatValue();
            e.a().addRoundRect(new RectF(floatValue5, floatValue6, floatValue7 + floatValue5, floatValue8 + floatValue6), floatValue9, floatValue9, Path.Direction.CW);
        }
        Path path = new Path();
        this.f47229e = path;
        path.set(e.a());
    }

    @h
    public final Map<String, Object> f() {
        return this.f47226b;
    }

    @h
    public final Path g() {
        return this.f47229e;
    }

    @h
    public final a h() {
        return this.f47227c;
    }

    @h
    public final Matrix i() {
        return this.f47228d;
    }

    @g
    public final Type j() {
        return this.f47225a;
    }

    public final boolean k() {
        return this.f47225a == Type.keep;
    }

    public final void t(@h Path path) {
        this.f47229e = path;
    }

    public SVGAVideoShapeEntity(@g ShapeEntity shapeEntity) {
        r(shapeEntity);
        l(shapeEntity);
        n(shapeEntity);
        p(shapeEntity);
    }
}
