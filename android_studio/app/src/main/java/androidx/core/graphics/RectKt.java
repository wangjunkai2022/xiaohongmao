package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: Rect.kt */
@Metadata(d1 = {"\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\f\u001a\u0015\u0010\u0000\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\f\u001a\r\u0010\u0004\u001a\u00020\u0005*\u00020\u0001H\u0086\n\u001a\r\u0010\u0004\u001a\u00020\u0006*\u00020\u0003H\u0086\n\u001a\r\u0010\u0007\u001a\u00020\u0005*\u00020\u0001H\u0086\n\u001a\r\u0010\u0007\u001a\u00020\u0006*\u00020\u0003H\u0086\n\u001a\r\u0010\b\u001a\u00020\u0005*\u00020\u0001H\u0086\n\u001a\r\u0010\b\u001a\u00020\u0006*\u00020\u0003H\u0086\n\u001a\r\u0010\t\u001a\u00020\u0005*\u00020\u0001H\u0086\n\u001a\r\u0010\t\u001a\u00020\u0006*\u00020\u0003H\u0086\n\u001a\u0015\u0010\n\u001a\u00020\u000b*\u00020\u00012\u0006\u0010\f\u001a\u00020\rH\u0086\n\u001a\u0015\u0010\n\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\f\u001a\u00020\u000eH\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\rH\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0011*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0005H\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000eH\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0011*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0006H\u0086\n\u001a\u0015\u0010\u0012\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\f\u001a\u0015\u0010\u0012\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\f\u001a\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\rH\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0005H\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000eH\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0006H\u0086\n\u001a\u0015\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0005H\u0086\n\u001a\u0015\u0010\u0014\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0006H\u0086\n\u001a\u0015\u0010\u0014\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0005H\u0086\n\u001a\r\u0010\u0016\u001a\u00020\u0001*\u00020\u0003H\u0086\b\u001a\r\u0010\u0017\u001a\u00020\u0003*\u00020\u0001H\u0086\b\u001a\r\u0010\u0018\u001a\u00020\u0011*\u00020\u0001H\u0086\b\u001a\r\u0010\u0018\u001a\u00020\u0011*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0019\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001bH\u0086\b\u001a\u0015\u0010\u001c\u001a\u00020\u0011*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\f\u001a\u0015\u0010\u001c\u001a\u00020\u0011*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\f¨\u0006\u001d"}, d2 = {"and", "Landroid/graphics/Rect;", "r", "Landroid/graphics/RectF;", "component1", "", "", "component2", "component3", "component4", "contains", "", "p", "Landroid/graphics/Point;", "Landroid/graphics/PointF;", "minus", "xy", "Landroid/graphics/Region;", "or", "plus", "times", "factor", "toRect", "toRectF", "toRegion", "transform", "m", "Landroid/graphics/Matrix;", "xor", "core-ktx_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class RectKt {
    @g
    @SuppressLint({"CheckResult"})
    public static final Rect and(@g Rect rect, @g Rect r9) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        Intrinsics.checkNotNullParameter(r9, "r");
        Rect rect2 = new Rect(rect);
        rect2.intersect(r9);
        return rect2;
    }

    public static final int component1(@g Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        return rect.left;
    }

    public static final int component2(@g Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        return rect.top;
    }

    public static final int component3(@g Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        return rect.right;
    }

    public static final int component4(@g Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        return rect.bottom;
    }

    public static final boolean contains(@g Rect rect, @g Point p9) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        Intrinsics.checkNotNullParameter(p9, "p");
        return rect.contains(p9.x, p9.y);
    }

    @g
    public static final Region minus(@g Rect rect, @g Rect r9) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        Intrinsics.checkNotNullParameter(r9, "r");
        Region region = new Region(rect);
        region.op(r9, Region.Op.DIFFERENCE);
        return region;
    }

    @g
    public static final Rect or(@g Rect rect, @g Rect r9) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        Intrinsics.checkNotNullParameter(r9, "r");
        Rect rect2 = new Rect(rect);
        rect2.union(r9);
        return rect2;
    }

    @g
    public static final Rect plus(@g Rect rect, @g Rect r9) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        Intrinsics.checkNotNullParameter(r9, "r");
        Rect rect2 = new Rect(rect);
        rect2.union(r9);
        return rect2;
    }

    @g
    public static final Rect times(@g Rect rect, int i4) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        Rect rect2 = new Rect(rect);
        rect2.top *= i4;
        rect2.left *= i4;
        rect2.right *= i4;
        rect2.bottom *= i4;
        return rect2;
    }

    @g
    public static final Rect toRect(@g RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Rect rect = new Rect();
        rectF.roundOut(rect);
        return rect;
    }

    @g
    public static final RectF toRectF(@g Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        return new RectF(rect);
    }

    @g
    public static final Region toRegion(@g Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        return new Region(rect);
    }

    @g
    public static final RectF transform(@g RectF rectF, @g Matrix m9) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(m9, "m");
        m9.mapRect(rectF);
        return rectF;
    }

    @g
    public static final Region xor(@g Rect rect, @g Rect r9) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        Intrinsics.checkNotNullParameter(r9, "r");
        Region region = new Region(rect);
        region.op(r9, Region.Op.XOR);
        return region;
    }

    public static final float component1(@g RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return rectF.left;
    }

    public static final float component2(@g RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return rectF.top;
    }

    public static final float component3(@g RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return rectF.right;
    }

    public static final float component4(@g RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return rectF.bottom;
    }

    public static final boolean contains(@g RectF rectF, @g PointF p9) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(p9, "p");
        return rectF.contains(p9.x, p9.y);
    }

    @g
    public static final Region toRegion(@g RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Rect rect = new Rect();
        rectF.roundOut(rect);
        return new Region(rect);
    }

    @g
    @SuppressLint({"CheckResult"})
    public static final RectF and(@g RectF rectF, @g RectF r9) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(r9, "r");
        RectF rectF2 = new RectF(rectF);
        rectF2.intersect(r9);
        return rectF2;
    }

    @g
    public static final Region minus(@g RectF rectF, @g RectF r9) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(r9, "r");
        Rect rect = new Rect();
        rectF.roundOut(rect);
        Region region = new Region(rect);
        Rect rect2 = new Rect();
        r9.roundOut(rect2);
        region.op(rect2, Region.Op.DIFFERENCE);
        return region;
    }

    @g
    public static final RectF or(@g RectF rectF, @g RectF r9) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(r9, "r");
        RectF rectF2 = new RectF(rectF);
        rectF2.union(r9);
        return rectF2;
    }

    @g
    public static final RectF plus(@g RectF rectF, @g RectF r9) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(r9, "r");
        RectF rectF2 = new RectF(rectF);
        rectF2.union(r9);
        return rectF2;
    }

    @g
    public static final Region xor(@g RectF rectF, @g RectF r9) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(r9, "r");
        Rect rect = new Rect();
        rectF.roundOut(rect);
        Region region = new Region(rect);
        Rect rect2 = new Rect();
        r9.roundOut(rect2);
        region.op(rect2, Region.Op.XOR);
        return region;
    }

    @g
    public static final Rect plus(@g Rect rect, int i4) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        Rect rect2 = new Rect(rect);
        rect2.offset(i4, i4);
        return rect2;
    }

    @g
    public static final RectF times(@g RectF rectF, float f10) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        RectF rectF2 = new RectF(rectF);
        rectF2.top *= f10;
        rectF2.left *= f10;
        rectF2.right *= f10;
        rectF2.bottom *= f10;
        return rectF2;
    }

    @g
    public static final RectF plus(@g RectF rectF, float f10) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        RectF rectF2 = new RectF(rectF);
        rectF2.offset(f10, f10);
        return rectF2;
    }

    @g
    public static final Rect plus(@g Rect rect, @g Point xy) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        Intrinsics.checkNotNullParameter(xy, "xy");
        Rect rect2 = new Rect(rect);
        rect2.offset(xy.x, xy.y);
        return rect2;
    }

    @g
    public static final Rect minus(@g Rect rect, int i4) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        Rect rect2 = new Rect(rect);
        int i10 = -i4;
        rect2.offset(i10, i10);
        return rect2;
    }

    @g
    public static final RectF plus(@g RectF rectF, @g PointF xy) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(xy, "xy");
        RectF rectF2 = new RectF(rectF);
        rectF2.offset(xy.x, xy.y);
        return rectF2;
    }

    @g
    public static final RectF times(@g RectF rectF, int i4) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        float f10 = i4;
        RectF rectF2 = new RectF(rectF);
        rectF2.top *= f10;
        rectF2.left *= f10;
        rectF2.right *= f10;
        rectF2.bottom *= f10;
        return rectF2;
    }

    @g
    public static final RectF minus(@g RectF rectF, float f10) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        RectF rectF2 = new RectF(rectF);
        float f11 = -f10;
        rectF2.offset(f11, f11);
        return rectF2;
    }

    @g
    public static final Rect minus(@g Rect rect, @g Point xy) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        Intrinsics.checkNotNullParameter(xy, "xy");
        Rect rect2 = new Rect(rect);
        rect2.offset(-xy.x, -xy.y);
        return rect2;
    }

    @g
    public static final RectF minus(@g RectF rectF, @g PointF xy) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(xy, "xy");
        RectF rectF2 = new RectF(rectF);
        rectF2.offset(-xy.x, -xy.y);
        return rectF2;
    }
}
