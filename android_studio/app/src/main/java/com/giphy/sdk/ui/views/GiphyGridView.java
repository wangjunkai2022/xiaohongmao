package com.giphy.sdk.ui.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.core.models.enums.RenditionType;
import com.giphy.sdk.ui.GPHSettings;
import com.giphy.sdk.ui.drawables.ImageFormat;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.pagination.GPHContent;
import com.giphy.sdk.ui.themes.GPHTheme;
import com.giphy.sdk.ui.universallist.SmartGridRecyclerView;
import com.giphy.sdk.ui.universallist.SmartItemType;
import io.sentry.Session;
import io.sentry.protocol.t;
import io.sentry.protocol.w;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import timber.log.Timber;

/* compiled from: GiphyGridView.kt */
@Metadata(bv = {}, d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 u2\u00020\u0001:\u0001vB'\b\u0007\u0012\u0006\u0010o\u001a\u00020n\u0012\n\b\u0002\u0010q\u001a\u0004\u0018\u00010p\u0012\b\b\u0002\u0010r\u001a\u00020\u0007¢\u0006\u0004\bs\u0010tJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0012\u0010\u000e\u001a\u00020\u00022\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002J\u0012\u0010\u0010\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014J\b\u0010\u0014\u001a\u00020\u0002H\u0014J\b\u0010\u0015\u001a\u00020\u0002H\u0014J\u0012\u0010\u0017\u001a\u00020\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u0012H\u0014J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u000e\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bR$\u0010%\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R$\u0010-\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R*\u00105\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u00078\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R.\u0010<\u001a\u0004\u0018\u0001062\b\u0010.\u001a\u0004\u0018\u0001068\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R*\u0010?\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u00078\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u00100\u001a\u0004\b=\u00102\"\u0004\b>\u00104R*\u0010B\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u00078\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u00100\u001a\u0004\b@\u00102\"\u0004\bA\u00104R*\u0010H\u001a\u00020\u00182\u0006\u0010.\u001a\u00020\u00188\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR*\u0010O\u001a\u00020I2\u0006\u0010.\u001a\u00020I8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010J\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR.\u0010V\u001a\u0004\u0018\u00010P2\b\u0010.\u001a\u0004\u0018\u00010P8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR.\u0010Y\u001a\u0004\u0018\u00010P2\b\u0010.\u001a\u0004\u0018\u00010P8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010Q\u001a\u0004\bW\u0010S\"\u0004\bX\u0010UR*\u0010]\u001a\u00020\u00182\u0006\u0010.\u001a\u00020\u00188\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bZ\u0010C\u001a\u0004\b[\u0010E\"\u0004\b\\\u0010GR\"\u0010a\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b^\u0010C\u001a\u0004\b_\u0010E\"\u0004\b`\u0010GR*\u0010e\u001a\u00020\u00182\u0006\u0010.\u001a\u00020\u00188\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bb\u0010C\u001a\u0004\bc\u0010E\"\u0004\bd\u0010GR\"\u0010i\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bf\u0010C\u001a\u0004\bg\u0010E\"\u0004\bh\u0010GR\u0018\u0010m\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010l¨\u0006w"}, d2 = {"Lcom/giphy/sdk/ui/views/GiphyGridView;", "Landroid/widget/FrameLayout;", "", "j", "k", "Lcom/giphy/sdk/ui/universallist/g;", "item", "", "position", "f", "itemData", "g", "", "mediaId", "h", w.b.f83891c, ContextChain.TAG_INFRA, "e", "Landroid/os/Parcelable;", "onSaveInstanceState", "onAttachedToWindow", "onDetachedFromWindow", t.b.f83859d, "onRestoreInstanceState", "", "hasWindowFocus", "onWindowFocusChanged", "Lcom/giphy/sdk/ui/n;", "loadingProvider", "setGiphyLoadingProvider", "Lcom/giphy/sdk/ui/views/a;", "b", "Lcom/giphy/sdk/ui/views/a;", "getCallback", "()Lcom/giphy/sdk/ui/views/a;", "setCallback", "(Lcom/giphy/sdk/ui/views/a;)V", com.alipay.sdk.authjs.a.f6838i, "Lcom/giphy/sdk/ui/views/e;", "c", "Lcom/giphy/sdk/ui/views/e;", "getSearchCallback", "()Lcom/giphy/sdk/ui/views/e;", "setSearchCallback", "(Lcom/giphy/sdk/ui/views/e;)V", "searchCallback", "value", "d", "I", "getDirection", "()I", "setDirection", "(I)V", "direction", "Lcom/giphy/sdk/ui/pagination/GPHContent;", "Lcom/giphy/sdk/ui/pagination/GPHContent;", "getContent", "()Lcom/giphy/sdk/ui/pagination/GPHContent;", "setContent", "(Lcom/giphy/sdk/ui/pagination/GPHContent;)V", "content", "getCellPadding", "setCellPadding", "cellPadding", "getSpanCount", "setSpanCount", "spanCount", "Z", "getShowCheckeredBackground", "()Z", "setShowCheckeredBackground", "(Z)V", "showCheckeredBackground", "Lcom/giphy/sdk/ui/drawables/ImageFormat;", "Lcom/giphy/sdk/ui/drawables/ImageFormat;", "getImageFormat", "()Lcom/giphy/sdk/ui/drawables/ImageFormat;", "setImageFormat", "(Lcom/giphy/sdk/ui/drawables/ImageFormat;)V", com.facebook.imagepipeline.producers.n.f13104r, "Lcom/giphy/sdk/core/models/enums/RenditionType;", "Lcom/giphy/sdk/core/models/enums/RenditionType;", "getRenditionType", "()Lcom/giphy/sdk/core/models/enums/RenditionType;", "setRenditionType", "(Lcom/giphy/sdk/core/models/enums/RenditionType;)V", "renditionType", "getClipsPreviewRenditionType", "setClipsPreviewRenditionType", "clipsPreviewRenditionType", "l", "getEnableDynamicText", "setEnableDynamicText", "enableDynamicText", "m", "getShowViewOnGiphy", "setShowViewOnGiphy", "showViewOnGiphy", "n", "getFixedSizeCells", "setFixedSizeCells", "fixedSizeCells", "o", "getUseInExtensionMode", "setUseInExtensionMode", "useInExtensionMode", "Lcom/giphy/sdk/ui/views/c;", "p", "Lcom/giphy/sdk/ui/views/c;", "giphyActionsView", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", Session.b.f81849j, "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "s", "a", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class GiphyGridView extends FrameLayout {

    /* renamed from: q  reason: collision with root package name */
    public static final int f19096q = 0;

    /* renamed from: r  reason: collision with root package name */
    public static final int f19097r = 1;
    @m8.g

    /* renamed from: s  reason: collision with root package name */
    public static final a f19098s = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final h2.e f19099a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private com.giphy.sdk.ui.views.a f19100b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private com.giphy.sdk.ui.views.e f19101c;

    /* renamed from: d  reason: collision with root package name */
    private int f19102d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private GPHContent f19103e;

    /* renamed from: f  reason: collision with root package name */
    private int f19104f;

    /* renamed from: g  reason: collision with root package name */
    private int f19105g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f19106h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private ImageFormat f19107i;
    @m8.h

    /* renamed from: j  reason: collision with root package name */
    private RenditionType f19108j;
    @m8.h

    /* renamed from: k  reason: collision with root package name */
    private RenditionType f19109k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f19110l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f19111m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f19112n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f19113o;

    /* renamed from: p  reason: collision with root package name */
    private com.giphy.sdk.ui.views.c f19114p;

    /* compiled from: GiphyGridView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/giphy/sdk/ui/views/GiphyGridView$a;", "", "", "HORIZONTAL", "I", "VERTICAL", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyGridView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0017\u0010\u0004\u001a\u0013\u0018\u00010\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0003¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"", "Lkotlin/ParameterName;", "name", w.b.f83891c, "p1", "", "a", "(Ljava/lang/String;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final /* synthetic */ class b extends FunctionReferenceImpl implements Function1<String, Unit> {
        b(GiphyGridView giphyGridView) {
            super(1, giphyGridView, GiphyGridView.class, "queryUsername", "queryUsername(Ljava/lang/String;)V", 0);
        }

        public final void a(@m8.h String str) {
            ((GiphyGridView) this.receiver).i(str);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            a(str);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyGridView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0017\u0010\u0004\u001a\u0013\u0018\u00010\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0003¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"", "Lkotlin/ParameterName;", "name", "mediaId", "p1", "", "a", "(Ljava/lang/String;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final /* synthetic */ class c extends FunctionReferenceImpl implements Function1<String, Unit> {
        c(GiphyGridView giphyGridView) {
            super(1, giphyGridView, GiphyGridView.class, "onRemoveRecentGif", "onRemoveRecentGif(Ljava/lang/String;)V", 0);
        }

        public final void a(@m8.h String str) {
            ((GiphyGridView) this.receiver).h(str);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            a(str);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyGridView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"", "it", "", "a", "(I)V", "com/giphy/sdk/ui/views/GiphyGridView$setupGifsRecycler$1$1"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class d extends Lambda implements Function1<Integer, Unit> {
        d() {
            super(1);
        }

        public final void a(int i4) {
            com.giphy.sdk.ui.views.a callback = GiphyGridView.this.getCallback();
            if (callback != null) {
                callback.b(i4);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyGridView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\t\u001a\u00020\b2\u0015\u0010\u0004\u001a\u00110\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u00032\u0015\u0010\u0007\u001a\u00110\u0005¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0006¢\u0006\u0004\b\t\u0010\n"}, d2 = {"Lcom/giphy/sdk/ui/universallist/g;", "Lkotlin/ParameterName;", "name", "item", "p1", "", "position", "p2", "", "a", "(Lcom/giphy/sdk/ui/universallist/g;I)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final /* synthetic */ class e extends FunctionReferenceImpl implements Function2<com.giphy.sdk.ui.universallist.g, Integer, Unit> {
        e(GiphyGridView giphyGridView) {
            super(2, giphyGridView, GiphyGridView.class, "deliverGif", "deliverGif(Lcom/giphy/sdk/ui/universallist/SmartItemData;I)V", 0);
        }

        public final void a(@m8.g com.giphy.sdk.ui.universallist.g p12, int i4) {
            Intrinsics.checkNotNullParameter(p12, "p1");
            ((GiphyGridView) this.receiver).f(p12, i4);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(com.giphy.sdk.ui.universallist.g gVar, Integer num) {
            a(gVar, num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GiphyGridView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\t\u001a\u00020\b2\u0015\u0010\u0004\u001a\u00110\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u00032\u0015\u0010\u0007\u001a\u00110\u0005¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0006¢\u0006\u0004\b\t\u0010\n"}, d2 = {"Lcom/giphy/sdk/ui/universallist/g;", "Lkotlin/ParameterName;", "name", "itemData", "p1", "", "position", "p2", "", "a", "(Lcom/giphy/sdk/ui/universallist/g;I)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final /* synthetic */ class f extends FunctionReferenceImpl implements Function2<com.giphy.sdk.ui.universallist.g, Integer, Unit> {
        f(GiphyGridView giphyGridView) {
            super(2, giphyGridView, GiphyGridView.class, "onLongPressGif", "onLongPressGif(Lcom/giphy/sdk/ui/universallist/SmartItemData;I)V", 0);
        }

        public final void a(@m8.g com.giphy.sdk.ui.universallist.g p12, int i4) {
            Intrinsics.checkNotNullParameter(p12, "p1");
            ((GiphyGridView) this.receiver).g(p12, i4);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(com.giphy.sdk.ui.universallist.g gVar, Integer num) {
            a(gVar, num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GiphyGridView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\t"}, d2 = {"com/giphy/sdk/ui/views/GiphyGridView$g", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "dx", "dy", "", "onScrolled", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class g extends RecyclerView.OnScrollListener {
        g() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@m8.g RecyclerView recyclerView, int i4, int i10) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i4, i10);
            com.giphy.sdk.ui.views.e searchCallback = GiphyGridView.this.getSearchCallback();
            if (searchCallback != null) {
                searchCallback.a(i4, i10);
            }
        }
    }

    @JvmOverloads
    public GiphyGridView(@m8.g Context context) {
        this(context, null, 0, 6, null);
    }

    @JvmOverloads
    public GiphyGridView(@m8.g Context context, @m8.h AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ GiphyGridView(Context context, AttributeSet attributeSet, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i4);
    }

    private final void e() {
        h2.e eVar = this.f19099a;
        SmartGridRecyclerView smartGridRecyclerView = eVar.f68982b;
        if (smartGridRecyclerView != null) {
            smartGridRecyclerView.setCellPadding(this.f19104f);
        }
        SmartGridRecyclerView smartGridRecyclerView2 = eVar.f68982b;
        if (smartGridRecyclerView2 != null) {
            smartGridRecyclerView2.setSpanCount(this.f19105g);
        }
        SmartGridRecyclerView smartGridRecyclerView3 = eVar.f68982b;
        if (smartGridRecyclerView3 != null) {
            smartGridRecyclerView3.setOrientation(this.f19102d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(com.giphy.sdk.ui.universallist.g gVar, int i4) {
        if (gVar.d() == SmartItemType.Gif || gVar.d() == SmartItemType.Video || gVar.d() == SmartItemType.DynamicTextWithMoreByYou || gVar.d() == SmartItemType.DynamicText) {
            Object a10 = gVar.a();
            if (!(a10 instanceof Media)) {
                a10 = null;
            }
            Media media = (Media) a10;
            if (media != null) {
                media.setBottleData(null);
                com.giphy.sdk.ui.views.a aVar = this.f19100b;
                if (aVar != null) {
                    aVar.a(media);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(com.giphy.sdk.ui.universallist.g gVar, int i4) {
        GifView gifView;
        com.giphy.sdk.ui.views.e eVar;
        com.giphy.sdk.ui.views.e eVar2;
        Object a10 = gVar.a();
        if (!(a10 instanceof Media)) {
            a10 = null;
        }
        Media media = (Media) a10;
        if (media != null) {
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.f19099a.f68982b.findViewHolderForAdapterPosition(i4);
            View view = findViewHolderForAdapterPosition != null ? findViewHolderForAdapterPosition.itemView : null;
            GifView gifView2 = view instanceof GifView ? view : null;
            if (gifView2 != null && (eVar2 = this.f19101c) != null) {
                eVar2.b(gifView2);
            }
            if (view != null && (gifView = (GifView) view.findViewById(p.j.M2)) != null && (eVar = this.f19101c) != null) {
                eVar.b(gifView);
            }
            com.giphy.sdk.ui.views.c cVar = this.f19114p;
            if (cVar != null) {
                cVar.n(Intrinsics.areEqual(this.f19103e, GPHContent.f18789n.getRecents()));
            }
            com.giphy.sdk.ui.views.c cVar2 = this.f19114p;
            if (cVar2 != null) {
                cVar2.j(media);
            }
            com.giphy.sdk.ui.views.c cVar3 = this.f19114p;
            if (cVar3 != null) {
                cVar3.showAsDropDown(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(String str) {
        GPHContent gPHContent = this.f19103e;
        GPHContent.Companion companion = GPHContent.f18789n;
        if (Intrinsics.areEqual(gPHContent, companion.getRecents())) {
            com.giphy.sdk.ui.l.f17075f.l().e(str);
            this.f19099a.f68982b.C(companion.getRecents());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(String str) {
        com.giphy.sdk.ui.views.e eVar;
        SmartGridRecyclerView smartGridRecyclerView = this.f19099a.f68982b;
        GPHContent.Companion companion = GPHContent.f18789n;
        smartGridRecyclerView.C(GPHContent.Companion.searchQuery$default(companion, '@' + str, null, null, 6, null));
        if (str == null || (eVar = this.f19101c) == null) {
            return;
        }
        eVar.c(str);
    }

    private final void j() {
        ArrayList arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(GPHActions.SearchMore);
        if (this.f19111m) {
            arrayListOf.add(GPHActions.OpenGiphy);
        }
        Context context = getContext();
        Object[] array = arrayListOf.toArray(new GPHActions[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        com.giphy.sdk.ui.views.c cVar = new com.giphy.sdk.ui.views.c(context, (GPHActions[]) array);
        this.f19114p = cVar;
        cVar.l(new b(this));
        com.giphy.sdk.ui.views.c cVar2 = this.f19114p;
        if (cVar2 != null) {
            cVar2.k(new c(this));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
        if (r0.a(r1) != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void k() {
        /*
            r5 = this;
            boolean r0 = r5.f19113o
            if (r0 != 0) goto L15
            com.giphy.sdk.core.d r0 = com.giphy.sdk.core.d.f16911a
            android.content.Context r1 = r5.getContext()
            java.lang.String r2 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            boolean r0 = r0.a(r1)
            if (r0 == 0) goto L34
        L15:
            r0 = 0
            java.lang.Object[] r1 = new java.lang.Object[r0]
            java.lang.String r2 = "Using extensionsApiClient"
            timber.log.Timber.e(r2, r1)
            h2.e r1 = r5.f19099a
            com.giphy.sdk.ui.universallist.SmartGridRecyclerView r1 = r1.f68982b
            com.giphy.sdk.core.c r2 = com.giphy.sdk.core.c.f16910h
            com.giphy.sdk.core.network.api.GPHApiClient r3 = r2.f()
            java.lang.String r3 = r3.k()
            java.lang.String r4 = "extensionApiClient"
            com.giphy.sdk.core.network.api.GPHApiClient r0 = r2.c(r4, r3, r0)
            r1.setApiClient$giphy_ui_2_1_9_release(r0)
        L34:
            h2.e r0 = r5.f19099a
            com.giphy.sdk.ui.universallist.SmartGridRecyclerView r1 = r0.f68982b
            int r2 = r5.f19104f
            r1.setCellPadding(r2)
            com.giphy.sdk.ui.universallist.SmartGridRecyclerView r1 = r0.f68982b
            int r2 = r5.f19105g
            r1.setSpanCount(r2)
            com.giphy.sdk.ui.universallist.SmartGridRecyclerView r1 = r0.f68982b
            int r2 = r5.f19102d
            r1.setOrientation(r2)
            com.giphy.sdk.ui.universallist.SmartGridRecyclerView r1 = r0.f68982b
            com.giphy.sdk.ui.views.GiphyGridView$d r2 = new com.giphy.sdk.ui.views.GiphyGridView$d
            r2.<init>()
            r1.setOnResultsUpdateListener(r2)
            com.giphy.sdk.ui.universallist.SmartGridRecyclerView r1 = r0.f68982b
            com.giphy.sdk.ui.views.GiphyGridView$e r2 = new com.giphy.sdk.ui.views.GiphyGridView$e
            r2.<init>(r5)
            r1.setOnItemSelectedListener(r2)
            com.giphy.sdk.ui.universallist.SmartGridRecyclerView r0 = r0.f68982b
            com.giphy.sdk.ui.views.GiphyGridView$f r1 = new com.giphy.sdk.ui.views.GiphyGridView$f
            r1.<init>(r5)
            r0.setOnItemLongPressListener(r1)
            h2.e r0 = r5.f19099a
            com.giphy.sdk.ui.universallist.SmartGridRecyclerView r0 = r0.f68982b
            com.giphy.sdk.ui.views.GiphyGridView$g r1 = new com.giphy.sdk.ui.views.GiphyGridView$g
            r1.<init>()
            r0.addOnScrollListener(r1)
            r5.e()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.giphy.sdk.ui.views.GiphyGridView.k():void");
    }

    @m8.h
    public final com.giphy.sdk.ui.views.a getCallback() {
        return this.f19100b;
    }

    public final int getCellPadding() {
        return this.f19104f;
    }

    @m8.h
    public final RenditionType getClipsPreviewRenditionType() {
        return this.f19109k;
    }

    @m8.h
    public final GPHContent getContent() {
        return this.f19103e;
    }

    public final int getDirection() {
        return this.f19102d;
    }

    public final boolean getEnableDynamicText() {
        return this.f19110l;
    }

    public final boolean getFixedSizeCells() {
        return this.f19112n;
    }

    @m8.g
    public final ImageFormat getImageFormat() {
        return this.f19107i;
    }

    @m8.h
    public final RenditionType getRenditionType() {
        return this.f19108j;
    }

    @m8.h
    public final com.giphy.sdk.ui.views.e getSearchCallback() {
        return this.f19101c;
    }

    public final boolean getShowCheckeredBackground() {
        return this.f19106h;
    }

    public final boolean getShowViewOnGiphy() {
        return this.f19111m;
    }

    public final int getSpanCount() {
        return this.f19105g;
    }

    public final boolean getUseInExtensionMode() {
        return this.f19113o;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Timber.e("onAttachedToWindow", new Object[0]);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Timber.e("onDetachedFromWindow", new Object[0]);
        this.f19099a.f68982b.getGifTrackingManager$giphy_ui_2_1_9_release().r();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(@m8.h Parcelable parcelable) {
        Timber.e("onRestoreInstanceState", new Object[0]);
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    @m8.h
    protected Parcelable onSaveInstanceState() {
        Timber.e("onSaveInstanceState", new Object[0]);
        return super.onSaveInstanceState();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z9) {
        super.onWindowFocusChanged(z9);
        Timber.e("onWindowFocusChanged " + z9, new Object[0]);
        if (z9) {
            this.f19099a.f68982b.getGifTrackingManager$giphy_ui_2_1_9_release().y();
        }
    }

    public final void setCallback(@m8.h com.giphy.sdk.ui.views.a aVar) {
        this.f19100b = aVar;
    }

    public final void setCellPadding(int i4) {
        this.f19104f = i4;
        e();
    }

    public final void setClipsPreviewRenditionType(@m8.h RenditionType renditionType) {
        this.f19109k = renditionType;
        this.f19099a.f68982b.getGifsAdapter().g().k(renditionType);
    }

    public final void setContent(@m8.h GPHContent gPHContent) {
        GPHContent gPHContent2 = this.f19103e;
        if (!(!Intrinsics.areEqual(gPHContent2 != null ? gPHContent2.o() : null, gPHContent != null ? gPHContent.o() : null))) {
            GPHContent gPHContent3 = this.f19103e;
            if ((gPHContent3 != null ? gPHContent3.k() : null) == (gPHContent != null ? gPHContent.k() : null)) {
                return;
            }
        }
        this.f19103e = gPHContent;
        if (gPHContent != null) {
            this.f19099a.f68982b.C(gPHContent);
        } else {
            this.f19099a.f68982b.q();
        }
    }

    public final void setDirection(int i4) {
        this.f19102d = i4;
        e();
    }

    public final void setEnableDynamicText(boolean z9) {
        this.f19110l = z9;
        this.f19099a.f68982b.getGifsAdapter().g().n(new GPHSettings(null, null, null, false, false, null, null, null, null, false, 0, null, false, false, z9, false, null, 114687, null));
    }

    public final void setFixedSizeCells(boolean z9) {
        this.f19112n = z9;
        this.f19099a.f68982b.getGifsAdapter().g().s(z9);
    }

    public final void setGiphyLoadingProvider(@m8.g com.giphy.sdk.ui.n loadingProvider) {
        Intrinsics.checkNotNullParameter(loadingProvider, "loadingProvider");
        this.f19099a.f68982b.getGifsAdapter().g().m(loadingProvider);
    }

    public final void setImageFormat(@m8.g ImageFormat value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f19107i = value;
        this.f19099a.f68982b.getGifsAdapter().g().o(value);
    }

    public final void setRenditionType(@m8.h RenditionType renditionType) {
        this.f19108j = renditionType;
        this.f19099a.f68982b.getGifsAdapter().g().q(renditionType);
    }

    public final void setSearchCallback(@m8.h com.giphy.sdk.ui.views.e eVar) {
        this.f19101c = eVar;
    }

    public final void setShowCheckeredBackground(boolean z9) {
        this.f19106h = z9;
        this.f19099a.f68982b.getGifsAdapter().g().r(z9);
    }

    public final void setShowViewOnGiphy(boolean z9) {
        this.f19111m = z9;
    }

    public final void setSpanCount(int i4) {
        this.f19105g = i4;
        e();
    }

    public final void setUseInExtensionMode(boolean z9) {
        this.f19113o = z9;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GiphyGridView(@m8.g Context context, @m8.h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        int i10;
        int i11;
        int i12;
        boolean z9;
        boolean z10;
        Intrinsics.checkNotNullParameter(context, "context");
        this.f19102d = 1;
        this.f19104f = 10;
        this.f19105g = 2;
        this.f19106h = true;
        this.f19107i = ImageFormat.WEBP;
        this.f19111m = true;
        com.giphy.sdk.ui.l.f17075f.r(GPHTheme.Automatic.getThemeResources$giphy_ui_2_1_9_release(context));
        h2.e b10 = h2.e.b(LayoutInflater.from(context), this);
        Intrinsics.checkNotNullExpressionValue(b10, "GphGridViewBinding.infla…ater.from(context), this)");
        this.f19099a = b10;
        setSaveEnabled(true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.q.Nd, 0, 0);
        if (obtainStyledAttributes != null) {
            i10 = obtainStyledAttributes.getInteger(p.q.Rd, this.f19105g);
        } else {
            i10 = this.f19105g;
        }
        setSpanCount(i10);
        if (obtainStyledAttributes != null) {
            i11 = obtainStyledAttributes.getDimensionPixelSize(p.q.Od, this.f19104f);
        } else {
            i11 = this.f19104f;
        }
        setCellPadding(i11);
        if (obtainStyledAttributes != null) {
            i12 = obtainStyledAttributes.getInteger(p.q.Pd, this.f19102d);
        } else {
            i12 = this.f19102d;
        }
        setDirection(i12);
        if (obtainStyledAttributes != null) {
            z9 = obtainStyledAttributes.getBoolean(p.q.Qd, this.f19106h);
        } else {
            z9 = this.f19106h;
        }
        setShowCheckeredBackground(z9);
        if (obtainStyledAttributes != null) {
            z10 = obtainStyledAttributes.getBoolean(p.q.Sd, this.f19113o);
        } else {
            z10 = this.f19113o;
        }
        this.f19113o = z10;
        if (obtainStyledAttributes != null) {
            obtainStyledAttributes.recycle();
        }
        k();
        j();
    }
}
