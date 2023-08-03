package com.giphy.sdk.ui.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.facebook.drawee.drawable.s;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.giphy.sdk.core.models.Image;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.core.models.enums.RenditionType;
import com.giphy.sdk.core.network.response.MediaResponse;
import com.giphy.sdk.ui.drawables.GifStepAction;
import com.giphy.sdk.ui.drawables.ImageFormat;
import com.giphy.sdk.ui.drawables.ImageUriInfo;
import com.giphy.sdk.ui.p;
import io.sentry.Session;
import io.sentry.protocol.y;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.s0;
import timber.log.Timber;

/* compiled from: GifView.kt */
@Metadata(bv = {}, d1 = {"\u0000É\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001\u0010\b\u0016\u0018\u0000 92\u00020\u0001:\u0004 \u0001¡\u0001B.\b\u0007\u0012\b\u0010\u009a\u0001\u001a\u00030\u0099\u0001\u0012\f\b\u0002\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009b\u0001\u0012\t\b\u0002\u0010\u009d\u0001\u001a\u00020(¢\u0006\u0006\b\u009e\u0001\u0010\u009f\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0013\u001a\u00020\u0002H\u0014J(\u0010\u001a\u001a\u00020\u00022\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018Jd\u0010%\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001b2\b\b\u0002\u0010\u0017\u001a\u00020\u00162\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00182>\b\u0002\u0010$\u001a8\u0012\u0015\u0012\u0013\u0018\u00010\u001e¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(!\u0012\u0015\u0012\u0013\u0018\u00010\"¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(#\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001dJ\u0010\u0010'\u001a\u00020\u00022\b\u0010&\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010*\u001a\u00020\u00022\b\b\u0001\u0010)\u001a\u00020(J\u0018\u0010-\u001a\u00020\u00022\u0006\u0010+\u001a\u00020(2\u0006\u0010,\u001a\u00020(H\u0014J*\u00102\u001a\u00020\u00022\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\n\b\u0001\u0010/\u001a\u0004\u0018\u00010.2\n\b\u0001\u00101\u001a\u0004\u0018\u000100H\u0016J\u0006\u00103\u001a\u00020\u0002J\u0006\u00104\u001a\u00020\u0002J\u0006\u00106\u001a\u000205J\u0006\u00107\u001a\u00020\u0002J\u0006\u00108\u001a\u00020\u0002J\u0006\u00109\u001a\u00020\u0002R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0018\u0010@\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010B\u001a\u00020:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010<R\u0014\u0010E\u001a\u00020C8\u0002X\u0082D¢\u0006\u0006\n\u0004\bD\u00108R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010I\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010\u001aR\u0018\u0010L\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR \u0010R\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020O0N0M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010QR$\u0010Z\u001a\u0004\u0018\u00010S8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR*\u0010b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010[8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_\"\u0004\b`\u0010aR$\u0010h\u001a\u0004\u0018\u00010C8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010c\u001a\u0004\bd\u0010e\"\u0004\bf\u0010gR\u0016\u0010j\u001a\u00020C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u00108R\"\u0010o\u001a\u00020:8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010<\u001a\u0004\bk\u0010l\"\u0004\bm\u0010nR\"\u0010q\u001a\u00020:8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010<\u001a\u0004\bi\u0010l\"\u0004\bp\u0010nR\"\u0010x\u001a\u00020r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010s\u001a\u0004\bt\u0010u\"\u0004\bv\u0010wR\"\u0010{\u001a\u00020:8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010<\u001a\u0004\by\u0010l\"\u0004\bz\u0010nR'\u0010\u0082\u0001\u001a\u0004\u0018\u00010|8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u0003\u0010}\u001a\u0004\b~\u0010\u007f\"\u0006\b\u0080\u0001\u0010\u0081\u0001R'\u0010\u0087\u0001\u001a\u00020C8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0004\b\n\u00108\u001a\u0006\b\u0083\u0001\u0010\u0084\u0001\"\u0006\b\u0085\u0001\u0010\u0086\u0001R4\u0010\u0015\u001a\u0004\u0018\u00010\u00142\t\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00148\u0006@BX\u0086\u000e¢\u0006\u0017\n\u0005\b2\u0010\u0089\u0001\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001\"\u0006\b\u008c\u0001\u0010\u008d\u0001R*\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0013\u0010\u008e\u0001\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001\"\u0006\b\u0091\u0001\u0010\u0092\u0001R)\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0004\b4\u0010G\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001\"\u0006\b\u0096\u0001\u0010\u0097\u0001¨\u0006¢\u0001"}, d2 = {"Lcom/giphy/sdk/ui/views/GifView;", "Lcom/facebook/drawee/view/SimpleDraweeView;", "", y.b.f83920h, "N", "M", "w", "Landroid/net/Uri;", "uri", "G", "z", y.b.f83919g, "", "Lcom/giphy/sdk/ui/drawables/c;", "getLoadingSteps", "s", "com/giphy/sdk/ui/views/GifView$d", "getControllerListener", "()Lcom/giphy/sdk/ui/views/GifView$d;", "B", "Lcom/giphy/sdk/core/models/Media;", "media", "Lcom/giphy/sdk/core/models/enums/RenditionType;", "renditionType", "Landroid/graphics/drawable/Drawable;", "placeholderDrawable", "I", "", "id", "Lkotlin/Function2;", "Lcom/giphy/sdk/core/network/response/MediaResponse;", "Lkotlin/ParameterName;", "name", "result", "", "e", "completionHandler", "K", "url", "v", "", "resId", "u", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "Lcom/facebook/imagepipeline/image/g;", "imageInfo", "Landroid/graphics/drawable/Animatable;", "anim", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "D", "C", "Lcom/facebook/drawee/drawable/l;", "getProgressDrawable", "H", "F", ExifInterface.LONGITUDE_EAST, "", ContextChain.TAG_INFRA, "Z", "keepGifRatio", "j", "Lcom/giphy/sdk/core/models/enums/RenditionType;", "targetRendition", "k", "autoPlay", "", "l", "DEFAULT_ASPECT_RATIO", "m", "Landroid/graphics/drawable/Drawable;", "n", "stepIndex", "o", "Lcom/giphy/sdk/ui/drawables/c;", "step", "Lcom/facebook/datasource/i;", "Lcom/facebook/common/references/a;", "Lcom/facebook/imagepipeline/image/c;", "p", "Lcom/facebook/datasource/i;", "retainingSupplier", "Lcom/giphy/sdk/ui/views/GifView$b;", "q", "Lcom/giphy/sdk/ui/views/GifView$b;", "getGifCallback", "()Lcom/giphy/sdk/ui/views/GifView$b;", "setGifCallback", "(Lcom/giphy/sdk/ui/views/GifView$b;)V", "gifCallback", "Lkotlin/Function0;", "r", "Lkotlin/jvm/functions/Function0;", "getOnPingbackGifLoadSuccess", "()Lkotlin/jvm/functions/Function0;", "setOnPingbackGifLoadSuccess", "(Lkotlin/jvm/functions/Function0;)V", "onPingbackGifLoadSuccess", "Ljava/lang/Float;", "getFixedAspectRatio", "()Ljava/lang/Float;", "setFixedAspectRatio", "(Ljava/lang/Float;)V", "fixedAspectRatio", "t", "renditionAspectRatio", "getShowProgress", "()Z", "setShowProgress", "(Z)V", "showProgress", "setBackgroundVisible", "isBackgroundVisible", "Lcom/giphy/sdk/ui/drawables/ImageFormat;", "Lcom/giphy/sdk/ui/drawables/ImageFormat;", "getImageFormat", "()Lcom/giphy/sdk/ui/drawables/ImageFormat;", "setImageFormat", "(Lcom/giphy/sdk/ui/drawables/ImageFormat;)V", com.facebook.imagepipeline.producers.n.f13104r, "getLoaded", "setLoaded", "loaded", "Lcom/facebook/drawee/drawable/s$c;", "Lcom/facebook/drawee/drawable/s$c;", "getScaleType", "()Lcom/facebook/drawee/drawable/s$c;", "setScaleType", "(Lcom/facebook/drawee/drawable/s$c;)V", "scaleType", "getCornerRadius", "()F", "setCornerRadius", "(F)V", "cornerRadius", "value", "Lcom/giphy/sdk/core/models/Media;", "getMedia", "()Lcom/giphy/sdk/core/models/Media;", "setMedia", "(Lcom/giphy/sdk/core/models/Media;)V", "Ljava/lang/String;", "getMediaId", "()Ljava/lang/String;", "setMediaId", "(Ljava/lang/String;)V", "mediaId", "getBgDrawable", "()Landroid/graphics/drawable/Drawable;", "setBgDrawable", "(Landroid/graphics/drawable/Drawable;)V", "bgDrawable", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", Session.b.f81849j, "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "a", "b", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public class GifView extends SimpleDraweeView {
    @m8.h
    private Media A;
    @m8.h
    private String B;
    @m8.h
    private Drawable C;

    /* renamed from: i */
    private final boolean f19006i;

    /* renamed from: j */
    private RenditionType f19007j;

    /* renamed from: k */
    private boolean f19008k;

    /* renamed from: l */
    private final float f19009l;

    /* renamed from: m */
    private Drawable f19010m;

    /* renamed from: n */
    private int f19011n;

    /* renamed from: o */
    private com.giphy.sdk.ui.drawables.c f19012o;

    /* renamed from: p */
    private final com.facebook.datasource.i<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f19013p;
    @m8.h

    /* renamed from: q */
    private b f19014q;
    @m8.h

    /* renamed from: r */
    private Function0<Unit> f19015r;
    @m8.h

    /* renamed from: s */
    private Float f19016s;

    /* renamed from: t */
    private float f19017t;

    /* renamed from: u */
    private boolean f19018u;

    /* renamed from: v */
    private boolean f19019v;
    @m8.g

    /* renamed from: w */
    private ImageFormat f19020w;

    /* renamed from: x */
    private boolean f19021x;
    @m8.h

    /* renamed from: y */
    private s.c f19022y;

    /* renamed from: z */
    private float f19023z;
    @m8.g
    public static final a E = new a(null);
    private static final float D = com.giphy.sdk.ui.utils.g.b(4);

    /* compiled from: GifView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/giphy/sdk/ui/views/GifView$a;", "", "", "CORNER_RADIUS", "F", "a", "()F", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public final float a() {
            return GifView.D;
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: GifView.kt */
    @Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J0\u0010\u000b\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\bH&J\u0012\u0010\u000e\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH&¨\u0006\u000f"}, d2 = {"Lcom/giphy/sdk/ui/views/GifView$b;", "", "Lcom/facebook/imagepipeline/image/g;", "imageInfo", "Landroid/graphics/drawable/Animatable;", "anim", "", "loopDuration", "", "loopCount", "", "b", "", "throwable", "a", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public interface b {

        /* compiled from: GifView.kt */
        @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes2.dex */
        public static final class a {
            public static /* synthetic */ void a(b bVar, com.facebook.imagepipeline.image.g gVar, Animatable animatable, long j4, int i4, int i10, Object obj) {
                if (obj == null) {
                    if ((i10 & 4) != 0) {
                        j4 = -1;
                    }
                    bVar.b(gVar, animatable, j4, (i10 & 8) != 0 ? 0 : i4);
                    return;
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onImageSet");
            }
        }

        void a(@m8.h Throwable th);

        void b(@m8.h com.facebook.imagepipeline.image.g gVar, @m8.h Animatable animatable, long j4, int i4);
    }

    /* compiled from: GifView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\b"}, d2 = {"com/giphy/sdk/ui/views/GifView$c", "Landroid/view/ViewOutlineProvider;", "Landroid/view/View;", "view", "Landroid/graphics/Outline;", "outline", "", "getOutline", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class c extends ViewOutlineProvider {
        c() {
            GifView.this = r1;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(@m8.g View view, @m8.g Outline outline) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(outline, "outline");
            outline.setRoundRect(0, 0, GifView.this.getWidth(), GifView.this.getHeight(), GifView.this.getCornerRadius());
        }
    }

    /* compiled from: GifView.kt */
    @Metadata(bv = {}, d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J*\u0010\t\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001c\u0010\f\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\r"}, d2 = {"com/giphy/sdk/ui/views/GifView$d", "Lcom/facebook/drawee/controller/b;", "Lcom/facebook/imagepipeline/image/g;", "", "id", "imageInfo", "Landroid/graphics/drawable/Animatable;", "anim", "", "h", "", "throwable", "b", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class d extends com.facebook.drawee.controller.b<com.facebook.imagepipeline.image.g> {
        d() {
            GifView.this = r1;
        }

        @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
        public void b(@m8.h String str, @m8.h Throwable th) {
            StringBuilder sb = new StringBuilder();
            sb.append("Failed to load media: ");
            if (str == null) {
                str = "";
            }
            sb.append(str);
            Timber.h(sb.toString(), new Object[0]);
            if (th != null) {
                th.printStackTrace();
            }
            b gifCallback = GifView.this.getGifCallback();
            if (gifCallback != null) {
                gifCallback.a(th);
            }
        }

        @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
        /* renamed from: h */
        public void d(@m8.h String str, @Nullable @m8.h com.facebook.imagepipeline.image.g gVar, @Nullable @m8.h Animatable animatable) {
            GifView.this.A(str, gVar, animatable);
        }
    }

    /* compiled from: GifView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class e implements Runnable {
        e() {
            GifView.this = r1;
        }

        @Override // java.lang.Runnable
        public final void run() {
            GifView.this.y();
        }
    }

    /* compiled from: GifView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/s0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 1})
    @DebugMetadata(c = "com.giphy.sdk.ui.views.GifView$replaceImage$1", f = "GifView.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class f extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f19027a;

        /* renamed from: c */
        final /* synthetic */ ImageRequest f19029c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(ImageRequest imageRequest, Continuation continuation) {
            super(2, continuation);
            GifView.this = r1;
            this.f19029c = imageRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> completion) {
            Intrinsics.checkNotNullParameter(completion, "completion");
            return new f(this.f19029c, completion);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
            return ((f) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f19027a == 0) {
                ResultKt.throwOnFailure(obj);
                GifView.this.f19013p.b(com.facebook.drawee.backends.pipeline.d.b().x(this.f19029c, null, ImageRequest.RequestLevel.FULL_FETCH));
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: GifView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\b"}, d2 = {"com/giphy/sdk/ui/views/GifView$g", "Lcom/giphy/sdk/core/network/api/a;", "Lcom/giphy/sdk/core/network/response/MediaResponse;", "result", "", "e", "", "b", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class g implements com.giphy.sdk.core.network.api.a<MediaResponse> {

        /* renamed from: b */
        final /* synthetic */ RenditionType f19031b;

        /* renamed from: c */
        final /* synthetic */ Drawable f19032c;

        /* renamed from: d */
        final /* synthetic */ Function2 f19033d;

        g(RenditionType renditionType, Drawable drawable, Function2 function2) {
            GifView.this = r1;
            this.f19031b = renditionType;
            this.f19032c = drawable;
            this.f19033d = function2;
        }

        @Override // com.giphy.sdk.core.network.api.a
        /* renamed from: b */
        public void a(@m8.h MediaResponse mediaResponse, @m8.h Throwable th) {
            if (mediaResponse != null) {
                Media data = mediaResponse.getData();
                if (Intrinsics.areEqual(data != null ? data.getId() : null, GifView.this.getMediaId())) {
                    GifView.this.I(mediaResponse.getData(), this.f19031b, this.f19032c);
                }
            }
            if (th != null) {
                th.printStackTrace();
            }
            Function2 function2 = this.f19033d;
            if (function2 != null) {
                Unit unit = (Unit) function2.invoke(mediaResponse, th);
            }
        }
    }

    @JvmOverloads
    public GifView(@m8.g Context context) {
        this(context, null, 0, 6, null);
    }

    @JvmOverloads
    public GifView(@m8.g Context context, @m8.h AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ GifView(Context context, AttributeSet attributeSet, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i4);
    }

    private final void G(Uri uri) {
        com.giphy.sdk.ui.drawables.c cVar = this.f19012o;
        kotlinx.coroutines.l.b(a2.f84781a, i1.e(), null, new f(ImageRequestBuilder.x(uri).A((cVar != null ? cVar.a() : null) == GifStepAction.TERMINATE ? ImageRequest.CacheChoice.DEFAULT : ImageRequest.CacheChoice.SMALL).a(), null), 2, null);
    }

    public static /* synthetic */ void J(GifView gifView, Media media, RenditionType renditionType, Drawable drawable, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 2) != 0) {
                renditionType = null;
            }
            if ((i4 & 4) != 0) {
                drawable = null;
            }
            gifView.I(media, renditionType, drawable);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setMedia");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void L(GifView gifView, String str, RenditionType renditionType, Drawable drawable, Function2 function2, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 2) != 0) {
                renditionType = RenditionType.fixedWidth;
            }
            if ((i4 & 4) != 0) {
                drawable = null;
            }
            if ((i4 & 8) != 0) {
                function2 = null;
            }
            gifView.K(str, renditionType, drawable, function2);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setMediaWithId");
    }

    private final void M() {
        if (this.f19011n < getLoadingSteps().size()) {
            w();
        }
    }

    private final void N() {
        if (this.f19011n >= getLoadingSteps().size()) {
            return;
        }
        int i4 = q.$EnumSwitchMapping$0[getLoadingSteps().get(this.f19011n).a().ordinal()];
        if (i4 == 1) {
            this.f19011n++;
            M();
        } else if (i4 != 2) {
        } else {
            this.f19011n += 2;
            M();
        }
    }

    private final d getControllerListener() {
        return new d();
    }

    private final List<com.giphy.sdk.ui.drawables.c> getLoadingSteps() {
        RenditionType renditionType = this.f19007j;
        if (renditionType != null) {
            com.giphy.sdk.ui.drawables.b bVar = com.giphy.sdk.ui.drawables.b.f17048e;
            Intrinsics.checkNotNull(renditionType);
            return bVar.e(renditionType);
        }
        Media media = this.A;
        if (Intrinsics.areEqual(media != null ? com.giphy.sdk.tracking.f.d(media) : null, Boolean.TRUE)) {
            return com.giphy.sdk.ui.drawables.b.f17048e.a();
        }
        return com.giphy.sdk.ui.drawables.b.f17048e.c();
    }

    private final void s() {
        if (this.f19023z > 0) {
            setOutlineProvider(new c());
            setClipToOutline(true);
        }
    }

    private final void setMedia(Media media) {
        this.f19021x = false;
        this.A = media;
        B();
        requestLayout();
        post(new e());
    }

    private final void w() {
        List<com.giphy.sdk.ui.drawables.c> loadingSteps = getLoadingSteps();
        com.giphy.sdk.ui.drawables.c cVar = loadingSteps.get(this.f19011n);
        Media media = this.A;
        Image a10 = media != null ? com.giphy.sdk.ui.utils.f.a(media, cVar.c()) : null;
        Uri c10 = a10 != null ? com.giphy.sdk.ui.utils.f.c(a10, this.f19020w) : null;
        if (c10 != null) {
            if (loadingSteps.size() > 1) {
                setController(com.facebook.drawee.backends.pipeline.d.j().c(getController()).K(getControllerListener()).M(this.f19013p).build());
                G(c10);
                return;
            }
            x(c10);
            return;
        }
        N();
    }

    private final void x(Uri uri) {
        setController(com.facebook.drawee.backends.pipeline.d.j().a(uri).c(getController()).K(getControllerListener()).build());
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void y() {
        /*
            r3 = this;
            r0 = 0
            r3.f19021x = r0
            r3.f19011n = r0
            android.graphics.drawable.Drawable r0 = r3.f19010m
            if (r0 == 0) goto L12
            z0.b r1 = r3.getHierarchy()
            com.facebook.drawee.generic.a r1 = (com.facebook.drawee.generic.a) r1
            r1.M(r0)
        L12:
            boolean r0 = r3.f19018u
            if (r0 == 0) goto L23
            z0.b r0 = r3.getHierarchy()
            com.facebook.drawee.generic.a r0 = (com.facebook.drawee.generic.a) r0
            com.facebook.drawee.drawable.l r1 = r3.getProgressDrawable()
            r0.S(r1)
        L23:
            com.giphy.sdk.core.models.Media r0 = r3.A
            r1 = 0
            if (r0 == 0) goto L4b
            boolean r0 = r0.isSticker()
            r2 = 1
            if (r0 != r2) goto L4b
            com.giphy.sdk.core.models.Media r0 = r3.A
            if (r0 == 0) goto L38
            java.lang.Boolean r0 = com.giphy.sdk.tracking.f.d(r0)
            goto L39
        L38:
            r0 = r1
        L39:
            java.lang.Boolean r2 = java.lang.Boolean.TRUE
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r2)
            if (r0 != 0) goto L4b
            boolean r0 = r3.f19019v
            if (r0 == 0) goto L4b
            android.graphics.drawable.Drawable r0 = r3.C
            r3.setBackground(r0)
            goto L4e
        L4b:
            r3.setBackground(r1)
        L4e:
            com.giphy.sdk.core.models.Media r0 = r3.A
            if (r0 == 0) goto L55
            r3.w()
        L55:
            com.facebook.drawee.drawable.s$c r0 = r3.f19022y
            if (r0 == 0) goto L69
            z0.b r0 = r3.getHierarchy()
            com.facebook.drawee.generic.a r0 = (com.facebook.drawee.generic.a) r0
            java.lang.String r1 = "hierarchy"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            com.facebook.drawee.drawable.s$c r1 = r3.f19022y
            r0.z(r1)
        L69:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.giphy.sdk.ui.views.GifView.y():void");
    }

    private final void z() {
        com.giphy.sdk.ui.drawables.c cVar = getLoadingSteps().get(this.f19011n);
        this.f19012o = cVar;
        com.giphy.sdk.ui.utils.d dVar = com.giphy.sdk.ui.utils.d.f18930a;
        Media media = this.A;
        Intrinsics.checkNotNull(cVar);
        Image a10 = dVar.a(media, cVar.c());
        Intrinsics.checkNotNull(a10);
        ImageUriInfo b10 = dVar.b(a10, this.f19020w);
        if (b10 != null) {
            G(b10.getUri());
        }
    }

    public void A(@m8.h String str, @Nullable @m8.h com.facebook.imagepipeline.image.g gVar, @Nullable @m8.h Animatable animatable) {
        long j4;
        int i4;
        if (!this.f19021x) {
            this.f19021x = true;
            b bVar = this.f19014q;
            if (bVar != null) {
                b.a.a(bVar, gVar, animatable, 0L, 0, 12, null);
            }
            Function0<Unit> function0 = this.f19015r;
            if (function0 != null) {
                function0.invoke();
            }
        }
        com.facebook.fresco.animation.drawable.a aVar = (com.facebook.fresco.animation.drawable.a) (!(animatable instanceof com.facebook.fresco.animation.drawable.a) ? null : animatable);
        if (aVar != null) {
            i4 = aVar.g();
            j4 = aVar.h();
        } else {
            j4 = -1;
            i4 = 0;
        }
        if (this.f19008k && animatable != null) {
            animatable.start();
        }
        b bVar2 = this.f19014q;
        if (bVar2 != null) {
            bVar2.b(gVar, animatable, j4, i4);
        }
        N();
    }

    protected void B() {
    }

    public final void C() {
        Animatable g4;
        z0.a controller;
        Animatable g10;
        this.f19008k = false;
        z0.a controller2 = getController();
        if (controller2 == null || (g4 = controller2.g()) == null || !g4.isRunning() || (controller = getController()) == null || (g10 = controller.g()) == null) {
            return;
        }
        g10.stop();
    }

    public final void D() {
        Animatable g4;
        z0.a controller;
        Animatable g10;
        this.f19008k = true;
        z0.a controller2 = getController();
        if (controller2 == null || (g4 = controller2.g()) == null || g4.isRunning() || (controller = getController()) == null || (g10 = controller.g()) == null) {
            return;
        }
        g10.start();
    }

    public final void E() {
        setMedia(null);
        this.f19010m = null;
        getHierarchy().M(null);
    }

    public final void F() {
        getHierarchy().J(null);
        invalidate();
    }

    public final void H() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        getHierarchy().J(new com.facebook.drawee.drawable.r(context.getResources().getDrawable(p.h.I2), s.c.f11565h));
        invalidate();
    }

    public final void I(@m8.h Media media, @m8.h RenditionType renditionType, @m8.h Drawable drawable) {
        setMedia(media);
        this.f19007j = renditionType;
        this.f19010m = drawable;
    }

    public final void K(@m8.g String id, @m8.g RenditionType renditionType, @m8.h Drawable drawable, @m8.h Function2<? super MediaResponse, ? super Throwable, Unit> function2) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(renditionType, "renditionType");
        this.B = id;
        com.giphy.sdk.core.c.f16910h.f().h(id, new g(renditionType, drawable, function2));
    }

    @m8.h
    public final Drawable getBgDrawable() {
        return this.C;
    }

    public final float getCornerRadius() {
        return this.f19023z;
    }

    @m8.h
    public final Float getFixedAspectRatio() {
        return this.f19016s;
    }

    @m8.h
    public final b getGifCallback() {
        return this.f19014q;
    }

    @m8.g
    public final ImageFormat getImageFormat() {
        return this.f19020w;
    }

    public final boolean getLoaded() {
        return this.f19021x;
    }

    @m8.h
    public final Media getMedia() {
        return this.A;
    }

    @m8.h
    public final String getMediaId() {
        return this.B;
    }

    @m8.h
    public final Function0<Unit> getOnPingbackGifLoadSuccess() {
        return this.f19015r;
    }

    @m8.g
    public final com.facebook.drawee.drawable.l getProgressDrawable() {
        com.facebook.drawee.drawable.l lVar = new com.facebook.drawee.drawable.l();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        lVar.m(context.getResources().getColor(p.f.f17437i1));
        lVar.setBounds(0, getHeight() - 6, getWidth(), getHeight());
        lVar.p(0);
        return lVar;
    }

    @Override // android.widget.ImageView
    @m8.h
    public final s.c getScaleType() {
        return this.f19022y;
    }

    public final boolean getShowProgress() {
        return this.f19018u;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0112  */
    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r11, int r12) {
        /*
            Method dump skipped, instructions count: 413
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.giphy.sdk.ui.views.GifView.onMeasure(int, int):void");
    }

    public final void setBackgroundVisible(boolean z9) {
        this.f19019v = z9;
    }

    public final void setBgDrawable(@m8.h Drawable drawable) {
        this.C = drawable;
    }

    public final void setCornerRadius(float f10) {
        this.f19023z = f10;
    }

    public final void setFixedAspectRatio(@m8.h Float f10) {
        this.f19016s = f10;
    }

    public final void setGifCallback(@m8.h b bVar) {
        this.f19014q = bVar;
    }

    public final void setImageFormat(@m8.g ImageFormat imageFormat) {
        Intrinsics.checkNotNullParameter(imageFormat, "<set-?>");
        this.f19020w = imageFormat;
    }

    public final void setLoaded(boolean z9) {
        this.f19021x = z9;
    }

    public final void setMediaId(@m8.h String str) {
        this.B = str;
    }

    public final void setOnPingbackGifLoadSuccess(@m8.h Function0<Unit> function0) {
        this.f19015r = function0;
    }

    public final void setScaleType(@m8.h s.c cVar) {
        this.f19022y = cVar;
    }

    public final void setShowProgress(boolean z9) {
        this.f19018u = z9;
    }

    public final boolean t() {
        return this.f19019v;
    }

    public final void u(@DrawableRes int i4) {
        setMedia(null);
        this.f19021x = false;
        setController(com.facebook.drawee.backends.pipeline.d.j().c(getController()).K(getControllerListener()).P(ImageRequestBuilder.w(i4).a()).build());
    }

    public final void v(@m8.h String str) {
        try {
            setMedia(null);
            Uri parse = Uri.parse(str);
            Intrinsics.checkNotNullExpressionValue(parse, "Uri.parse(url)");
            x(parse);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GifView(@m8.g Context context, @m8.h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Intrinsics.checkNotNullParameter(context, "context");
        com.giphy.sdk.ui.l lVar = com.giphy.sdk.ui.l.f17075f;
        this.f19008k = lVar.j();
        this.f19009l = 1.7777778f;
        this.f19013p = new com.facebook.datasource.i<>();
        this.f19017t = 1.7777778f;
        this.f19019v = true;
        this.f19020w = ImageFormat.WEBP;
        this.f19023z = com.giphy.sdk.ui.utils.g.b(0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.q.Jd, 0, 0);
        this.f19006i = obtainStyledAttributes.getBoolean(p.q.Md, true);
        this.f19023z = obtainStyledAttributes.getDimension(p.q.Kd, 0.0f);
        obtainStyledAttributes.recycle();
        this.C = ContextCompat.getDrawable(context, Intrinsics.areEqual(lVar.m(), i2.d.f69302n) ? p.h.Z2 : p.h.Y2);
    }
}
