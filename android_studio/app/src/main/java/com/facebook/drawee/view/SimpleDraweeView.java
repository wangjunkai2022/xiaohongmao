package com.facebook.drawee.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.util.AttributeSet;
import androidx.annotation.DrawableRes;
import com.facebook.common.internal.j;
import com.facebook.common.internal.m;
import com.facebook.common.util.f;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.imagepipeline.request.ImageRequest;
import r7.h;
import v0.b;

/* loaded from: classes.dex */
public class SimpleDraweeView extends GenericDraweeView {

    /* renamed from: h  reason: collision with root package name */
    private static m<? extends AbstractDraweeControllerBuilder> f11642h;

    /* renamed from: g  reason: collision with root package name */
    private AbstractDraweeControllerBuilder f11643g;

    public SimpleDraweeView(Context context, com.facebook.drawee.generic.a hierarchy) {
        super(context, hierarchy);
        j(context, null);
    }

    private void j(Context context, @h AttributeSet attrs) {
        int resourceId;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("SimpleDraweeView#init");
            }
            if (isInEditMode()) {
                getTopLevelDrawable().setVisible(true, false);
                getTopLevelDrawable().invalidateSelf();
            } else {
                j.j(f11642h, "SimpleDraweeView was not initialized!");
                this.f11643g = f11642h.get();
            }
            if (attrs != null) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, b.j.f94173t0);
                int i4 = b.j.f94177v0;
                if (obtainStyledAttributes.hasValue(i4)) {
                    m(Uri.parse(obtainStyledAttributes.getString(i4)), null);
                } else {
                    int i10 = b.j.f94175u0;
                    if (obtainStyledAttributes.hasValue(i10) && (resourceId = obtainStyledAttributes.getResourceId(i10, -1)) != -1) {
                        if (isInEditMode()) {
                            setImageResource(resourceId);
                        } else {
                            setActualImageResource(resourceId);
                        }
                    }
                }
                obtainStyledAttributes.recycle();
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public static void k(m<? extends AbstractDraweeControllerBuilder> draweeControllerBuilderSupplier) {
        f11642h = draweeControllerBuilderSupplier;
    }

    public static void o() {
        f11642h = null;
    }

    protected AbstractDraweeControllerBuilder getControllerBuilder() {
        return this.f11643g;
    }

    public void l(@DrawableRes int resourceId, @h Object callerContext) {
        m(f.f(resourceId), callerContext);
    }

    public void m(Uri uri, @h Object callerContext) {
        setController(this.f11643g.d(callerContext).a(uri).c(getController()).build());
    }

    public void n(@h String uriString, @h Object callerContext) {
        m(uriString != null ? Uri.parse(uriString) : null, callerContext);
    }

    public void setActualImageResource(@DrawableRes int resourceId) {
        l(resourceId, null);
    }

    public void setImageRequest(ImageRequest request) {
        setController(this.f11643g.P(request).c(getController()).build());
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView
    public void setImageResource(int resId) {
        super.setImageResource(resId);
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        m(uri, null);
    }

    public void setImageURI(@h String uriString) {
        n(uriString, null);
    }

    public SimpleDraweeView(Context context) {
        super(context);
        j(context, null);
    }

    public SimpleDraweeView(Context context, AttributeSet attrs) {
        super(context, attrs);
        j(context, attrs);
    }

    public SimpleDraweeView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        j(context, attrs);
    }

    @TargetApi(21)
    public SimpleDraweeView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        j(context, attrs);
    }
}
