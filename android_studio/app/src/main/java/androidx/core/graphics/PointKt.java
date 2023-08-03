package androidx.core.graphics;

import android.graphics.Point;
import android.graphics.PointF;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: Point.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086\n\u001a\r\u0010\u0000\u001a\u00020\u0003*\u00020\u0004H\u0086\n\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\u0086\n\u001a\r\u0010\u0005\u001a\u00020\u0003*\u00020\u0004H\u0086\n\u001a\u0015\u0010\u0006\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0086\n\u001a\u0015\u0010\u0006\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\u0006\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0086\n\u001a\u0015\u0010\u0006\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\b\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\b\u001a\u00020\u0003H\u0086\n\u001a\r\u0010\n\u001a\u00020\u0002*\u00020\u0004H\u0086\b\u001a\r\u0010\u000b\u001a\u00020\u0004*\u00020\u0002H\u0086\b\u001a\r\u0010\f\u001a\u00020\u0002*\u00020\u0002H\u0086\n\u001a\r\u0010\f\u001a\u00020\u0004*\u00020\u0004H\u0086\n¨\u0006\r"}, d2 = {"component1", "", "Landroid/graphics/Point;", "", "Landroid/graphics/PointF;", "component2", "minus", "p", "xy", "plus", "toPoint", "toPointF", "unaryMinus", "core-ktx_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class PointKt {
    public static final int component1(@g Point point) {
        Intrinsics.checkNotNullParameter(point, "<this>");
        return point.x;
    }

    public static final int component2(@g Point point) {
        Intrinsics.checkNotNullParameter(point, "<this>");
        return point.y;
    }

    @g
    public static final Point minus(@g Point point, @g Point p9) {
        Intrinsics.checkNotNullParameter(point, "<this>");
        Intrinsics.checkNotNullParameter(p9, "p");
        Point point2 = new Point(point.x, point.y);
        point2.offset(-p9.x, -p9.y);
        return point2;
    }

    @g
    public static final Point plus(@g Point point, @g Point p9) {
        Intrinsics.checkNotNullParameter(point, "<this>");
        Intrinsics.checkNotNullParameter(p9, "p");
        Point point2 = new Point(point.x, point.y);
        point2.offset(p9.x, p9.y);
        return point2;
    }

    @g
    public static final Point toPoint(@g PointF pointF) {
        Intrinsics.checkNotNullParameter(pointF, "<this>");
        return new Point((int) pointF.x, (int) pointF.y);
    }

    @g
    public static final PointF toPointF(@g Point point) {
        Intrinsics.checkNotNullParameter(point, "<this>");
        return new PointF(point);
    }

    @g
    public static final Point unaryMinus(@g Point point) {
        Intrinsics.checkNotNullParameter(point, "<this>");
        return new Point(-point.x, -point.y);
    }

    public static final float component1(@g PointF pointF) {
        Intrinsics.checkNotNullParameter(pointF, "<this>");
        return pointF.x;
    }

    public static final float component2(@g PointF pointF) {
        Intrinsics.checkNotNullParameter(pointF, "<this>");
        return pointF.y;
    }

    @g
    public static final PointF unaryMinus(@g PointF pointF) {
        Intrinsics.checkNotNullParameter(pointF, "<this>");
        return new PointF(-pointF.x, -pointF.y);
    }

    @g
    public static final PointF minus(@g PointF pointF, @g PointF p9) {
        Intrinsics.checkNotNullParameter(pointF, "<this>");
        Intrinsics.checkNotNullParameter(p9, "p");
        PointF pointF2 = new PointF(pointF.x, pointF.y);
        pointF2.offset(-p9.x, -p9.y);
        return pointF2;
    }

    @g
    public static final PointF plus(@g PointF pointF, @g PointF p9) {
        Intrinsics.checkNotNullParameter(pointF, "<this>");
        Intrinsics.checkNotNullParameter(p9, "p");
        PointF pointF2 = new PointF(pointF.x, pointF.y);
        pointF2.offset(p9.x, p9.y);
        return pointF2;
    }

    @g
    public static final Point minus(@g Point point, int i4) {
        Intrinsics.checkNotNullParameter(point, "<this>");
        Point point2 = new Point(point.x, point.y);
        int i10 = -i4;
        point2.offset(i10, i10);
        return point2;
    }

    @g
    public static final Point plus(@g Point point, int i4) {
        Intrinsics.checkNotNullParameter(point, "<this>");
        Point point2 = new Point(point.x, point.y);
        point2.offset(i4, i4);
        return point2;
    }

    @g
    public static final PointF minus(@g PointF pointF, float f10) {
        Intrinsics.checkNotNullParameter(pointF, "<this>");
        PointF pointF2 = new PointF(pointF.x, pointF.y);
        float f11 = -f10;
        pointF2.offset(f11, f11);
        return pointF2;
    }

    @g
    public static final PointF plus(@g PointF pointF, float f10) {
        Intrinsics.checkNotNullParameter(pointF, "<this>");
        PointF pointF2 = new PointF(pointF.x, pointF.y);
        pointF2.offset(f10, f10);
        return pointF2;
    }
}
