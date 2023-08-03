package com.opensource.svgaplayer.drawer;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.media.SoundPool;
import android.os.Build;
import android.text.BoringLayout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.widget.ImageView;
import com.facebook.common.callercontext.ContextChain;
import com.koushikdutta.async.http.cache.ResponseCacheMiddleware;
import com.opensource.svgaplayer.drawer.a;
import com.opensource.svgaplayer.entities.SVGAVideoShapeEntity;
import com.opensource.svgaplayer.k;
import com.opensource.svgaplayer.l;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;

/* compiled from: SVGACanvasDrawer.kt */
@Metadata(bv = {}, d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0002 >B\u0017\u0012\u0006\u0010;\u001a\u00020:\u0012\u0006\u00109\u001a\u000205¢\u0006\u0004\b<\u0010=J\"\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0010\u0010\u0006\u001a\f\u0012\b\u0012\u00060\u0005R\u00020\u00010\u0004H\u0002J\"\u0010\t\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0010\u0010\u0006\u001a\f\u0012\b\u0012\u00060\u0005R\u00020\u00010\u0004H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002J$\u0010\u0013\u001a\u00020\u000b2\n\u0010\u0010\u001a\u00060\u0005R\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u0002H\u0002J\u001c\u0010\u0014\u001a\u00020\u000b2\n\u0010\u0010\u001a\u00060\u0005R\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J,\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00152\n\u0010\u0010\u001a\u00060\u0005R\u00020\u00012\u0006\u0010\u0017\u001a\u00020\rH\u0002J\u001c\u0010\u0019\u001a\u00020\u000b2\n\u0010\u0010\u001a\u00060\u0005R\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\rH\u0002J$\u0010\u001d\u001a\u00020\u000b2\n\u0010\u0010\u001a\u00060\u0005R\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u0002H\u0002J \u0010 \u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u001eH\u0016R\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R0\u0010*\u001a\u001e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00150%j\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u0015`'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010-\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010,R\u001e\u00100\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010/R\u001e\u00101\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010/R\u0014\u00104\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u00103R\u0017\u00109\u001a\u0002058\u0006¢\u0006\f\n\u0004\b\u0018\u00106\u001a\u0004\b7\u00108¨\u0006?"}, d2 = {"Lcom/opensource/svgaplayer/drawer/b;", "Lcom/opensource/svgaplayer/drawer/a;", "", "spriteIndex", "", "Lcom/opensource/svgaplayer/drawer/a$a;", "sprites", "", "l", "m", "frameIndex", "", "o", "Landroid/graphics/Matrix;", "transform", "p", "sprite", "Landroid/graphics/Canvas;", "canvas", ContextChain.TAG_INFRA, "g", "Landroid/graphics/Bitmap;", "drawingBitmap", "frameMatrix", "j", "h", "matrix", "", "n", "f", "Landroid/widget/ImageView$ScaleType;", "scaleType", "a", "Lcom/opensource/svgaplayer/drawer/b$b;", "d", "Lcom/opensource/svgaplayer/drawer/b$b;", "sharedValues", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "e", "Ljava/util/HashMap;", "drawTextCache", "Lcom/opensource/svgaplayer/drawer/b$a;", "Lcom/opensource/svgaplayer/drawer/b$a;", "pathCache", "", "[Ljava/lang/Boolean;", "beginIndexList", "endIndexList", "", "[F", "matrixScaleTempValues", "Lcom/opensource/svgaplayer/g;", "Lcom/opensource/svgaplayer/g;", "k", "()Lcom/opensource/svgaplayer/g;", "dynamicItem", "Lcom/opensource/svgaplayer/l;", "videoItem", "<init>", "(Lcom/opensource/svgaplayer/l;Lcom/opensource/svgaplayer/g;)V", "b", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class b extends com.opensource.svgaplayer.drawer.a {

    /* renamed from: d  reason: collision with root package name */
    private final C0395b f47207d;

    /* renamed from: e  reason: collision with root package name */
    private final HashMap<String, Bitmap> f47208e;

    /* renamed from: f  reason: collision with root package name */
    private final a f47209f;

    /* renamed from: g  reason: collision with root package name */
    private Boolean[] f47210g;

    /* renamed from: h  reason: collision with root package name */
    private Boolean[] f47211h;

    /* renamed from: i  reason: collision with root package name */
    private final float[] f47212i;
    @g

    /* renamed from: j  reason: collision with root package name */
    private final com.opensource.svgaplayer.g f47213j;

    /* compiled from: SVGACanvasDrawer.kt */
    @Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006R\u0016\u0010\f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u000bR\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u000bR0\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u000ej\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b`\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/opensource/svgaplayer/drawer/b$a;", "", "Landroid/graphics/Canvas;", "canvas", "", "b", "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;", "shape", "Landroid/graphics/Path;", "a", "", "I", "canvasWidth", "canvasHeight", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "c", "Ljava/util/HashMap;", ResponseCacheMiddleware.f44810o, "<init>", "()V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private int f47214a;

        /* renamed from: b  reason: collision with root package name */
        private int f47215b;

        /* renamed from: c  reason: collision with root package name */
        private final HashMap<SVGAVideoShapeEntity, Path> f47216c = new HashMap<>();

        @g
        public final Path a(@g SVGAVideoShapeEntity sVGAVideoShapeEntity) {
            if (!this.f47216c.containsKey(sVGAVideoShapeEntity)) {
                Path path = new Path();
                path.set(sVGAVideoShapeEntity.g());
                this.f47216c.put(sVGAVideoShapeEntity, path);
            }
            Path path2 = this.f47216c.get(sVGAVideoShapeEntity);
            if (path2 == null) {
                Intrinsics.throwNpe();
            }
            return path2;
        }

        public final void b(@g Canvas canvas) {
            if (this.f47214a != canvas.getWidth() || this.f47215b != canvas.getHeight()) {
                this.f47216c.clear();
            }
            this.f47214a = canvas.getWidth();
            this.f47215b = canvas.getHeight();
        }
    }

    /* compiled from: SVGACanvasDrawer.kt */
    @Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001f\u0010 J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0002J\u0006\u0010\f\u001a\u00020\u000bJ\u0016\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rR\u0014\u0010\u0013\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0012R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u001bR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u001d¨\u0006!"}, d2 = {"Lcom/opensource/svgaplayer/drawer/b$b;", "", "Landroid/graphics/Paint;", "f", "Landroid/graphics/Path;", "g", "h", "Landroid/graphics/Matrix;", "c", "d", "b", "Landroid/graphics/Bitmap;", "e", "", "width", "height", "Landroid/graphics/Canvas;", "a", "Landroid/graphics/Paint;", "sharedPaint", "Landroid/graphics/Path;", "sharedPath", "sharedPath2", "Landroid/graphics/Matrix;", "sharedMatrix", "sharedMatrix2", "shareMattePaint", "Landroid/graphics/Canvas;", "shareMatteCanvas", "Landroid/graphics/Bitmap;", "sharedMatteBitmap", "<init>", "()V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* renamed from: com.opensource.svgaplayer.drawer.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0395b {

        /* renamed from: a  reason: collision with root package name */
        private final Paint f47217a = new Paint();

        /* renamed from: b  reason: collision with root package name */
        private final Path f47218b = new Path();

        /* renamed from: c  reason: collision with root package name */
        private final Path f47219c = new Path();

        /* renamed from: d  reason: collision with root package name */
        private final Matrix f47220d = new Matrix();

        /* renamed from: e  reason: collision with root package name */
        private final Matrix f47221e = new Matrix();

        /* renamed from: f  reason: collision with root package name */
        private final Paint f47222f = new Paint();

        /* renamed from: g  reason: collision with root package name */
        private Canvas f47223g;

        /* renamed from: h  reason: collision with root package name */
        private Bitmap f47224h;

        @g
        public final Canvas a(int i4, int i10) {
            if (this.f47223g == null) {
                this.f47224h = Bitmap.createBitmap(i4, i10, Bitmap.Config.ALPHA_8);
            }
            return new Canvas(this.f47224h);
        }

        @g
        public final Paint b() {
            this.f47222f.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            return this.f47222f;
        }

        @g
        public final Matrix c() {
            this.f47220d.reset();
            return this.f47220d;
        }

        @g
        public final Matrix d() {
            this.f47221e.reset();
            return this.f47221e;
        }

        @g
        public final Bitmap e() {
            Bitmap bitmap = this.f47224h;
            if (bitmap != null) {
                return bitmap;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.Bitmap");
        }

        @g
        public final Paint f() {
            this.f47217a.reset();
            return this.f47217a;
        }

        @g
        public final Path g() {
            this.f47218b.reset();
            return this.f47218b;
        }

        @g
        public final Path h() {
            this.f47219c.reset();
            return this.f47219c;
        }
    }

    public b(@g l lVar, @g com.opensource.svgaplayer.g gVar) {
        super(lVar);
        this.f47213j = gVar;
        this.f47207d = new C0395b();
        this.f47208e = new HashMap<>();
        this.f47209f = new a();
        this.f47212i = new float[16];
    }

    private final void f(a.C0394a c0394a, Canvas canvas, int i4) {
        String b10 = c0394a.b();
        if (b10 != null) {
            Function2<Canvas, Integer, Boolean> function2 = this.f47213j.c().get(b10);
            if (function2 != null) {
                Matrix p9 = p(c0394a.a().e());
                canvas.save();
                canvas.concat(p9);
                function2.invoke(canvas, Integer.valueOf(i4));
                canvas.restore();
            }
            Function4<Canvas, Integer, Integer, Integer, Boolean> function4 = this.f47213j.d().get(b10);
            if (function4 != null) {
                Matrix p10 = p(c0394a.a().e());
                canvas.save();
                canvas.concat(p10);
                function4.invoke(canvas, Integer.valueOf(i4), Integer.valueOf((int) c0394a.a().b().b()), Integer.valueOf((int) c0394a.a().b().a()));
                canvas.restore();
            }
        }
    }

    private final void g(a.C0394a c0394a, Canvas canvas) {
        boolean endsWith$default;
        String str;
        String b10 = c0394a.b();
        if (b10 == null || Intrinsics.areEqual(this.f47213j.e().get(b10), Boolean.TRUE)) {
            return;
        }
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(b10, ".matte", false, 2, null);
        if (endsWith$default) {
            str = b10.substring(0, b10.length() - 6);
            Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        } else {
            str = b10;
        }
        Bitmap bitmap = this.f47213j.g().get(str);
        if (bitmap == null) {
            bitmap = c().p().get(str);
        }
        Bitmap bitmap2 = bitmap;
        if (bitmap2 != null) {
            Matrix p9 = p(c0394a.a().e());
            Paint f10 = this.f47207d.f();
            f10.setAntiAlias(c().l());
            f10.setFilterBitmap(c().l());
            f10.setAlpha((int) (c0394a.a().a() * 255));
            if (c0394a.a().c() != null) {
                t4.b c10 = c0394a.a().c();
                if (c10 == null) {
                    return;
                }
                canvas.save();
                Path g4 = this.f47207d.g();
                c10.a(g4);
                g4.transform(p9);
                canvas.clipPath(g4);
                p9.preScale((float) (c0394a.a().b().b() / bitmap2.getWidth()), (float) (c0394a.a().b().a() / bitmap2.getHeight()));
                if (!bitmap2.isRecycled()) {
                    canvas.drawBitmap(bitmap2, p9, f10);
                }
                canvas.restore();
            } else {
                p9.preScale((float) (c0394a.a().b().b() / bitmap2.getWidth()), (float) (c0394a.a().b().a() / bitmap2.getHeight()));
                if (!bitmap2.isRecycled()) {
                    canvas.drawBitmap(bitmap2, p9, f10);
                }
            }
            com.opensource.svgaplayer.b bVar = this.f47213j.f().get(b10);
            if (bVar != null) {
                float[] fArr = {0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
                p9.getValues(fArr);
                bVar.a(b10, (int) fArr[2], (int) fArr[5], (int) ((bitmap2.getWidth() * fArr[0]) + fArr[2]), (int) ((bitmap2.getHeight() * fArr[4]) + fArr[5]));
            }
            j(canvas, bitmap2, c0394a, p9);
        }
    }

    private final void h(a.C0394a c0394a, Canvas canvas) {
        SVGAVideoShapeEntity.a h4;
        float[] c10;
        String d4;
        boolean equals;
        boolean equals2;
        boolean equals3;
        String b10;
        boolean equals4;
        boolean equals5;
        boolean equals6;
        int a10;
        Matrix p9 = p(c0394a.a().e());
        for (SVGAVideoShapeEntity sVGAVideoShapeEntity : c0394a.a().d()) {
            sVGAVideoShapeEntity.a();
            if (sVGAVideoShapeEntity.g() != null) {
                Paint f10 = this.f47207d.f();
                f10.reset();
                f10.setAntiAlias(c().l());
                double d10 = 255;
                f10.setAlpha((int) (c0394a.a().a() * d10));
                Path g4 = this.f47207d.g();
                g4.reset();
                g4.addPath(this.f47209f.a(sVGAVideoShapeEntity));
                Matrix d11 = this.f47207d.d();
                d11.reset();
                Matrix i4 = sVGAVideoShapeEntity.i();
                if (i4 != null) {
                    d11.postConcat(i4);
                }
                d11.postConcat(p9);
                g4.transform(d11);
                SVGAVideoShapeEntity.a h10 = sVGAVideoShapeEntity.h();
                if (h10 != null && (a10 = h10.a()) != 0) {
                    f10.setStyle(Paint.Style.FILL);
                    f10.setColor(a10);
                    int min = Math.min(255, Math.max(0, (int) (c0394a.a().a() * d10)));
                    if (min != 255) {
                        f10.setAlpha(min);
                    }
                    if (c0394a.a().c() != null) {
                        canvas.save();
                    }
                    t4.b c11 = c0394a.a().c();
                    if (c11 != null) {
                        Path h11 = this.f47207d.h();
                        c11.a(h11);
                        h11.transform(p9);
                        canvas.clipPath(h11);
                    }
                    canvas.drawPath(g4, f10);
                    if (c0394a.a().c() != null) {
                        canvas.restore();
                    }
                }
                SVGAVideoShapeEntity.a h12 = sVGAVideoShapeEntity.h();
                if (h12 != null) {
                    float f11 = 0;
                    if (h12.g() > f11) {
                        f10.setAlpha((int) (c0394a.a().a() * d10));
                        f10.setStyle(Paint.Style.STROKE);
                        SVGAVideoShapeEntity.a h13 = sVGAVideoShapeEntity.h();
                        if (h13 != null) {
                            f10.setColor(h13.f());
                            int min2 = Math.min(255, Math.max(0, (int) (c0394a.a().a() * d10)));
                            if (min2 != 255) {
                                f10.setAlpha(min2);
                            }
                        }
                        float n9 = n(p9);
                        SVGAVideoShapeEntity.a h14 = sVGAVideoShapeEntity.h();
                        if (h14 != null) {
                            f10.setStrokeWidth(h14.g() * n9);
                        }
                        SVGAVideoShapeEntity.a h15 = sVGAVideoShapeEntity.h();
                        if (h15 != null && (b10 = h15.b()) != null) {
                            equals4 = StringsKt__StringsJVMKt.equals(b10, "butt", true);
                            if (equals4) {
                                f10.setStrokeCap(Paint.Cap.BUTT);
                            } else {
                                equals5 = StringsKt__StringsJVMKt.equals(b10, "round", true);
                                if (equals5) {
                                    f10.setStrokeCap(Paint.Cap.ROUND);
                                } else {
                                    equals6 = StringsKt__StringsJVMKt.equals(b10, "square", true);
                                    if (equals6) {
                                        f10.setStrokeCap(Paint.Cap.SQUARE);
                                    }
                                }
                            }
                        }
                        SVGAVideoShapeEntity.a h16 = sVGAVideoShapeEntity.h();
                        if (h16 != null && (d4 = h16.d()) != null) {
                            equals = StringsKt__StringsJVMKt.equals(d4, "miter", true);
                            if (equals) {
                                f10.setStrokeJoin(Paint.Join.MITER);
                            } else {
                                equals2 = StringsKt__StringsJVMKt.equals(d4, "round", true);
                                if (equals2) {
                                    f10.setStrokeJoin(Paint.Join.ROUND);
                                } else {
                                    equals3 = StringsKt__StringsJVMKt.equals(d4, "bevel", true);
                                    if (equals3) {
                                        f10.setStrokeJoin(Paint.Join.BEVEL);
                                    }
                                }
                            }
                        }
                        if (sVGAVideoShapeEntity.h() != null) {
                            f10.setStrokeMiter(h4.e() * n9);
                        }
                        SVGAVideoShapeEntity.a h17 = sVGAVideoShapeEntity.h();
                        if (h17 != null && (c10 = h17.c()) != null && c10.length == 3 && (c10[0] > f11 || c10[1] > f11)) {
                            float[] fArr = new float[2];
                            fArr[0] = (c10[0] >= 1.0f ? c10[0] : 1.0f) * n9;
                            fArr[1] = (c10[1] >= 0.1f ? c10[1] : 0.1f) * n9;
                            f10.setPathEffect(new DashPathEffect(fArr, c10[2] * n9));
                        }
                        if (c0394a.a().c() != null) {
                            canvas.save();
                        }
                        t4.b c12 = c0394a.a().c();
                        if (c12 != null) {
                            Path h18 = this.f47207d.h();
                            c12.a(h18);
                            h18.transform(p9);
                            canvas.clipPath(h18);
                        }
                        canvas.drawPath(g4, f10);
                        if (c0394a.a().c() != null) {
                            canvas.restore();
                        }
                    }
                }
            }
        }
    }

    private final void i(a.C0394a c0394a, Canvas canvas, int i4) {
        g(c0394a, canvas);
        h(c0394a, canvas);
        f(c0394a, canvas, i4);
    }

    private final void j(Canvas canvas, Bitmap bitmap, a.C0394a c0394a, Matrix matrix) {
        int i4;
        StaticLayout layout;
        TextPaint drawingTextPaint;
        if (this.f47213j.l()) {
            this.f47208e.clear();
            this.f47213j.G(false);
        }
        String b10 = c0394a.b();
        if (b10 != null) {
            Bitmap bitmap2 = null;
            String str = this.f47213j.i().get(b10);
            if (str != null && (drawingTextPaint = this.f47213j.j().get(b10)) != null && (bitmap2 = this.f47208e.get(b10)) == null) {
                bitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                Canvas canvas2 = new Canvas(bitmap2);
                Intrinsics.checkExpressionValueIsNotNull(drawingTextPaint, "drawingTextPaint");
                drawingTextPaint.setAntiAlias(true);
                Paint.FontMetrics fontMetrics = drawingTextPaint.getFontMetrics();
                float f10 = 2;
                canvas2.drawText(str, rect.centerX(), (rect.centerY() - (fontMetrics.top / f10)) - (fontMetrics.bottom / f10), drawingTextPaint);
                HashMap<String, Bitmap> hashMap = this.f47208e;
                if (bitmap2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.graphics.Bitmap");
                }
                hashMap.put(b10, bitmap2);
            }
            BoringLayout it = this.f47213j.b().get(b10);
            if (it != null && (bitmap2 = this.f47208e.get(b10)) == null) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                TextPaint paint = it.getPaint();
                Intrinsics.checkExpressionValueIsNotNull(paint, "it.paint");
                paint.setAntiAlias(true);
                bitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas3 = new Canvas(bitmap2);
                canvas3.translate(0.0f, (bitmap.getHeight() - it.getHeight()) / 2);
                it.draw(canvas3);
                HashMap<String, Bitmap> hashMap2 = this.f47208e;
                if (bitmap2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.graphics.Bitmap");
                }
                hashMap2.put(b10, bitmap2);
            }
            StaticLayout it2 = this.f47213j.h().get(b10);
            if (it2 != null && (bitmap2 = this.f47208e.get(b10)) == null) {
                Intrinsics.checkExpressionValueIsNotNull(it2, "it");
                TextPaint paint2 = it2.getPaint();
                Intrinsics.checkExpressionValueIsNotNull(paint2, "it.paint");
                paint2.setAntiAlias(true);
                if (Build.VERSION.SDK_INT >= 23) {
                    try {
                        Field field = StaticLayout.class.getDeclaredField("mMaximumVisibleLineCount");
                        Intrinsics.checkExpressionValueIsNotNull(field, "field");
                        field.setAccessible(true);
                        i4 = field.getInt(it2);
                    } catch (Exception unused) {
                        i4 = Integer.MAX_VALUE;
                    }
                    layout = StaticLayout.Builder.obtain(it2.getText(), 0, it2.getText().length(), it2.getPaint(), bitmap.getWidth()).setAlignment(it2.getAlignment()).setMaxLines(i4).setEllipsize(TextUtils.TruncateAt.END).build();
                } else {
                    layout = new StaticLayout(it2.getText(), 0, it2.getText().length(), it2.getPaint(), bitmap.getWidth(), it2.getAlignment(), it2.getSpacingMultiplier(), it2.getSpacingAdd(), false);
                }
                bitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas4 = new Canvas(bitmap2);
                int height = bitmap.getHeight();
                Intrinsics.checkExpressionValueIsNotNull(layout, "layout");
                canvas4.translate(0.0f, (height - layout.getHeight()) / 2);
                layout.draw(canvas4);
                HashMap<String, Bitmap> hashMap3 = this.f47208e;
                if (bitmap2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.graphics.Bitmap");
                }
                hashMap3.put(b10, bitmap2);
            }
            if (bitmap2 != null) {
                Paint f11 = this.f47207d.f();
                f11.setAntiAlias(c().l());
                f11.setAlpha((int) (c0394a.a().a() * 255));
                if (c0394a.a().c() != null) {
                    t4.b c10 = c0394a.a().c();
                    if (c10 != null) {
                        canvas.save();
                        canvas.concat(matrix);
                        canvas.clipRect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                        f11.setShader(new BitmapShader(bitmap2, tileMode, tileMode));
                        Path g4 = this.f47207d.g();
                        c10.a(g4);
                        canvas.drawPath(g4, f11);
                        canvas.restore();
                        return;
                    }
                    return;
                }
                f11.setFilterBitmap(c().l());
                canvas.drawBitmap(bitmap2, matrix, f11);
            }
        }
    }

    private final boolean l(int i4, List<a.C0394a> list) {
        Boolean bool;
        int i10;
        a.C0394a c0394a;
        boolean endsWith$default;
        if (this.f47210g == null) {
            int size = list.size();
            Boolean[] boolArr = new Boolean[size];
            for (int i11 = 0; i11 < size; i11++) {
                boolArr[i11] = Boolean.FALSE;
            }
            for (Object obj : list) {
                int i12 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                a.C0394a c0394a2 = (a.C0394a) obj;
                String b10 = c0394a2.b();
                if (b10 != null) {
                    endsWith$default = StringsKt__StringsJVMKt.endsWith$default(b10, ".matte", false, 2, null);
                    i10 = endsWith$default ? i12 : 0;
                }
                String c10 = c0394a2.c();
                if (c10 != null && c10.length() > 0 && (c0394a = list.get(i10 - 1)) != null) {
                    String c11 = c0394a.c();
                    if (c11 == null || c11.length() == 0) {
                        boolArr[i10] = Boolean.TRUE;
                    } else if (!Intrinsics.areEqual(c0394a.c(), c0394a2.c())) {
                        boolArr[i10] = Boolean.TRUE;
                    }
                }
            }
            this.f47210g = boolArr;
        }
        Boolean[] boolArr2 = this.f47210g;
        if (boolArr2 == null || (bool = boolArr2[i4]) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    private final boolean m(int i4, List<a.C0394a> list) {
        Boolean bool;
        int i10;
        boolean endsWith$default;
        if (this.f47211h == null) {
            int size = list.size();
            Boolean[] boolArr = new Boolean[size];
            for (int i11 = 0; i11 < size; i11++) {
                boolArr[i11] = Boolean.FALSE;
            }
            for (Object obj : list) {
                int i12 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                a.C0394a c0394a = (a.C0394a) obj;
                String b10 = c0394a.b();
                if (b10 != null) {
                    endsWith$default = StringsKt__StringsJVMKt.endsWith$default(b10, ".matte", false, 2, null);
                    i10 = endsWith$default ? i12 : 0;
                }
                String c10 = c0394a.c();
                if (c10 != null && c10.length() > 0) {
                    if (i10 == list.size() - 1) {
                        boolArr[i10] = Boolean.TRUE;
                    } else {
                        a.C0394a c0394a2 = list.get(i12);
                        if (c0394a2 != null) {
                            String c11 = c0394a2.c();
                            if (c11 == null || c11.length() == 0) {
                                boolArr[i10] = Boolean.TRUE;
                            } else if (!Intrinsics.areEqual(c0394a2.c(), c0394a.c())) {
                                boolArr[i10] = Boolean.TRUE;
                            }
                        }
                    }
                }
            }
            this.f47211h = boolArr;
        }
        Boolean[] boolArr2 = this.f47211h;
        if (boolArr2 == null || (bool = boolArr2[i4]) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    private final float n(Matrix matrix) {
        matrix.getValues(this.f47212i);
        float[] fArr = this.f47212i;
        if (fArr[0] == 0.0f) {
            return 0.0f;
        }
        double d4 = fArr[0];
        double d10 = fArr[3];
        double d11 = fArr[1];
        double d12 = fArr[4];
        if (d4 * d12 == d10 * d11) {
            return 0.0f;
        }
        double sqrt = Math.sqrt((d4 * d4) + (d10 * d10));
        double d13 = d4 / sqrt;
        double d14 = d10 / sqrt;
        double d15 = (d13 * d11) + (d14 * d12);
        double d16 = d11 - (d13 * d15);
        double d17 = d12 - (d15 * d14);
        double sqrt2 = Math.sqrt((d16 * d16) + (d17 * d17));
        if (d13 * (d17 / sqrt2) < d14 * (d16 / sqrt2)) {
            sqrt = -sqrt;
        }
        return Math.abs(b().b() ? (float) sqrt : (float) sqrt2);
    }

    private final void o(int i4) {
        Integer d4;
        for (t4.a aVar : c().m()) {
            if (aVar.e() == i4) {
                k kVar = k.f47326e;
                if (kVar.g()) {
                    Integer d10 = aVar.d();
                    if (d10 != null) {
                        aVar.h(Integer.valueOf(kVar.j(d10.intValue())));
                    }
                } else {
                    SoundPool r9 = c().r();
                    if (r9 != null && (d4 = aVar.d()) != null) {
                        aVar.h(Integer.valueOf(r9.play(d4.intValue(), 1.0f, 1.0f, 1, 0, 1.0f)));
                    }
                }
            }
            if (aVar.b() <= i4) {
                Integer c10 = aVar.c();
                if (c10 != null) {
                    int intValue = c10.intValue();
                    k kVar2 = k.f47326e;
                    if (kVar2.g()) {
                        kVar2.o(intValue);
                    } else {
                        SoundPool r10 = c().r();
                        if (r10 != null) {
                            r10.stop(intValue);
                        }
                    }
                }
                aVar.h(null);
            }
        }
    }

    private final Matrix p(Matrix matrix) {
        Matrix c10 = this.f47207d.c();
        c10.postScale(b().c(), b().d());
        c10.postTranslate(b().e(), b().f());
        c10.preConcat(matrix);
        return c10;
    }

    @Override // com.opensource.svgaplayer.drawer.a
    public void a(@g Canvas canvas, int i4, @g ImageView.ScaleType scaleType) {
        boolean z9;
        a.C0394a c0394a;
        int i10;
        int i11;
        a.C0394a c0394a2;
        boolean endsWith$default;
        boolean endsWith$default2;
        super.a(canvas, i4, scaleType);
        o(i4);
        this.f47209f.b(canvas);
        List<a.C0394a> e4 = e(i4);
        if (e4.size() <= 0) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Object obj = null;
        this.f47210g = null;
        this.f47211h = null;
        boolean z10 = false;
        String b10 = e4.get(0).b();
        int i12 = 2;
        if (b10 != null) {
            endsWith$default2 = StringsKt__StringsJVMKt.endsWith$default(b10, ".matte", false, 2, null);
            z9 = endsWith$default2;
        } else {
            z9 = false;
        }
        int i13 = -1;
        int i14 = 0;
        for (Object obj2 : e4) {
            int i15 = i14 + 1;
            if (i14 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            a.C0394a c0394a3 = (a.C0394a) obj2;
            String b11 = c0394a3.b();
            if (b11 != null) {
                if (z9) {
                    endsWith$default = StringsKt__StringsJVMKt.endsWith$default(b11, ".matte", z10, i12, obj);
                    if (endsWith$default) {
                        linkedHashMap.put(b11, c0394a3);
                    }
                } else {
                    i(c0394a3, canvas, i4);
                }
                i14 = i15;
                obj = null;
                z10 = false;
                i12 = 2;
            }
            if (l(i14, e4)) {
                c0394a = c0394a3;
                i10 = i14;
                i11 = -1;
                i13 = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
            } else {
                c0394a = c0394a3;
                i10 = i14;
                i11 = -1;
            }
            i(c0394a, canvas, i4);
            if (m(i10, e4) && (c0394a2 = (a.C0394a) linkedHashMap.get(c0394a.c())) != null) {
                i(c0394a2, this.f47207d.a(canvas.getWidth(), canvas.getHeight()), i4);
                canvas.drawBitmap(this.f47207d.e(), 0.0f, 0.0f, this.f47207d.b());
                if (i13 != i11) {
                    canvas.restoreToCount(i13);
                } else {
                    canvas.restore();
                }
            }
            i14 = i15;
            obj = null;
            z10 = false;
            i12 = 2;
        }
        d(e4);
    }

    @g
    public final com.opensource.svgaplayer.g k() {
        return this.f47213j;
    }
}
