package com.giphy.sdk.ui.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.facebook.drawee.view.SimpleDraweeView;
import com.giphy.sdk.core.models.Image;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.views.m;
import com.google.android.gms.common.internal.x;
import io.sentry.Session;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import timber.log.Timber;

/* compiled from: GPHVideoPlayerView.kt */
@Metadata(bv = {}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010C\u001a\u00020B\u0012\n\b\u0002\u0010E\u001a\u0004\u0018\u00010D\u0012\b\b\u0002\u0010F\u001a\u00020\u000b¢\u0006\u0004\bG\u0010HJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u000e\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0014J\u000e\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0012\u001a\u00020\u0002J\u0006\u0010\u0013\u001a\u00020\u0002J\u0006\u0010\u0014\u001a\u00020\u0002J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\u0006\u0010\u0016\u001a\u00020\u0002J\b\u0010\u0017\u001a\u00020\u0002H\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\"\u0010$\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u001a\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0016\u0010'\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\"\u0010-\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010&\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R$\u00107\u001a\u0012\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\u000202j\u0002`48\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u0014\u0010;\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R(\u0010A\u001a\u0004\u0018\u00010\u00072\b\u0010<\u001a\u0004\u0018\u00010\u00078F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@¨\u0006I"}, d2 = {"Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;", "Landroid/widget/FrameLayout;", "", "l", "Lcom/giphy/sdk/core/models/Media;", "media", "t", "Lcom/giphy/sdk/ui/views/k;", com.ksyun.media.player.d.d.an, "u", "requestLayout", "", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "", "position", "r", "n", "o", "s", "p", "q", "m", "", "a", "Z", "isFirstLoading", "b", "J", "prepareTime", "c", "getShowControls", "()Z", "setShowControls", "(Z)V", "showControls", "d", "I", "loopCount", "e", "getMaxLoopsBeforeMute", "()I", "setMaxLoopsBeforeMute", "(I)V", "maxLoopsBeforeMute", "f", "Lcom/giphy/sdk/ui/views/k;", "g", "Lcom/giphy/sdk/core/models/Media;", "Lkotlin/Function1;", "Lcom/giphy/sdk/ui/views/m;", "Lcom/giphy/sdk/ui/views/GPHPlayerStateListener;", "h", "Lkotlin/jvm/functions/Function1;", x.a.f29212a, "Ljava/lang/Runnable;", "j", "Ljava/lang/Runnable;", "measureAndLayout", "value", "getVideoPlayer", "()Lcom/giphy/sdk/ui/views/k;", "setVideoPlayer", "(Lcom/giphy/sdk/ui/views/k;)V", "videoPlayer", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", Session.b.f81849j, "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public class GPHVideoPlayerView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private boolean f18993a;

    /* renamed from: b  reason: collision with root package name */
    private long f18994b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f18995c;

    /* renamed from: d  reason: collision with root package name */
    private int f18996d;

    /* renamed from: e  reason: collision with root package name */
    private int f18997e;

    /* renamed from: f  reason: collision with root package name */
    private k f18998f;

    /* renamed from: g  reason: collision with root package name */
    private Media f18999g;

    /* renamed from: h  reason: collision with root package name */
    private final Function1<m, Unit> f19000h;

    /* renamed from: i  reason: collision with root package name */
    private final h2.s f19001i;

    /* renamed from: j  reason: collision with root package name */
    private final Runnable f19002j;

    /* compiled from: GPHVideoPlayerView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\b"}, d2 = {"com/giphy/sdk/ui/views/GPHVideoPlayerView$a", "Landroid/view/ViewOutlineProvider;", "Landroid/view/View;", "view", "Landroid/graphics/Outline;", "outline", "", "getOutline", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(@m8.g View view, @m8.g Outline outline) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(outline, "outline");
            outline.setRoundRect(0, 0, GPHVideoPlayerView.this.getWidth(), GPHVideoPlayerView.this.getHeight(), com.giphy.sdk.ui.utils.g.b(4));
        }
    }

    /* compiled from: GPHVideoPlayerView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/giphy/sdk/ui/views/m;", "it", "", "a", "(Lcom/giphy/sdk/ui/views/m;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class b extends Lambda implements Function1<m, Unit> {
        b() {
            super(1);
        }

        public final void a(@m8.g m it) {
            Intrinsics.checkNotNullParameter(it, "it");
            String id = GPHVideoPlayerView.c(GPHVideoPlayerView.this).K().getId();
            Media media = GPHVideoPlayerView.this.f18999g;
            if (Intrinsics.areEqual(id, media != null ? media.getId() : null)) {
                if (it instanceof m.c) {
                    VideoBufferingIndicator videoBufferingIndicator = GPHVideoPlayerView.this.f19001i.f69053b;
                    Intrinsics.checkNotNullExpressionValue(videoBufferingIndicator, "viewBinding.bufferingAnimation");
                    videoBufferingIndicator.setVisibility(8);
                    GPHVideoControls gPHVideoControls = GPHVideoPlayerView.this.f19001i.f69059h;
                    Intrinsics.checkNotNullExpressionValue(gPHVideoControls, "viewBinding.videoControls");
                    gPHVideoControls.setVisibility(8);
                    ConstraintLayout constraintLayout = GPHVideoPlayerView.this.f19001i.f69055d;
                    Intrinsics.checkNotNullExpressionValue(constraintLayout, "viewBinding.errorView");
                    constraintLayout.setVisibility(0);
                } else if (Intrinsics.areEqual(it, m.h.f19210a)) {
                    GPHVideoControls gPHVideoControls2 = GPHVideoPlayerView.this.f19001i.f69059h;
                    Intrinsics.checkNotNullExpressionValue(gPHVideoControls2, "viewBinding.videoControls");
                    gPHVideoControls2.setAlpha(1.0f);
                    VideoBufferingIndicator videoBufferingIndicator2 = GPHVideoPlayerView.this.f19001i.f69053b;
                    Intrinsics.checkNotNullExpressionValue(videoBufferingIndicator2, "viewBinding.bufferingAnimation");
                    videoBufferingIndicator2.setVisibility(8);
                    if (GPHVideoPlayerView.this.f18993a) {
                        Timber.e("initialLoadTime=" + (SystemClock.elapsedRealtime() - GPHVideoPlayerView.this.f18994b), new Object[0]);
                        GPHVideoPlayerView.this.f18993a = false;
                    }
                } else if (Intrinsics.areEqual(it, m.g.f19209a)) {
                    GPHVideoControls gPHVideoControls3 = GPHVideoPlayerView.this.f19001i.f69059h;
                    Intrinsics.checkNotNullExpressionValue(gPHVideoControls3, "viewBinding.videoControls");
                    gPHVideoControls3.setAlpha(1.0f);
                    SurfaceView surfaceView = GPHVideoPlayerView.this.f19001i.f69058g;
                    Intrinsics.checkNotNullExpressionValue(surfaceView, "viewBinding.surfaceView");
                    surfaceView.setVisibility(0);
                    SimpleDraweeView simpleDraweeView = GPHVideoPlayerView.this.f19001i.f69056e;
                    Intrinsics.checkNotNullExpressionValue(simpleDraweeView, "viewBinding.initialImage");
                    simpleDraweeView.setVisibility(8);
                } else if (Intrinsics.areEqual(it, m.a.f19203a)) {
                    VideoBufferingIndicator videoBufferingIndicator3 = GPHVideoPlayerView.this.f19001i.f69053b;
                    Intrinsics.checkNotNullExpressionValue(videoBufferingIndicator3, "viewBinding.bufferingAnimation");
                    videoBufferingIndicator3.setVisibility(0);
                } else if (Intrinsics.areEqual(it, m.i.f19211a)) {
                    if (GPHVideoPlayerView.this.f18996d + 1 > GPHVideoPlayerView.this.getMaxLoopsBeforeMute() - 1) {
                        GPHVideoPlayerView.c(GPHVideoPlayerView.this).p0(0.0f);
                    } else if (GPHVideoPlayerView.c(GPHVideoPlayerView.this).P() > 0.0f) {
                        GPHVideoPlayerView.this.f18996d++;
                    }
                } else if (!(it instanceof m.f) || ((m.f) it).d()) {
                } else {
                    GPHVideoPlayerView.this.f18996d = 0;
                }
            } else if (it instanceof m.e) {
                SimpleDraweeView simpleDraweeView2 = GPHVideoPlayerView.this.f19001i.f69056e;
                Intrinsics.checkNotNullExpressionValue(simpleDraweeView2, "viewBinding.initialImage");
                simpleDraweeView2.setVisibility(0);
                SurfaceView surfaceView2 = GPHVideoPlayerView.this.f19001i.f69058g;
                Intrinsics.checkNotNullExpressionValue(surfaceView2, "viewBinding.surfaceView");
                surfaceView2.setVisibility(8);
                VideoBufferingIndicator videoBufferingIndicator4 = GPHVideoPlayerView.this.f19001i.f69053b;
                Intrinsics.checkNotNullExpressionValue(videoBufferingIndicator4, "viewBinding.bufferingAnimation");
                videoBufferingIndicator4.setVisibility(8);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(m mVar) {
            a(mVar);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GPHVideoPlayerView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            GPHVideoPlayerView gPHVideoPlayerView = GPHVideoPlayerView.this;
            gPHVideoPlayerView.measure(View.MeasureSpec.makeMeasureSpec(gPHVideoPlayerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(GPHVideoPlayerView.this.getHeight(), 1073741824));
            GPHVideoPlayerView gPHVideoPlayerView2 = GPHVideoPlayerView.this;
            gPHVideoPlayerView2.layout(gPHVideoPlayerView2.getLeft(), GPHVideoPlayerView.this.getTop(), GPHVideoPlayerView.this.getRight(), GPHVideoPlayerView.this.getBottom());
        }
    }

    @JvmOverloads
    public GPHVideoPlayerView(@m8.g Context context) {
        this(context, null, 0, 6, null);
    }

    @JvmOverloads
    public GPHVideoPlayerView(@m8.g Context context, @m8.h AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ GPHVideoPlayerView(Context context, AttributeSet attributeSet, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i4);
    }

    public static final /* synthetic */ k c(GPHVideoPlayerView gPHVideoPlayerView) {
        k kVar = gPHVideoPlayerView.f18998f;
        if (kVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException(com.ksyun.media.player.d.d.an);
        }
        return kVar;
    }

    private final void l() {
        setOutlineProvider(new a());
        setClipToOutline(true);
    }

    public final int getMaxLoopsBeforeMute() {
        return this.f18997e;
    }

    public final boolean getShowControls() {
        return this.f18995c;
    }

    @m8.h
    public final k getVideoPlayer() {
        k kVar = this.f18998f;
        if (kVar != null) {
            if (kVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException(com.ksyun.media.player.d.d.an);
                return kVar;
            }
            return kVar;
        }
        return null;
    }

    public void m() {
    }

    public final void n() {
        GPHVideoControls gPHVideoControls = this.f19001i.f69059h;
        Intrinsics.checkNotNullExpressionValue(gPHVideoControls, "viewBinding.videoControls");
        gPHVideoControls.setVisibility(8);
    }

    public final void o() {
        GPHVideoControls gPHVideoControls = this.f19001i.f69059h;
        Intrinsics.checkNotNullExpressionValue(gPHVideoControls, "viewBinding.videoControls");
        gPHVideoControls.setVisibility(0);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i4, int i10) {
        Media media = this.f18999g;
        if (media == null) {
            super.onMeasure(i4, i10);
            return;
        }
        float d4 = media != null ? com.giphy.sdk.ui.utils.h.d(media) : 1.7777778f;
        int size = View.MeasureSpec.getSize(i10);
        int i11 = (int) (size * d4);
        if (i11 > View.MeasureSpec.getSize(i4)) {
            i11 = View.MeasureSpec.getSize(i4);
            size = (int) (i11 / d4);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i11, size, 17);
        SurfaceView surfaceView = this.f19001i.f69058g;
        Intrinsics.checkNotNullExpressionValue(surfaceView, "viewBinding.surfaceView");
        surfaceView.setLayoutParams(layoutParams);
        SimpleDraweeView simpleDraweeView = this.f19001i.f69056e;
        Intrinsics.checkNotNullExpressionValue(simpleDraweeView, "viewBinding.initialImage");
        simpleDraweeView.setLayoutParams(layoutParams);
        VideoBufferingIndicator videoBufferingIndicator = this.f19001i.f69053b;
        Intrinsics.checkNotNullExpressionValue(videoBufferingIndicator, "viewBinding.bufferingAnimation");
        videoBufferingIndicator.setLayoutParams(layoutParams);
        GPHVideoControls gPHVideoControls = this.f19001i.f69059h;
        Intrinsics.checkNotNullExpressionValue(gPHVideoControls, "viewBinding.videoControls");
        gPHVideoControls.setLayoutParams(layoutParams);
        ConstraintLayout constraintLayout = this.f19001i.f69055d;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "viewBinding.errorView");
        constraintLayout.setLayoutParams(layoutParams);
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i11, 1073741824), View.MeasureSpec.makeMeasureSpec(size, 1073741824));
        l();
    }

    public void p() {
        k kVar = this.f18998f;
        if (kVar != null) {
            if (kVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException(com.ksyun.media.player.d.d.an);
            }
            kVar.f0(this.f19000h);
        }
    }

    public final void q() {
        this.f19001i.f69059h.A();
    }

    public final void r(long j4) {
        this.f19001i.f69059h.N(j4);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        post(this.f19002j);
    }

    public final void s() {
        GPHVideoControls gPHVideoControls = this.f19001i.f69059h;
        Intrinsics.checkNotNullExpressionValue(gPHVideoControls, "viewBinding.videoControls");
        gPHVideoControls.setVisibility(0);
        this.f19001i.f69059h.B();
    }

    public final void setMaxLoopsBeforeMute(int i4) {
        this.f18997e = i4;
    }

    public final void setShowControls(boolean z9) {
        this.f18995c = z9;
    }

    public final void setVideoPlayer(@m8.h k kVar) {
        Objects.requireNonNull(kVar, "videoPlayer must not be null");
        this.f18998f = kVar;
    }

    public final void t(@m8.g Media media) {
        Intrinsics.checkNotNullParameter(media, "media");
        this.f18999g = media;
        StringBuilder sb = new StringBuilder();
        sb.append("preloadFirstFrame ");
        Image originalStill = media.getImages().getOriginalStill();
        sb.append(originalStill != null ? originalStill.getGifUrl() : null);
        Timber.e(sb.toString(), new Object[0]);
        SimpleDraweeView simpleDraweeView = this.f19001i.f69056e;
        Image originalStill2 = media.getImages().getOriginalStill();
        simpleDraweeView.setImageURI(originalStill2 != null ? originalStill2.getGifUrl() : null);
        SimpleDraweeView simpleDraweeView2 = this.f19001i.f69056e;
        Intrinsics.checkNotNullExpressionValue(simpleDraweeView2, "viewBinding.initialImage");
        simpleDraweeView2.setVisibility(0);
    }

    public void u(@m8.g Media media, @m8.g k player) {
        Intrinsics.checkNotNullParameter(media, "media");
        Intrinsics.checkNotNullParameter(player, "player");
        this.f18996d = 0;
        this.f18998f = player;
        this.f18999g = media;
        this.f18994b = SystemClock.elapsedRealtime();
        player.o0(this.f19001i.f69058g);
        this.f18993a = true;
        ConstraintLayout constraintLayout = this.f19001i.f69055d;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "viewBinding.errorView");
        constraintLayout.setVisibility(8);
        VideoBufferingIndicator videoBufferingIndicator = this.f19001i.f69053b;
        Intrinsics.checkNotNullExpressionValue(videoBufferingIndicator, "viewBinding.bufferingAnimation");
        videoBufferingIndicator.setVisibility(8);
        GPHVideoControls gPHVideoControls = this.f19001i.f69059h;
        Intrinsics.checkNotNullExpressionValue(gPHVideoControls, "viewBinding.videoControls");
        gPHVideoControls.setAlpha(0.0f);
        SimpleDraweeView simpleDraweeView = this.f19001i.f69056e;
        Intrinsics.checkNotNullExpressionValue(simpleDraweeView, "viewBinding.initialImage");
        simpleDraweeView.setVisibility(0);
        requestLayout();
        player.F(this.f19000h);
        if (this.f18995c) {
            this.f19001i.f69059h.D(media, player, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GPHVideoPlayerView(@m8.g Context context, @m8.h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f18995c = true;
        this.f18997e = 3;
        this.f19000h = new b();
        h2.s a10 = h2.s.a(View.inflate(context, p.m.f18137v0, this));
        Intrinsics.checkNotNullExpressionValue(a10, "GphVideoPlayerViewBindin…video_player_view, this))");
        this.f19001i = a10;
        a10.f69056e.setLegacyVisibilityHandlingEnabled(true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.q.dd, 0, 0);
        this.f18995c = obtainStyledAttributes.getBoolean(p.q.ed, true);
        GPHVideoControls gPHVideoControls = a10.f69059h;
        Intrinsics.checkNotNullExpressionValue(gPHVideoControls, "viewBinding.videoControls");
        gPHVideoControls.setVisibility(this.f18995c ? 0 : 8);
        obtainStyledAttributes.recycle();
        this.f19002j = new c();
    }
}
