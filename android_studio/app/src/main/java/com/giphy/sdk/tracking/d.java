package com.giphy.sdk.tracking;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.analytics.models.Attribute;
import com.giphy.sdk.analytics.models.enums.ActionType;
import com.giphy.sdk.analytics.models.enums.EventType;
import com.giphy.sdk.core.models.Media;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: GifTrackingManager.kt */
@Metadata(bv = {}, d1 = {"\u0000}\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\b\n*\u0001F\b\u0010\u0018\u0000 \r2\u00020\u0001:\u0001\"B\u0011\u0012\b\b\u0002\u0010M\u001a\u00020\f¢\u0006\u0004\bN\u0010LJ\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u000e\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nJ\u0016\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0012J\u0006\u0010\u0015\u001a\u00020\u0012J\u0006\u0010\u0016\u001a\u00020\u0012J\u000e\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u001b\u001a\u00020\u0012J\u0018\u0010 \u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\u0006\u0010!\u001a\u00020\u0012R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010)\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010&R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010*R\u001a\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00170+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010,R\u0016\u00100\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010/R\u0016\u00102\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u00101R\"\u00109\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\"\u0010?\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R$\u0010B\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u0010:\u001a\u0004\b@\u0010<\"\u0004\bA\u0010>R$\u0010E\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010:\u001a\u0004\bC\u0010<\"\u0004\bD\u0010>R\u0014\u0010H\u001a\u00020F8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u0010GR\"\u0010M\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u00101\u001a\u0004\bI\u0010J\"\u0004\bK\u0010L¨\u0006O"}, d2 = {"Lcom/giphy/sdk/tracking/d;", "", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "layoutManager", "", "k", "Landroid/view/View;", "view", "", ContextChain.TAG_INFRA, "", "position", "", "p", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Lcom/giphy/sdk/tracking/c;", "gifTrackingCallback", "", "e", "f", "g", "h", "Lcom/giphy/sdk/tracking/e;", "gifVisibilityListener", "d", "q", y.b.f83920h, "Lcom/giphy/sdk/core/models/Media;", "media", "Lcom/giphy/sdk/analytics/models/enums/ActionType;", "actionType", y.b.f83919g, "r", "a", "Landroidx/recyclerview/widget/RecyclerView;", "Landroid/graphics/Rect;", "b", "Landroid/graphics/Rect;", "globalRect", "c", "drawingRect", "Lcom/giphy/sdk/tracking/c;", "", "Ljava/util/List;", "gifVisibilityListeners", "Lcom/giphy/sdk/tracking/g;", "Lcom/giphy/sdk/tracking/g;", "pingbacksDeduplicator", "Z", "trackSessions", "Lcom/giphy/sdk/analytics/batching/b;", "Lcom/giphy/sdk/analytics/batching/b;", "l", "()Lcom/giphy/sdk/analytics/batching/b;", "t", "(Lcom/giphy/sdk/analytics/batching/b;)V", "pingbackCollector", "Ljava/lang/String;", "o", "()Ljava/lang/String;", "w", "(Ljava/lang/String;)V", "userId", "j", "s", "layoutType", "m", "u", "placement", "com/giphy/sdk/tracking/d$b", "Lcom/giphy/sdk/tracking/d$b;", "getRecyclerScrollListener", "n", "()Z", "v", "(Z)V", "trackPingbacks", "<init>", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView f16995a;

    /* renamed from: b  reason: collision with root package name */
    private final Rect f16996b;

    /* renamed from: c  reason: collision with root package name */
    private final Rect f16997c;

    /* renamed from: d  reason: collision with root package name */
    private com.giphy.sdk.tracking.c f16998d;

    /* renamed from: e  reason: collision with root package name */
    private final List<e> f16999e;

    /* renamed from: f  reason: collision with root package name */
    private g f17000f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f17001g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private com.giphy.sdk.analytics.batching.b f17002h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private String f17003i;
    @h

    /* renamed from: j  reason: collision with root package name */
    private String f17004j;
    @h

    /* renamed from: k  reason: collision with root package name */
    private String f17005k;

    /* renamed from: l  reason: collision with root package name */
    private final b f17006l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f17007m;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    public static final a f16994p = new a(null);

    /* renamed from: n  reason: collision with root package name */
    private static final String f16992n = d.class.getSimpleName();
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private static String f16993o = "n/a";

    /* compiled from: GifTrackingManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rR\u001f\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u0005\u001a\u0004\b\t\u0010\u0007\"\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/giphy/sdk/tracking/d$a;", "", "", "kotlin.jvm.PlatformType", "TAG", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "versionString", "b", "c", "(Ljava/lang/String;)V", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public final String a() {
            return d.f16992n;
        }

        @m8.g
        public final String b() {
            return d.f16993o;
        }

        public final void c(@m8.g String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            d.f16993o = str;
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: GifTrackingManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\t"}, d2 = {"com/giphy/sdk/tracking/d$b", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "dx", "dy", "", "onScrolled", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b extends RecyclerView.OnScrollListener {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@m8.g RecyclerView recyclerView, int i4, int i10) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i4, i10);
            d.this.y();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GifTrackingManager.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final /* synthetic */ class c extends FunctionReferenceImpl implements Function0<Unit> {
        c(d dVar) {
            super(0, dVar, d.class, "updateTracking", "updateTracking()V", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ((d) this.receiver).y();
        }
    }

    public d() {
        this(false, 1, null);
    }

    public d(boolean z9) {
        this.f17007m = z9;
        this.f16996b = new Rect();
        this.f16997c = new Rect();
        this.f16999e = new ArrayList();
        this.f17000f = new g();
        this.f17001g = true;
        this.f17002h = e2.a.f62216j.i();
        this.f17003i = "";
        this.f17006l = new b();
    }

    private final float i(View view) {
        if (view.getGlobalVisibleRect(this.f16996b)) {
            view.getHitRect(this.f16997c);
            int width = this.f16996b.width() * this.f16996b.height();
            int width2 = this.f16997c.width() * this.f16997c.height();
            float f10 = width / width2;
            if (width2 <= 0) {
                return 0.0f;
            }
            return Math.min(f10, 1.0f);
        }
        return 0.0f;
    }

    private final String k(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof LinearLayoutManager) {
            return Attribute.Companion.getLAYOUT_TYPE_CAROUSEL();
        }
        if ((layoutManager instanceof GridLayoutManager) || (layoutManager instanceof StaggeredGridLayoutManager)) {
            return Attribute.Companion.getLAYOUT_TYPE_GRID();
        }
        return null;
    }

    public final void d(@m8.g e gifVisibilityListener) {
        Intrinsics.checkNotNullParameter(gifVisibilityListener, "gifVisibilityListener");
        this.f16999e.add(gifVisibilityListener);
    }

    public final void e(@m8.g RecyclerView recyclerView, @m8.g com.giphy.sdk.tracking.c gifTrackingCallback) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(gifTrackingCallback, "gifTrackingCallback");
        this.f16995a = recyclerView;
        this.f16998d = gifTrackingCallback;
        recyclerView.addOnScrollListener(this.f17006l);
        this.f17004j = k(recyclerView.getLayoutManager());
    }

    public final void f() {
        RecyclerView recyclerView = this.f16995a;
        if (recyclerView != null) {
            recyclerView.removeOnScrollListener(this.f17006l);
        }
        this.f16995a = null;
        this.f17004j = null;
    }

    public final void g() {
        this.f17001g = false;
    }

    public final void h() {
        this.f17001g = true;
    }

    @h
    public final String j() {
        return this.f17004j;
    }

    @m8.g
    public final com.giphy.sdk.analytics.batching.b l() {
        return this.f17002h;
    }

    @h
    public final String m() {
        return this.f17005k;
    }

    public final boolean n() {
        return this.f17007m;
    }

    @m8.g
    public final String o() {
        return this.f17003i;
    }

    public final boolean p(int i4) {
        com.giphy.sdk.tracking.c cVar = this.f16998d;
        return cVar != null && cVar.a(i4, new c(this));
    }

    public final void q(@m8.g e gifVisibilityListener) {
        Intrinsics.checkNotNullParameter(gifVisibilityListener, "gifVisibilityListener");
        this.f16999e.remove(gifVisibilityListener);
    }

    public final void r() {
        if (this.f17001g) {
            this.f17000f.a();
            for (e eVar : this.f16999e) {
                eVar.reset();
            }
        }
    }

    public final void s(@h String str) {
        this.f17004j = str;
    }

    public final void t(@m8.g com.giphy.sdk.analytics.batching.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<set-?>");
        this.f17002h = bVar;
    }

    public final void u(@h String str) {
        this.f17005k = str;
    }

    public final void v(boolean z9) {
        this.f17007m = z9;
    }

    public final void w(@m8.g String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f17003i = str;
    }

    public void x(@m8.g Media media, @m8.g ActionType actionType) {
        Intrinsics.checkNotNullParameter(media, "media");
        Intrinsics.checkNotNullParameter(actionType, "actionType");
        String analyticsResponsePayload = media.getAnalyticsResponsePayload();
        if (analyticsResponsePayload == null || analyticsResponsePayload.length() == 0) {
            return;
        }
        if (actionType == ActionType.SEEN) {
            g gVar = this.f17000f;
            String id = media.getId();
            String c10 = f.c(media);
            if (c10 == null) {
                c10 = "";
            }
            if (!gVar.b(id, c10)) {
                return;
            }
        }
        com.giphy.sdk.analytics.batching.b bVar = this.f17002h;
        String str = this.f17003i;
        String analyticsResponsePayload2 = media.getAnalyticsResponsePayload();
        String id2 = media.getId();
        EventType a10 = f.a(media);
        String tid = media.getTid();
        String str2 = this.f17004j;
        Integer b10 = f.b(media);
        bVar.k(str, analyticsResponsePayload2, null, a10, id2, tid, actionType, null, str2, b10 != null ? b10.intValue() : -1, this.f17005k);
    }

    public final void y() {
        if (this.f17001g) {
            Log.d(f16992n, "updateTracking");
            RecyclerView recyclerView = this.f16995a;
            if (recyclerView != null) {
                int childCount = recyclerView.getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View view = recyclerView.getChildAt(i4);
                    int childAdapterPosition = recyclerView.getChildAdapterPosition(recyclerView.getChildAt(i4));
                    if (childAdapterPosition != -1 && p(childAdapterPosition)) {
                        com.giphy.sdk.tracking.c cVar = this.f16998d;
                        Media c10 = cVar != null ? cVar.c(childAdapterPosition) : null;
                        if (c10 != null) {
                            Intrinsics.checkNotNullExpressionValue(view, "view");
                            float i10 = i(view);
                            if (this.f17007m && i10 == 1.0f) {
                                x(c10, ActionType.SEEN);
                            }
                            for (e eVar : this.f16999e) {
                                eVar.a(childAdapterPosition, c10, view, i10);
                            }
                        }
                    }
                }
            }
        }
    }

    public /* synthetic */ d(boolean z9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? true : z9);
    }
}
