package g1;

import android.graphics.PointF;
import android.graphics.Rect;
import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;
import i1.c;
import java.util.Map;
import r7.h;

/* compiled from: MiddlewareUtils.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a {
    public static c.a a(Map<String, Object> componentAttribution, Map<String, Object> shortcutAttribution, @h Map<String, Object> dataSourceExtras, @h Rect viewportDimensions, @h String scaleType, @h PointF focusPoint, @h Map<String, Object> imageExtras, @h Object callerContext, @h Uri mainUri) {
        c.a aVar = new c.a();
        if (viewportDimensions != null) {
            aVar.f69247g = viewportDimensions.width();
            aVar.f69248h = viewportDimensions.height();
        }
        aVar.f69249i = scaleType;
        if (focusPoint != null) {
            aVar.f69250j = focusPoint.x;
            aVar.f69251k = focusPoint.y;
        }
        aVar.f69245e = callerContext;
        aVar.f69246f = mainUri;
        aVar.f69243c = dataSourceExtras;
        aVar.f69244d = imageExtras;
        aVar.f69242b = shortcutAttribution;
        aVar.f69241a = componentAttribution;
        return aVar;
    }
}
