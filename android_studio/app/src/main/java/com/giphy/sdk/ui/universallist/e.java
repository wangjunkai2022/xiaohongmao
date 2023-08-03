package com.giphy.sdk.ui.universallist;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.common.callercontext.ContextChain;
import com.facebook.imagepipeline.producers.n;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.core.models.enums.MediaType;
import com.giphy.sdk.core.models.enums.RenditionType;
import com.giphy.sdk.ui.GPHContentType;
import com.giphy.sdk.ui.GPHSettings;
import com.giphy.sdk.ui.drawables.ImageFormat;
import h2.p;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.s0;

/* compiled from: SmartGridAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001\u0018B\u001d\u0012\u0006\u0010P\u001a\u00020M\u0012\f\u0010R\u001a\b\u0012\u0004\u0012\u00020\u00020Q¢\u0006\u0004\bS\u0010TJ\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u0018\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0003H\u0016J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u001e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\u000b2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0015H\u0016J\u000e\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bR\u001b\u0010\u001e\u001a\u00060\u001aR\u00020\u00008\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010#\u001a\b\u0012\u0004\u0012\u00020 0\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010$R.\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00070%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R(\u00103\u001a\b\u0012\u0004\u0012\u00020\u00070\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\"\u0010;\u001a\u0002048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:RR\u0010E\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(?\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00070<8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DRR\u0010I\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(?\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u00070<8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bF\u0010@\u001a\u0004\bG\u0010B\"\u0004\bH\u0010DR=\u0010L\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(?\u0012\u0004\u0012\u00020\u00070%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bG\u0010'\u001a\u0004\bJ\u0010)\"\u0004\bK\u0010+R\u0017\u0010P\u001a\u00020M8\u0006¢\u0006\f\n\u0004\bA\u0010N\u001a\u0004\bF\u0010O¨\u0006U"}, d2 = {"Lcom/giphy/sdk/ui/universallist/e;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/giphy/sdk/ui/universallist/g;", "Lcom/giphy/sdk/ui/universallist/j;", "Lcom/giphy/sdk/tracking/c;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "onAttachedToRecyclerView", "Landroid/view/ViewGroup;", "parent", "", "viewType", "q", "position", "getItemViewType", "holder", "p", "r", "Lcom/giphy/sdk/core/models/Media;", "c", "Lkotlin/Function0;", "onLoad", "", "a", "m", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e$a;", "g", "()Lcom/giphy/sdk/ui/universallist/e$a;", "adapterHelper", "", "Lcom/giphy/sdk/ui/universallist/SmartItemType;", "b", "[Lcom/giphy/sdk/ui/universallist/SmartItemType;", "typeValues", "Landroidx/recyclerview/widget/RecyclerView;", "Lkotlin/Function1;", "d", "Lkotlin/jvm/functions/Function1;", "k", "()Lkotlin/jvm/functions/Function1;", "u", "(Lkotlin/jvm/functions/Function1;)V", "loadingTrigger", "e", "Lkotlin/jvm/functions/Function0;", "n", "()Lkotlin/jvm/functions/Function0;", "w", "(Lkotlin/jvm/functions/Function0;)V", "updateTracking", "Lcom/giphy/sdk/core/models/enums/MediaType;", "f", "Lcom/giphy/sdk/core/models/enums/MediaType;", "l", "()Lcom/giphy/sdk/core/models/enums/MediaType;", "v", "(Lcom/giphy/sdk/core/models/enums/MediaType;)V", "mediaType", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "item", "Lkotlin/jvm/functions/Function2;", "j", "()Lkotlin/jvm/functions/Function2;", "t", "(Lkotlin/jvm/functions/Function2;)V", "itemSelectedListener", "h", ContextChain.TAG_INFRA, "s", "itemLongPressListener", "o", y.b.f83919g, "userProfileInfoPressListener", "Landroid/content/Context;", "Landroid/content/Context;", "()Landroid/content/Context;", "context", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "diff", "<init>", "(Landroid/content/Context;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class e extends ListAdapter<com.giphy.sdk.ui.universallist.g, com.giphy.sdk.ui.universallist.j> implements com.giphy.sdk.tracking.c {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final a f18866a;

    /* renamed from: b  reason: collision with root package name */
    private final SmartItemType[] f18867b;

    /* renamed from: c  reason: collision with root package name */
    private RecyclerView f18868c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private Function1<? super Integer, Unit> f18869d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private Function0<Unit> f18870e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private MediaType f18871f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private Function2<? super com.giphy.sdk.ui.universallist.g, ? super Integer, Unit> f18872g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private Function2<? super com.giphy.sdk.ui.universallist.g, ? super Integer, Unit> f18873h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private Function1<? super com.giphy.sdk.ui.universallist.g, Unit> f18874i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final Context f18875j;

    /* compiled from: SmartGridAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b=\u0010>R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0014\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u000b\u0010\u000e\"\u0004\b\u0013\u0010\u0010R$\u0010\u001b\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\"\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010&\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u001d\u001a\u0004\b$\u0010\u001f\"\u0004\b%\u0010!R\"\u0010-\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b#\u0010*\"\u0004\b+\u0010,R$\u00103\u001a\u0004\u0018\u00010.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010/\u001a\u0004\b\u0012\u00100\"\u0004\b1\u00102R\"\u00109\u001a\u0002048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u00105\u001a\u0004\b(\u00106\"\u0004\b7\u00108R\u0013\u0010<\u001a\u0004\u0018\u00010:8F¢\u0006\u0006\u001a\u0004\b\u0003\u0010;¨\u0006?"}, d2 = {"Lcom/giphy/sdk/ui/universallist/e$a;", "", "Lcom/giphy/sdk/ui/n;", "a", "Lcom/giphy/sdk/ui/n;", "d", "()Lcom/giphy/sdk/ui/n;", "m", "(Lcom/giphy/sdk/ui/n;)V", "gifLoadingDrawableProvider", "Lcom/giphy/sdk/core/models/enums/RenditionType;", "b", "Lcom/giphy/sdk/core/models/enums/RenditionType;", "h", "()Lcom/giphy/sdk/core/models/enums/RenditionType;", "q", "(Lcom/giphy/sdk/core/models/enums/RenditionType;)V", "renditionType", "c", "k", "clipsPreviewRenditionType", "Lcom/giphy/sdk/ui/GPHSettings;", "Lcom/giphy/sdk/ui/GPHSettings;", "e", "()Lcom/giphy/sdk/ui/GPHSettings;", "n", "(Lcom/giphy/sdk/ui/GPHSettings;)V", "gphSettings", "", "Z", "j", "()Z", "s", "(Z)V", "useFixedSizeCells", "f", ContextChain.TAG_INFRA, "r", "showCheckeredBackground", "Lcom/giphy/sdk/ui/drawables/ImageFormat;", "g", "Lcom/giphy/sdk/ui/drawables/ImageFormat;", "()Lcom/giphy/sdk/ui/drawables/ImageFormat;", "o", "(Lcom/giphy/sdk/ui/drawables/ImageFormat;)V", n.f13104r, "Lcom/giphy/sdk/ui/GPHContentType;", "Lcom/giphy/sdk/ui/GPHContentType;", "()Lcom/giphy/sdk/ui/GPHContentType;", "l", "(Lcom/giphy/sdk/ui/GPHContentType;)V", "contentType", "", "I", "()I", "p", "(I)V", "itemCount", "", "()Ljava/lang/Float;", "cellSizeRatio", "<init>", "(Lcom/giphy/sdk/ui/universallist/e;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public final class a {
        @m8.h

        /* renamed from: a  reason: collision with root package name */
        private com.giphy.sdk.ui.n f18876a;
        @m8.h

        /* renamed from: b  reason: collision with root package name */
        private RenditionType f18877b;
        @m8.h

        /* renamed from: c  reason: collision with root package name */
        private RenditionType f18878c;
        @m8.h

        /* renamed from: d  reason: collision with root package name */
        private GPHSettings f18879d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f18880e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f18881f = true;
        @m8.g

        /* renamed from: g  reason: collision with root package name */
        private ImageFormat f18882g = ImageFormat.WEBP;
        @m8.h

        /* renamed from: h  reason: collision with root package name */
        private GPHContentType f18883h;

        /* renamed from: i  reason: collision with root package name */
        private int f18884i;

        public a() {
        }

        @m8.h
        public final Float a() {
            RecyclerView.LayoutManager layoutManager;
            if (this.f18880e) {
                RecyclerView recyclerView = e.this.f18868c;
                if (recyclerView != null && (layoutManager = recyclerView.getLayoutManager()) != null && layoutManager.canScrollHorizontally()) {
                    return Float.valueOf(1.3f);
                }
                return Float.valueOf(1.0f);
            }
            return null;
        }

        @m8.h
        public final RenditionType b() {
            return this.f18878c;
        }

        @m8.h
        public final GPHContentType c() {
            return this.f18883h;
        }

        @m8.h
        public final com.giphy.sdk.ui.n d() {
            return this.f18876a;
        }

        @m8.h
        public final GPHSettings e() {
            return this.f18879d;
        }

        @m8.g
        public final ImageFormat f() {
            return this.f18882g;
        }

        public final int g() {
            return this.f18884i;
        }

        @m8.h
        public final RenditionType h() {
            return this.f18877b;
        }

        public final boolean i() {
            return this.f18881f;
        }

        public final boolean j() {
            return this.f18880e;
        }

        public final void k(@m8.h RenditionType renditionType) {
            this.f18878c = renditionType;
        }

        public final void l(@m8.h GPHContentType gPHContentType) {
            this.f18883h = gPHContentType;
        }

        public final void m(@m8.h com.giphy.sdk.ui.n nVar) {
            this.f18876a = nVar;
        }

        public final void n(@m8.h GPHSettings gPHSettings) {
            this.f18879d = gPHSettings;
        }

        public final void o(@m8.g ImageFormat imageFormat) {
            Intrinsics.checkNotNullParameter(imageFormat, "<set-?>");
            this.f18882g = imageFormat;
        }

        public final void p(int i4) {
            this.f18884i = i4;
        }

        public final void q(@m8.h RenditionType renditionType) {
            this.f18877b = renditionType;
        }

        public final void r(boolean z9) {
            this.f18881f = z9;
        }

        public final void s(boolean z9) {
            this.f18880e = z9;
        }
    }

    /* compiled from: SmartGridAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/giphy/sdk/ui/universallist/g;", "<anonymous parameter 0>", "", "<anonymous parameter 1>", "", "a", "(Lcom/giphy/sdk/ui/universallist/g;I)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class b extends Lambda implements Function2<com.giphy.sdk.ui.universallist.g, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f18886a = new b();

        b() {
            super(2);
        }

        public final void a(@m8.g com.giphy.sdk.ui.universallist.g gVar, int i4) {
            Intrinsics.checkNotNullParameter(gVar, "<anonymous parameter 0>");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(com.giphy.sdk.ui.universallist.g gVar, Integer num) {
            a(gVar, num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SmartGridAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/giphy/sdk/ui/universallist/g;", "<anonymous parameter 0>", "", "<anonymous parameter 1>", "", "a", "(Lcom/giphy/sdk/ui/universallist/g;I)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class c extends Lambda implements Function2<com.giphy.sdk.ui.universallist.g, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f18887a = new c();

        c() {
            super(2);
        }

        public final void a(@m8.g com.giphy.sdk.ui.universallist.g gVar, int i4) {
            Intrinsics.checkNotNullParameter(gVar, "<anonymous parameter 0>");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(com.giphy.sdk.ui.universallist.g gVar, Integer num) {
            a(gVar, num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SmartGridAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class d extends Lambda implements Function1<Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f18888a = new d();

        d() {
            super(1);
        }

        public final void a(int i4) {
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SmartGridAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/s0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 1})
    @DebugMetadata(c = "com.giphy.sdk.ui.universallist.SmartGridAdapter$onBindViewHolder$1", f = "SmartGridAdapter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.giphy.sdk.ui.universallist.e$e  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0144e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f18889a;

        C0144e(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> completion) {
            Intrinsics.checkNotNullParameter(completion, "completion");
            return new C0144e(completion);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
            return ((C0144e) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f18889a == 0) {
                ResultKt.throwOnFailure(obj);
                e.this.n().invoke();
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SmartGridAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005¨\u0006\u0006"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick", "com/giphy/sdk/ui/universallist/SmartGridAdapter$onCreateViewHolder$3$1"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class f implements View.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.giphy.sdk.ui.universallist.j f18892b;

        f(com.giphy.sdk.ui.universallist.j jVar) {
            this.f18892b = jVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int adapterPosition = this.f18892b.getAdapterPosition();
            if (adapterPosition > -1) {
                Function1<com.giphy.sdk.ui.universallist.g, Unit> o9 = e.this.o();
                com.giphy.sdk.ui.universallist.g d4 = e.d(e.this, adapterPosition);
                Intrinsics.checkNotNullExpressionValue(d4, "getItem(position)");
                o9.invoke(d4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SmartGridAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class g implements View.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.giphy.sdk.ui.universallist.j f18894b;

        g(com.giphy.sdk.ui.universallist.j jVar) {
            this.f18894b = jVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int adapterPosition = this.f18894b.getAdapterPosition();
            if (adapterPosition > -1) {
                Function2<com.giphy.sdk.ui.universallist.g, Integer, Unit> j4 = e.this.j();
                com.giphy.sdk.ui.universallist.g d4 = e.d(e.this, adapterPosition);
                Intrinsics.checkNotNullExpressionValue(d4, "getItem(position)");
                j4.invoke(d4, Integer.valueOf(adapterPosition));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SmartGridAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onLongClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class h implements View.OnLongClickListener {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.giphy.sdk.ui.universallist.j f18896b;

        h(com.giphy.sdk.ui.universallist.j jVar) {
            this.f18896b = jVar;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            int adapterPosition = this.f18896b.getAdapterPosition();
            if (adapterPosition > -1) {
                Function2<com.giphy.sdk.ui.universallist.g, Integer, Unit> i4 = e.this.i();
                com.giphy.sdk.ui.universallist.g d4 = e.d(e.this, adapterPosition);
                Intrinsics.checkNotNullExpressionValue(d4, "getItem(position)");
                i4.invoke(d4, Integer.valueOf(adapterPosition));
                return true;
            }
            return true;
        }
    }

    /* compiled from: SmartGridAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class i extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final i f18897a = new i();

        i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
        }
    }

    /* compiled from: SmartGridAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/giphy/sdk/ui/universallist/g;", "<anonymous parameter 0>", "", "a", "(Lcom/giphy/sdk/ui/universallist/g;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class j extends Lambda implements Function1<com.giphy.sdk.ui.universallist.g, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final j f18898a = new j();

        j() {
            super(1);
        }

        public final void a(@m8.g com.giphy.sdk.ui.universallist.g gVar) {
            Intrinsics.checkNotNullParameter(gVar, "<anonymous parameter 0>");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(com.giphy.sdk.ui.universallist.g gVar) {
            a(gVar);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(@m8.g Context context, @m8.g DiffUtil.ItemCallback<com.giphy.sdk.ui.universallist.g> diff) {
        super(diff);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(diff, "diff");
        this.f18875j = context;
        this.f18866a = new a();
        this.f18867b = SmartItemType.values();
        this.f18869d = d.f18888a;
        this.f18870e = i.f18897a;
        this.f18871f = MediaType.gif;
        this.f18872g = c.f18887a;
        this.f18873h = b.f18886a;
        this.f18874i = j.f18898a;
    }

    public static final /* synthetic */ com.giphy.sdk.ui.universallist.g d(e eVar, int i4) {
        return eVar.getItem(i4);
    }

    @Override // com.giphy.sdk.tracking.c
    public boolean a(int i4, @m8.g Function0<Unit> onLoad) {
        Intrinsics.checkNotNullParameter(onLoad, "onLoad");
        RecyclerView recyclerView = this.f18868c;
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = recyclerView != null ? recyclerView.findViewHolderForAdapterPosition(i4) : null;
        com.giphy.sdk.ui.universallist.j jVar = findViewHolderForAdapterPosition instanceof com.giphy.sdk.ui.universallist.j ? findViewHolderForAdapterPosition : null;
        if (jVar != null) {
            return jVar.c(onLoad);
        }
        return false;
    }

    @Override // com.giphy.sdk.tracking.c
    @m8.h
    public Media c(int i4) {
        return getItem(i4).b();
    }

    @m8.g
    public final a g() {
        return this.f18866a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i4) {
        return getItem(i4).d().ordinal();
    }

    @m8.g
    public final Context h() {
        return this.f18875j;
    }

    @m8.g
    public final Function2<com.giphy.sdk.ui.universallist.g, Integer, Unit> i() {
        return this.f18873h;
    }

    @m8.g
    public final Function2<com.giphy.sdk.ui.universallist.g, Integer, Unit> j() {
        return this.f18872g;
    }

    @m8.g
    public final Function1<Integer, Unit> k() {
        return this.f18869d;
    }

    @m8.g
    public final MediaType l() {
        return this.f18871f;
    }

    public final int m(int i4) {
        return getItem(i4).c();
    }

    @m8.g
    public final Function0<Unit> n() {
        return this.f18870e;
    }

    @m8.g
    public final Function1<com.giphy.sdk.ui.universallist.g, Unit> o() {
        return this.f18874i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@m8.g RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.f18868c = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public void onBindViewHolder(@m8.g com.giphy.sdk.ui.universallist.j holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (i4 > getItemCount() - 12) {
            this.f18869d.invoke(Integer.valueOf(i4));
        }
        this.f18866a.p(getItemCount());
        holder.b(getItem(i4).a());
        kotlinx.coroutines.j.e(a2.f84781a, i1.e(), null, new C0144e(null), 2, null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: q */
    public com.giphy.sdk.ui.universallist.j onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        SmartItemType[] smartItemTypeArr;
        Intrinsics.checkNotNullParameter(parent, "parent");
        for (SmartItemType smartItemType : this.f18867b) {
            if (smartItemType.ordinal() == i4) {
                com.giphy.sdk.ui.universallist.j invoke = smartItemType.getCreateViewHolder().invoke(parent, this.f18866a);
                if (i4 != SmartItemType.UserProfile.ordinal()) {
                    invoke.itemView.setOnClickListener(new g(invoke));
                    invoke.itemView.setOnLongClickListener(new h(invoke));
                } else {
                    p a10 = p.a(invoke.itemView);
                    a10.f69028i.setOnClickListener(new f(invoke));
                    Intrinsics.checkNotNullExpressionValue(a10, "GphUserProfileItemBindin…  }\n                    }");
                }
                return invoke;
            }
        }
        throw new IllegalArgumentException("onCreateViewHolder: Invalid item type");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public void onViewRecycled(@m8.g com.giphy.sdk.ui.universallist.j holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.d();
        super.onViewRecycled(holder);
    }

    public final void s(@m8.g Function2<? super com.giphy.sdk.ui.universallist.g, ? super Integer, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.f18873h = function2;
    }

    public final void t(@m8.g Function2<? super com.giphy.sdk.ui.universallist.g, ? super Integer, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.f18872g = function2;
    }

    public final void u(@m8.g Function1<? super Integer, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.f18869d = function1;
    }

    public final void v(@m8.g MediaType mediaType) {
        Intrinsics.checkNotNullParameter(mediaType, "<set-?>");
        this.f18871f = mediaType;
    }

    public final void w(@m8.g Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.f18870e = function0;
    }

    public final void x(@m8.g Function1<? super com.giphy.sdk.ui.universallist.g, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.f18874i = function1;
    }
}
