package com.giphy.sdk.ui.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.util.AttributeSet;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GPHMediaView.kt */
@Metadata(bv = {}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010#\u001a\u00020\"\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010$\u0012\b\b\u0002\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J&\u0010\f\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010\r\u001a\u00020\u0004H\u0014R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006*"}, d2 = {"Lcom/giphy/sdk/ui/views/GPHMediaView;", "Lcom/giphy/sdk/ui/views/GifView;", "Landroid/graphics/Canvas;", "canvas", "", "onDraw", "", "id", "Lcom/facebook/imagepipeline/image/g;", "imageInfo", "Landroid/graphics/drawable/Animatable;", "anim", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "Lcom/giphy/sdk/ui/drawables/a;", "F", "Lcom/giphy/sdk/ui/drawables/a;", "brandingDrawer", "", "G", "Z", "getShowAttribution$giphy_ui_2_1_9_release", "()Z", "setShowAttribution$giphy_ui_2_1_9_release", "(Z)V", "showAttribution", "Lcom/giphy/sdk/ui/views/c;", "H", "Lcom/giphy/sdk/ui/views/c;", "getMediaActionsView", "()Lcom/giphy/sdk/ui/views/c;", "setMediaActionsView", "(Lcom/giphy/sdk/ui/views/c;)V", "mediaActionsView", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", Session.b.f81849j, "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public class GPHMediaView extends GifView {
    private com.giphy.sdk.ui.drawables.a F;
    private boolean G;
    @m8.g
    private c H;

    /* compiled from: GPHMediaView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onLongClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class a implements View.OnLongClickListener {
        a() {
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            GPHMediaView.this.getMediaActionsView().showAsDropDown(GPHMediaView.this);
            return true;
        }
    }

    @JvmOverloads
    public GPHMediaView(@m8.g Context context) {
        this(context, null, 0, 6, null);
    }

    @JvmOverloads
    public GPHMediaView(@m8.g Context context, @m8.h AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ GPHMediaView(Context context, AttributeSet attributeSet, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i4);
    }

    @Override // com.giphy.sdk.ui.views.GifView
    public void A(@m8.h String str, @m8.h com.facebook.imagepipeline.image.g gVar, @m8.h Animatable animatable) {
        com.giphy.sdk.ui.drawables.a aVar;
        super.A(str, gVar, animatable);
        invalidate();
        if (!this.G || (aVar = this.F) == null) {
            return;
        }
        aVar.d();
    }

    @Override // com.giphy.sdk.ui.views.GifView
    protected void B() {
        this.H.j(getMedia());
    }

    @m8.g
    public final c getMediaActionsView() {
        return this.H;
    }

    public final boolean getShowAttribution$giphy_ui_2_1_9_release() {
        return this.G;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(@m8.g Canvas canvas) {
        com.giphy.sdk.ui.drawables.a aVar;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        if (!this.G || (aVar = this.F) == null) {
            return;
        }
        aVar.b(canvas);
    }

    public final void setMediaActionsView(@m8.g c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<set-?>");
        this.H = cVar;
    }

    public final void setShowAttribution$giphy_ui_2_1_9_release(boolean z9) {
        this.G = z9;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GPHMediaView(@m8.g Context context, @m8.h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Intrinsics.checkNotNullParameter(context, "context");
        this.G = true;
        this.F = new com.giphy.sdk.ui.drawables.a(context);
        this.H = new c(context, new GPHActions[]{GPHActions.CopyLink, GPHActions.OpenGiphy});
        setOnLongClickListener(new a());
    }
}
