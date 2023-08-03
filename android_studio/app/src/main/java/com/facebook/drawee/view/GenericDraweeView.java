package com.facebook.drawee.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class GenericDraweeView extends DraweeView<com.facebook.drawee.generic.a> {
    public GenericDraweeView(Context context, com.facebook.drawee.generic.a hierarchy) {
        super(context);
        setHierarchy(hierarchy);
    }

    protected void i(Context context, @h AttributeSet attrs) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("GenericDraweeView#inflateHierarchy");
        }
        com.facebook.drawee.generic.b d4 = com.facebook.drawee.generic.c.d(context, attrs);
        setAspectRatio(d4.f());
        setHierarchy(d4.a());
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    public GenericDraweeView(Context context) {
        super(context);
        i(context, null);
    }

    public GenericDraweeView(Context context, @h AttributeSet attrs) {
        super(context, attrs);
        i(context, attrs);
    }

    public GenericDraweeView(Context context, @h AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        i(context, attrs);
    }

    @TargetApi(21)
    public GenericDraweeView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        i(context, attrs);
    }
}
