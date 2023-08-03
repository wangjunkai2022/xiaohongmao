package com.giphy.sdk.ui.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RoundedConstraintLayout.kt */
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u00102\u001a\u000201\u0012\n\b\u0002\u00104\u001a\u0004\u0018\u000103\u0012\b\b\u0002\u00105\u001a\u00020\u0005¢\u0006\u0004\b6\u00107J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J(\u0010\n\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0014J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016R\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0003\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R*\u0010!\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00198\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R*\u0010%\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00198\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u001c\u001a\u0004\b#\u0010\u001e\"\u0004\b$\u0010 R*\u0010)\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00198\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u001c\u001a\u0004\b'\u0010\u001e\"\u0004\b(\u0010 R*\u0010-\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00198\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u001c\u001a\u0004\b+\u0010\u001e\"\u0004\b,\u0010 R*\u00100\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00198\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u001c\u001a\u0004\b.\u0010\u001e\"\u0004\b/\u0010 ¨\u00068"}, d2 = {"Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "b", "a", "", "w", "h", "oldw", "oldh", "onSizeChanged", "Landroid/graphics/Canvas;", "canvas", "draw", "dispatchDraw", "", "[F", "mRadii", "Landroid/graphics/RectF;", "Landroid/graphics/RectF;", "rectF", "Landroid/graphics/Path;", "c", "Landroid/graphics/Path;", "path", "", "value", "d", "F", "getCornerRadius", "()F", "setCornerRadius", "(F)V", "cornerRadius", "e", "getTopLeftCornerRadius", "setTopLeftCornerRadius", "topLeftCornerRadius", "f", "getTopRightCornerRadius", "setTopRightCornerRadius", "topRightCornerRadius", "g", "getBottomRightCornerRadius", "setBottomRightCornerRadius", "bottomRightCornerRadius", "getBottomLeftCornerRadius", "setBottomLeftCornerRadius", "bottomLeftCornerRadius", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", Session.b.f81849j, "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public class RoundedConstraintLayout extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f19140a;

    /* renamed from: b  reason: collision with root package name */
    private RectF f19141b;

    /* renamed from: c  reason: collision with root package name */
    private final Path f19142c;

    /* renamed from: d  reason: collision with root package name */
    private float f19143d;

    /* renamed from: e  reason: collision with root package name */
    private float f19144e;

    /* renamed from: f  reason: collision with root package name */
    private float f19145f;

    /* renamed from: g  reason: collision with root package name */
    private float f19146g;

    /* renamed from: h  reason: collision with root package name */
    private float f19147h;

    @JvmOverloads
    public RoundedConstraintLayout(@m8.g Context context) {
        this(context, null, 0, 6, null);
    }

    @JvmOverloads
    public RoundedConstraintLayout(@m8.g Context context, @m8.h AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ RoundedConstraintLayout(Context context, AttributeSet attributeSet, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i4);
    }

    private final void a() {
        this.f19142c.reset();
        Path path = this.f19142c;
        RectF rectF = this.f19141b;
        if (rectF == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rectF");
        }
        path.addRoundRect(rectF, this.f19140a, Path.Direction.CW);
        this.f19142c.close();
    }

    private final void b() {
        float[] fArr = this.f19140a;
        float f10 = this.f19144e;
        fArr[0] = f10;
        fArr[1] = f10;
        float f11 = this.f19145f;
        fArr[2] = f11;
        fArr[3] = f11;
        float f12 = this.f19146g;
        fArr[4] = f12;
        fArr[5] = f12;
        float f13 = this.f19147h;
        fArr[6] = f13;
        fArr[7] = f13;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(@m8.g Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        int save = canvas.save();
        canvas.clipPath(this.f19142c);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.view.View
    public void draw(@m8.g Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        int save = canvas.save();
        canvas.clipPath(this.f19142c);
        super.draw(canvas);
        canvas.restoreToCount(save);
    }

    public final float getBottomLeftCornerRadius() {
        return this.f19147h;
    }

    public final float getBottomRightCornerRadius() {
        return this.f19146g;
    }

    public final float getCornerRadius() {
        return this.f19143d;
    }

    public final float getTopLeftCornerRadius() {
        return this.f19144e;
    }

    public final float getTopRightCornerRadius() {
        return this.f19145f;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i4, int i10, int i11, int i12) {
        super.onSizeChanged(i4, i10, i11, i12);
        this.f19141b = new RectF(0.0f, 0.0f, i4, i10);
        a();
    }

    public final void setBottomLeftCornerRadius(float f10) {
        this.f19147h = f10;
        b();
    }

    public final void setBottomRightCornerRadius(float f10) {
        this.f19146g = f10;
        b();
    }

    public final void setCornerRadius(float f10) {
        this.f19143d = f10;
        float[] fArr = this.f19140a;
        ArraysKt___ArraysJvmKt.fill(fArr, f10, 0, fArr.length);
    }

    public final void setTopLeftCornerRadius(float f10) {
        this.f19144e = f10;
        b();
    }

    public final void setTopRightCornerRadius(float f10) {
        this.f19145f = f10;
        b();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundedConstraintLayout(@m8.g Context context, @m8.h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Intrinsics.checkNotNullParameter(context, "context");
        float[] fArr = new float[8];
        this.f19140a = fArr;
        this.f19142c = new Path();
        ArraysKt___ArraysJvmKt.fill(fArr, 0.0f, 0, fArr.length);
        b();
    }
}
