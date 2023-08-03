package com.facebook.drawee.generic;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.facebook.drawee.drawable.s;
import r7.h;
import v1.u;

/* compiled from: GenericDraweeHierarchyInflater.java */
/* loaded from: classes.dex */
public class c {
    @h
    private static Drawable a(Context context, TypedArray gdhAttrs, int attrId) {
        int resourceId = gdhAttrs.getResourceId(attrId, 0);
        if (resourceId == 0) {
            return null;
        }
        return context.getResources().getDrawable(resourceId);
    }

    @u
    private static RoundingParams b(b builder) {
        if (builder.s() == null) {
            builder.Z(new RoundingParams());
        }
        return builder.s();
    }

    @h
    private static s.c c(TypedArray gdhAttrs, int attrId) {
        switch (gdhAttrs.getInt(attrId, -2)) {
            case -1:
                return null;
            case 0:
                return s.c.f11558a;
            case 1:
                return s.c.f11561d;
            case 2:
                return s.c.f11562e;
            case 3:
                return s.c.f11563f;
            case 4:
                return s.c.f11564g;
            case 5:
                return s.c.f11565h;
            case 6:
                return s.c.f11566i;
            case 7:
                return s.c.f11567j;
            case 8:
                return s.c.f11568k;
            default:
                throw new RuntimeException("XML attribute not specified!");
        }
    }

    public static b d(Context context, @h AttributeSet attrs) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("GenericDraweeHierarchyBuilder#inflateBuilder");
        }
        b f10 = f(new b(context.getResources()), context, attrs);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return f10;
    }

    public static a e(Context context, @h AttributeSet attrs) {
        return d(context, attrs).a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x01c4, code lost:
        if (r13 != false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x01de, code lost:
        if (r15 != false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x01e0, code lost:
        r4 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.drawee.generic.b f(com.facebook.drawee.generic.b r17, android.content.Context r18, @r7.h android.util.AttributeSet r19) {
        /*
            Method dump skipped, instructions count: 569
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.drawee.generic.c.f(com.facebook.drawee.generic.b, android.content.Context, android.util.AttributeSet):com.facebook.drawee.generic.b");
    }
}
