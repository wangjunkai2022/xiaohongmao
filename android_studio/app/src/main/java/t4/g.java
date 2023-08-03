package t4;

import android.graphics.Matrix;
import com.facebook.common.callercontext.ContextChain;
import com.opensource.svgaplayer.entities.SVGAVideoShapeEntity;
import com.opensource.svgaplayer.proto.FrameEntity;
import com.opensource.svgaplayer.proto.Layout;
import com.opensource.svgaplayer.proto.ShapeEntity;
import com.opensource.svgaplayer.proto.Transform;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import m8.h;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: SVGAVideoSpriteFrameEntity.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)B\u0011\b\u0016\u0012\u0006\u0010'\u001a\u00020*¢\u0006\u0004\b(\u0010+R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR(\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006,"}, d2 = {"Lt4/g;", "", "", "alpha", "D", "a", "()D", "f", "(D)V", "Lu4/d;", com.google.android.exoplayer2.text.ttml.d.f25740w, "Lu4/d;", "b", "()Lu4/d;", "g", "(Lu4/d;)V", "Landroid/graphics/Matrix;", "transform", "Landroid/graphics/Matrix;", "e", "()Landroid/graphics/Matrix;", "j", "(Landroid/graphics/Matrix;)V", "Lt4/b;", "maskPath", "Lt4/b;", "c", "()Lt4/b;", "h", "(Lt4/b;)V", "", "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;", "shapes", "Ljava/util/List;", "d", "()Ljava/util/List;", ContextChain.TAG_INFRA, "(Ljava/util/List;)V", "Lorg/json/JSONObject;", "obj", "<init>", "(Lorg/json/JSONObject;)V", "Lcom/opensource/svgaplayer/proto/FrameEntity;", "(Lcom/opensource/svgaplayer/proto/FrameEntity;)V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private double f93848a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private u4.d f93849b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private Matrix f93850c;
    @h

    /* renamed from: d  reason: collision with root package name */
    private b f93851d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private List<SVGAVideoShapeEntity> f93852e;

    public g(@m8.g JSONObject jSONObject) {
        List<SVGAVideoShapeEntity> emptyList;
        boolean z9;
        List<SVGAVideoShapeEntity> list;
        g gVar = this;
        gVar.f93849b = new u4.d(0.0d, 0.0d, 0.0d, 0.0d);
        gVar.f93850c = new Matrix();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        gVar.f93852e = emptyList;
        gVar.f93848a = jSONObject.optDouble("alpha", 0.0d);
        JSONObject optJSONObject = jSONObject.optJSONObject(com.google.android.exoplayer2.text.ttml.d.f25740w);
        if (optJSONObject != null) {
            gVar.f93849b = new u4.d(optJSONObject.optDouble(y.b.f83919g, 0.0d), optJSONObject.optDouble(y.b.f83920h, 0.0d), optJSONObject.optDouble("width", 0.0d), optJSONObject.optDouble("height", 0.0d));
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("transform");
        if (optJSONObject2 != null) {
            double optDouble = optJSONObject2.optDouble("a", 1.0d);
            double optDouble2 = optJSONObject2.optDouble("b", 0.0d);
            double optDouble3 = optJSONObject2.optDouble("c", 0.0d);
            double optDouble4 = optJSONObject2.optDouble("d", 1.0d);
            double optDouble5 = optJSONObject2.optDouble("tx", 0.0d);
            double optDouble6 = optJSONObject2.optDouble(p.a.f93055i, 0.0d);
            float f10 = (float) optDouble3;
            z9 = true;
            float f11 = (float) 0.0d;
            float[] fArr = {(float) optDouble, f10, (float) optDouble5, (float) optDouble2, (float) optDouble4, (float) optDouble6, f11, f11, (float) 1.0d};
            gVar = this;
            gVar.f93850c.setValues(fArr);
        } else {
            z9 = true;
        }
        String optString = jSONObject.optString("clipPath");
        if (optString != null) {
            if (optString.length() <= 0 ? false : z9) {
                gVar.f93851d = new b(optString);
            }
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("shapes");
        if (optJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            int length = optJSONArray.length();
            for (int i4 = 0; i4 < length; i4++) {
                JSONObject optJSONObject3 = optJSONArray.optJSONObject(i4);
                if (optJSONObject3 != null) {
                    arrayList.add(new SVGAVideoShapeEntity(optJSONObject3));
                }
            }
            list = CollectionsKt___CollectionsKt.toList(arrayList);
            gVar.f93852e = list;
        }
    }

    public final double a() {
        return this.f93848a;
    }

    @m8.g
    public final u4.d b() {
        return this.f93849b;
    }

    @h
    public final b c() {
        return this.f93851d;
    }

    @m8.g
    public final List<SVGAVideoShapeEntity> d() {
        return this.f93852e;
    }

    @m8.g
    public final Matrix e() {
        return this.f93850c;
    }

    public final void f(double d4) {
        this.f93848a = d4;
    }

    public final void g(@m8.g u4.d dVar) {
        this.f93849b = dVar;
    }

    public final void h(@h b bVar) {
        this.f93851d = bVar;
    }

    public final void i(@m8.g List<SVGAVideoShapeEntity> list) {
        this.f93852e = list;
    }

    public final void j(@m8.g Matrix matrix) {
        this.f93850c = matrix;
    }

    public g(@m8.g FrameEntity frameEntity) {
        List<SVGAVideoShapeEntity> emptyList;
        Float f10;
        int collectionSizeOrDefault;
        Float f11;
        this.f93849b = new u4.d(0.0d, 0.0d, 0.0d, 0.0d);
        this.f93850c = new Matrix();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.f93852e = emptyList;
        this.f93848a = frameEntity.alpha != null ? f10.floatValue() : 0.0f;
        Layout layout = frameEntity.layout;
        if (layout != null) {
            Float f12 = layout.f47352x;
            double floatValue = f12 != null ? f12.floatValue() : 0.0f;
            Float f13 = layout.f47353y;
            double floatValue2 = f13 != null ? f13.floatValue() : 0.0f;
            Float f14 = layout.width;
            this.f93849b = new u4.d(floatValue, floatValue2, f14 != null ? f14.floatValue() : 0.0f, layout.height != null ? f11.floatValue() : 0.0f);
        }
        Transform transform = frameEntity.transform;
        if (transform != null) {
            float[] fArr = new float[9];
            Float f15 = transform.f47374a;
            float floatValue3 = f15 != null ? f15.floatValue() : 1.0f;
            Float f16 = transform.f47375b;
            float floatValue4 = f16 != null ? f16.floatValue() : 0.0f;
            Float f17 = transform.f47376c;
            float floatValue5 = f17 != null ? f17.floatValue() : 0.0f;
            Float f18 = transform.f47377d;
            float floatValue6 = f18 != null ? f18.floatValue() : 1.0f;
            Float f19 = transform.tx;
            float floatValue7 = f19 != null ? f19.floatValue() : 0.0f;
            Float f20 = transform.ty;
            float floatValue8 = f20 != null ? f20.floatValue() : 0.0f;
            fArr[0] = floatValue3;
            fArr[1] = floatValue5;
            fArr[2] = floatValue7;
            fArr[3] = floatValue4;
            fArr[4] = floatValue6;
            fArr[5] = floatValue8;
            fArr[6] = 0.0f;
            fArr[7] = 0.0f;
            fArr[8] = 1.0f;
            this.f93850c.setValues(fArr);
        }
        String str = frameEntity.clipPath;
        if (str != null) {
            str = str.length() > 0 ? str : null;
            if (str != null) {
                this.f93851d = new b(str);
            }
        }
        List<ShapeEntity> list = frameEntity.shapes;
        Intrinsics.checkExpressionValueIsNotNull(list, "obj.shapes");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ShapeEntity it : list) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            arrayList.add(new SVGAVideoShapeEntity(it));
        }
        this.f93852e = arrayList;
    }
}
