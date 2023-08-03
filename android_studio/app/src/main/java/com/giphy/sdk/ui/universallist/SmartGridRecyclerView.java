package com.giphy.sdk.ui.universallist;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.core.models.enums.RenditionType;
import com.giphy.sdk.core.network.api.GPHApiClient;
import com.giphy.sdk.core.network.response.ListMediaResponse;
import com.giphy.sdk.ui.GPHContentType;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.pagination.GPHContent;
import com.giphy.sdk.ui.pagination.c;
import com.giphy.sdk.ui.themes.GridType;
import io.sentry.Session;
import io.sentry.protocol.Device;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import timber.log.Timber;

/* compiled from: SmartGridRecyclerView.kt */
@Metadata(bv = {}, d1 = {"\u0000Æ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0002\u0002\u0015\u0018\u00002\u00020\u0001B.\b\u0007\u0012\b\u0010\u009f\u0001\u001a\u00030\u009e\u0001\u0012\f\b\u0002\u0010¡\u0001\u001a\u0005\u0018\u00010 \u0001\u0012\t\b\u0002\u0010¢\u0001\u001a\u00020\t¢\u0006\u0006\b£\u0001\u0010¤\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\fH\u0002J\u0016\u0010\u0013\u001a\u00020\u00122\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\b\u0010\u0014\u001a\u00020\u0005H\u0002J\u000f\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\tH\u0002J\b\u0010\u001b\u001a\u00020\u0019H\u0002J'\u0010 \u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001c2\b\u0010\u0018\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u000e\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\"J\u0006\u0010%\u001a\u00020\u0012J\u0006\u0010&\u001a\u00020\u0005J\u0006\u0010'\u001a\u00020\u0005J\u0006\u0010(\u001a\u00020\u0005J\u0006\u0010)\u001a\u00020\u0012J\b\u0010*\u001a\u00020\u0005H\u0016R2\u00104\u001a\u0012\u0012\u0004\u0012\u00020,0+j\b\u0012\u0004\u0012\u00020,`-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R2\u00108\u001a\u0012\u0012\u0004\u0012\u00020,0+j\b\u0012\u0004\u0012\u00020,`-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u0010/\u001a\u0004\b6\u00101\"\u0004\b7\u00103R2\u0010<\u001a\u0012\u0012\u0004\u0012\u00020,0+j\b\u0012\u0004\u0012\u00020,`-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010/\u001a\u0004\b:\u00101\"\u0004\b;\u00103R\"\u0010D\u001a\u00020=8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u0018\u0010#\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\"\u0010N\u001a\u00020G8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR*\u0010V\u001a\u00020\t2\u0006\u0010O\u001a\u00020\t8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR*\u0010\u0018\u001a\u00020\t2\u0006\u0010O\u001a\u00020\t8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bW\u0010Q\u001a\u0004\bX\u0010S\"\u0004\bY\u0010UR*\u0010]\u001a\u00020\t2\u0006\u0010O\u001a\u00020\t8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bZ\u0010Q\u001a\u0004\b[\u0010S\"\u0004\b\\\u0010UR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR.\u0010i\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bc\u0010d\u001a\u0004\be\u0010f\"\u0004\bg\u0010hR\u008e\u0001\u0010u\u001a4\u0012\u0013\u0012\u00110,¢\u0006\f\bk\u0012\b\bl\u0012\u0004\b\b(m\u0012\u0013\u0012\u00110\t¢\u0006\f\bk\u0012\b\bl\u0012\u0004\b\b(n\u0012\u0004\u0012\u00020\u0005\u0018\u00010j28\u0010O\u001a4\u0012\u0013\u0012\u00110,¢\u0006\f\bk\u0012\b\bl\u0012\u0004\b\b(m\u0012\u0013\u0012\u00110\t¢\u0006\f\bk\u0012\b\bl\u0012\u0004\b\b(n\u0012\u0004\u0012\u00020\u0005\u0018\u00010j8F@FX\u0086\u000e¢\u0006\u0012\n\u0004\bo\u0010p\u001a\u0004\bq\u0010r\"\u0004\bs\u0010tR\u0016\u0010x\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR)\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020\f0y8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bz\u0010{\u001a\u0004\b|\u0010}\"\u0004\b~\u0010\u007fR-\u0010\u0085\u0001\u001a\t\u0012\u0005\u0012\u00030\u0081\u00010y8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0082\u0001\u0010{\u001a\u0005\b\u0083\u0001\u0010}\"\u0005\b\u0084\u0001\u0010\u007fR\u001f\u0010\u0088\u0001\u001a\t\u0012\u0002\b\u0003\u0018\u00010\u0086\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b'\u0010\u0087\u0001R\u001c\u0010\u008d\u0001\u001a\u00030\u0089\u00018\u0006¢\u0006\u000f\n\u0005\b\u0007\u0010\u008a\u0001\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001R\u0017\u0010\u008e\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010wR/\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u008f\u00012\t\u0010O\u001a\u0005\u0018\u00010\u008f\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001\"\u0006\b\u0092\u0001\u0010\u0093\u0001R/\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u008f\u00012\t\u0010O\u001a\u0005\u0018\u00010\u008f\u00018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u0095\u0001\u0010\u0091\u0001\"\u0006\b\u0096\u0001\u0010\u0093\u0001R\u0087\u0001\u0010\u009a\u0001\u001a2\u0012\u0013\u0012\u00110,¢\u0006\f\bk\u0012\b\bl\u0012\u0004\b\b(m\u0012\u0013\u0012\u00110\t¢\u0006\f\bk\u0012\b\bl\u0012\u0004\b\b(n\u0012\u0004\u0012\u00020\u00050j26\u0010O\u001a2\u0012\u0013\u0012\u00110,¢\u0006\f\bk\u0012\b\bl\u0012\u0004\b\b(m\u0012\u0013\u0012\u00110\t¢\u0006\f\bk\u0012\b\bl\u0012\u0004\b\b(n\u0012\u0004\u0012\u00020\u00050j8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0098\u0001\u0010r\"\u0005\b\u0099\u0001\u0010tR]\u0010\u009d\u0001\u001a\u001d\u0012\u0013\u0012\u00110,¢\u0006\f\bk\u0012\b\bl\u0012\u0004\b\b(m\u0012\u0004\u0012\u00020\u00050b2!\u0010O\u001a\u001d\u0012\u0013\u0012\u00110,¢\u0006\f\bk\u0012\b\bl\u0012\u0004\b\b(m\u0012\u0004\u0012\u00020\u00050b8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u009b\u0001\u0010f\"\u0005\b\u009c\u0001\u0010h¨\u0006¥\u0001"}, d2 = {"Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;", "Landroidx/recyclerview/widget/RecyclerView;", "com/giphy/sdk/ui/universallist/SmartGridRecyclerView$d", "getPostComparator", "()Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$d;", "", "D", "r", ExifInterface.LONGITUDE_EAST, "", "aroundPosition", y.b.f83920h, "Lcom/giphy/sdk/ui/pagination/c;", t.b.f83859d, y.b.f83919g, "", "Lcom/giphy/sdk/core/models/Media;", "list", "", "w", "F", "com/giphy/sdk/ui/universallist/SmartGridRecyclerView$e", "getSpanSizeLookup", "()Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$e;", "spanCount", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "s", "t", "Lcom/giphy/sdk/ui/themes/GridType;", "gridType", "Lcom/giphy/sdk/ui/GPHContentType;", "contentType", "B", "(Lcom/giphy/sdk/ui/themes/GridType;Ljava/lang/Integer;Lcom/giphy/sdk/ui/GPHContentType;)V", "Lcom/giphy/sdk/ui/pagination/GPHContent;", "content", "C", "v", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "q", "z", "u", "requestLayout", "Ljava/util/ArrayList;", "Lcom/giphy/sdk/ui/universallist/g;", "Lkotlin/collections/ArrayList;", "a", "Ljava/util/ArrayList;", "getHeaderItems", "()Ljava/util/ArrayList;", "setHeaderItems", "(Ljava/util/ArrayList;)V", "headerItems", "b", "getContentItems", "setContentItems", "contentItems", "c", "getFooterItems", "setFooterItems", "footerItems", "Lcom/giphy/sdk/core/network/api/GPHApiClient;", "d", "Lcom/giphy/sdk/core/network/api/GPHApiClient;", "getApiClient$giphy_ui_2_1_9_release", "()Lcom/giphy/sdk/core/network/api/GPHApiClient;", "setApiClient$giphy_ui_2_1_9_release", "(Lcom/giphy/sdk/core/network/api/GPHApiClient;)V", "apiClient", "e", "Lcom/giphy/sdk/ui/pagination/GPHContent;", "Lcom/giphy/sdk/tracking/d;", "f", "Lcom/giphy/sdk/tracking/d;", "getGifTrackingManager$giphy_ui_2_1_9_release", "()Lcom/giphy/sdk/tracking/d;", "setGifTrackingManager$giphy_ui_2_1_9_release", "(Lcom/giphy/sdk/tracking/d;)V", "gifTrackingManager", "value", "g", "I", "getOrientation", "()I", "setOrientation", "(I)V", Device.b.f83600k, "h", "getSpanCount", "setSpanCount", ContextChain.TAG_INFRA, "getCellPadding", "setCellPadding", "cellPadding", "j", "Lcom/giphy/sdk/ui/themes/GridType;", "k", "Lcom/giphy/sdk/ui/GPHContentType;", "Lkotlin/Function1;", "l", "Lkotlin/jvm/functions/Function1;", "getOnResultsUpdateListener", "()Lkotlin/jvm/functions/Function1;", "setOnResultsUpdateListener", "(Lkotlin/jvm/functions/Function1;)V", "onResultsUpdateListener", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "item", "position", "m", "Lkotlin/jvm/functions/Function2;", "getOnItemSelectedListener", "()Lkotlin/jvm/functions/Function2;", "setOnItemSelectedListener", "(Lkotlin/jvm/functions/Function2;)V", "onItemSelectedListener", "n", "Z", "contentLoading", "Landroidx/lifecycle/MutableLiveData;", "o", "Landroidx/lifecycle/MutableLiveData;", "getNetworkState", "()Landroidx/lifecycle/MutableLiveData;", "setNetworkState", "(Landroidx/lifecycle/MutableLiveData;)V", "networkState", "", "p", "getResponseId", "setResponseId", "responseId", "Ljava/util/concurrent/Future;", "Ljava/util/concurrent/Future;", "runningQuery", "Lcom/giphy/sdk/ui/universallist/e;", "Lcom/giphy/sdk/ui/universallist/e;", "getGifsAdapter", "()Lcom/giphy/sdk/ui/universallist/e;", "gifsAdapter", "mRequestedLayout", "Lcom/giphy/sdk/core/models/enums/RenditionType;", "getRenditionType", "()Lcom/giphy/sdk/core/models/enums/RenditionType;", "setRenditionType", "(Lcom/giphy/sdk/core/models/enums/RenditionType;)V", "renditionType", "getClipsPreviewRenditionType", "setClipsPreviewRenditionType", "clipsPreviewRenditionType", "getOnItemLongPressListener", "setOnItemLongPressListener", "onItemLongPressListener", "getOnUserProfileInfoPressListener", "setOnUserProfileInfoPressListener", "onUserProfileInfoPressListener", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", Session.b.f81849j, "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class SmartGridRecyclerView extends RecyclerView {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<com.giphy.sdk.ui.universallist.g> f18817a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<com.giphy.sdk.ui.universallist.g> f18818b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<com.giphy.sdk.ui.universallist.g> f18819c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private GPHApiClient f18820d;

    /* renamed from: e  reason: collision with root package name */
    private GPHContent f18821e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private com.giphy.sdk.tracking.d f18822f;

    /* renamed from: g  reason: collision with root package name */
    private int f18823g;

    /* renamed from: h  reason: collision with root package name */
    private int f18824h;

    /* renamed from: i  reason: collision with root package name */
    private int f18825i;

    /* renamed from: j  reason: collision with root package name */
    private GridType f18826j;

    /* renamed from: k  reason: collision with root package name */
    private GPHContentType f18827k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private Function1<? super Integer, Unit> f18828l;
    @m8.h

    /* renamed from: m  reason: collision with root package name */
    private Function2<? super com.giphy.sdk.ui.universallist.g, ? super Integer, Unit> f18829m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f18830n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private MutableLiveData<com.giphy.sdk.ui.pagination.c> f18831o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private MutableLiveData<String> f18832p;

    /* renamed from: q  reason: collision with root package name */
    private Future<?> f18833q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private final com.giphy.sdk.ui.universallist.e f18834r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f18835s;

    /* compiled from: SmartGridRecyclerView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, d2 = {"<anonymous>", "", "invoke", "com/giphy/sdk/ui/universallist/SmartGridRecyclerView$gifsAdapter$1$2"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class a extends Lambda implements Function0<Unit> {
        a() {
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
            SmartGridRecyclerView.this.getGifTrackingManager$giphy_ui_2_1_9_release().y();
        }
    }

    /* compiled from: SmartGridRecyclerView.kt */
    @Metadata(bv = {}, d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¨\u0006\f"}, d2 = {"com/giphy/sdk/ui/universallist/SmartGridRecyclerView$b", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "Landroid/graphics/Rect;", "outRect", "Landroid/view/View;", "view", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "Landroidx/recyclerview/widget/RecyclerView$State;", t.b.f83859d, "", "getItemOffsets", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b extends RecyclerView.ItemDecoration {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f18838b;

        b(int i4) {
            this.f18838b = i4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(@m8.g Rect outRect, @m8.g View view, @m8.g RecyclerView parent, @m8.g RecyclerView.State state) {
            Intrinsics.checkNotNullParameter(outRect, "outRect");
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(state, "state");
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager.LayoutParams");
            int spanIndex = ((GridLayoutManager.LayoutParams) layoutParams).getSpanIndex();
            int cellPadding = (spanIndex != 0 || this.f18838b >= 3) ? SmartGridRecyclerView.this.getCellPadding() / 2 : 0;
            int i4 = this.f18838b;
            outRect.set(cellPadding, 0, (spanIndex != i4 + (-1) || i4 >= 3) ? SmartGridRecyclerView.this.getCellPadding() / 2 : 0, SmartGridRecyclerView.this.getCellPadding());
        }
    }

    /* compiled from: SmartGridRecyclerView.kt */
    @Metadata(bv = {}, d1 = {"\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016R\u0017\u0010\u0010\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\r\u0010\u000f¨\u0006\u0011"}, d2 = {"com/giphy/sdk/ui/universallist/SmartGridRecyclerView$c", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "Landroid/graphics/Rect;", "outRect", "Landroid/view/View;", "view", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "Landroidx/recyclerview/widget/RecyclerView$State;", t.b.f83859d, "", "getItemOffsets", "", "a", "I", "()I", "borderSizePx", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class c extends RecyclerView.ItemDecoration {

        /* renamed from: a  reason: collision with root package name */
        private final int f18839a;

        c() {
            this.f18839a = SmartGridRecyclerView.this.getCellPadding();
        }

        public final int a() {
            return this.f18839a;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(@m8.g Rect outRect, @m8.g View view, @m8.g RecyclerView parent, @m8.g RecyclerView.State state) {
            Intrinsics.checkNotNullParameter(outRect, "outRect");
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(state, "state");
            RecyclerView.Adapter adapter = parent.getAdapter();
            boolean z9 = adapter != null && adapter.getItemViewType(parent.getChildAdapterPosition(view)) == SmartItemType.UserProfile.ordinal();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams");
            int spanIndex = ((StaggeredGridLayoutManager.LayoutParams) layoutParams).getSpanIndex();
            outRect.set(((spanIndex != 0 || SmartGridRecyclerView.this.getSpanCount() >= 3) && !z9) ? this.f18839a / 2 : 0, 0, ((spanIndex != SmartGridRecyclerView.this.getSpanCount() - 1 || SmartGridRecyclerView.this.getSpanCount() >= 3) && !z9) ? this.f18839a / 2 : 0, this.f18839a);
        }
    }

    /* compiled from: SmartGridRecyclerView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0017¨\u0006\b"}, d2 = {"com/giphy/sdk/ui/universallist/SmartGridRecyclerView$d", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/giphy/sdk/ui/universallist/g;", "oldItem", "newItem", "", "b", "a", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class d extends DiffUtil.ItemCallback<com.giphy.sdk.ui.universallist.g> {
        d() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        @SuppressLint({"DiffUtilEquals"})
        /* renamed from: a */
        public boolean areContentsTheSame(@m8.g com.giphy.sdk.ui.universallist.g oldItem, @m8.g com.giphy.sdk.ui.universallist.g newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return oldItem.d() == newItem.d() && Intrinsics.areEqual(oldItem.a(), newItem.a());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: b */
        public boolean areItemsTheSame(@m8.g com.giphy.sdk.ui.universallist.g oldItem, @m8.g com.giphy.sdk.ui.universallist.g newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return oldItem.d() == newItem.d() && Intrinsics.areEqual(oldItem.a(), newItem.a());
        }
    }

    /* compiled from: SmartGridRecyclerView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"com/giphy/sdk/ui/universallist/SmartGridRecyclerView$e", "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;", "", "position", "getSpanSize", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class e extends GridLayoutManager.SpanSizeLookup {
        e() {
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i4) {
            return SmartGridRecyclerView.this.getGifsAdapter().m(i4);
        }
    }

    /* compiled from: SmartGridRecyclerView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0015\u0010\u0004\u001a\u00110\u0000¢\u0006\f\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0003¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"", "Lkotlin/ParameterName;", "name", "aroundPosition", "p1", "", "a", "(I)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final /* synthetic */ class f extends FunctionReferenceImpl implements Function1<Integer, Unit> {
        f(SmartGridRecyclerView smartGridRecyclerView) {
            super(1, smartGridRecyclerView, SmartGridRecyclerView.class, "loadNextPage", "loadNextPage(I)V", 0);
        }

        public final void a(int i4) {
            ((SmartGridRecyclerView) this.receiver).y(i4);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SmartGridRecyclerView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\b"}, d2 = {"com/giphy/sdk/ui/universallist/SmartGridRecyclerView$g", "Lcom/giphy/sdk/core/network/api/a;", "Lcom/giphy/sdk/core/network/response/ListMediaResponse;", "result", "", "e", "", "b", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class g implements com.giphy.sdk.core.network.api.a<ListMediaResponse> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.giphy.sdk.ui.pagination.c f18843b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SmartGridRecyclerView.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/giphy/sdk/ui/universallist/g;", "it", "", "a", "(Lcom/giphy/sdk/ui/universallist/g;)Z"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes2.dex */
        public static final class a extends Lambda implements Function1<com.giphy.sdk.ui.universallist.g, Boolean> {

            /* renamed from: a  reason: collision with root package name */
            public static final a f18844a = new a();

            a() {
                super(1);
            }

            public final boolean a(@m8.g com.giphy.sdk.ui.universallist.g it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it.d().ordinal() == SmartItemType.UserProfile.ordinal();
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(com.giphy.sdk.ui.universallist.g gVar) {
                return Boolean.valueOf(a(gVar));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SmartGridRecyclerView.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes2.dex */
        public static final /* synthetic */ class b extends FunctionReferenceImpl implements Function0<Unit> {
            b(SmartGridRecyclerView smartGridRecyclerView) {
                super(0, smartGridRecyclerView, SmartGridRecyclerView.class, "refresh", "refresh()V", 0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                ((SmartGridRecyclerView) this.receiver).z();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SmartGridRecyclerView.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes2.dex */
        public static final /* synthetic */ class c extends FunctionReferenceImpl implements Function0<Unit> {
            c(SmartGridRecyclerView smartGridRecyclerView) {
                super(0, smartGridRecyclerView, SmartGridRecyclerView.class, "refresh", "refresh()V", 0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                ((SmartGridRecyclerView) this.receiver).z();
            }
        }

        g(com.giphy.sdk.ui.pagination.c cVar) {
            this.f18843b = cVar;
        }

        /* JADX WARN: Code restructure failed: missing block: B:117:0x0229, code lost:
            if (r2 != false) goto L116;
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:0x01af, code lost:
            r4 = kotlin.text.StringsKt___StringsKt.firstOrNull(r2);
         */
        /* JADX WARN: Removed duplicated region for block: B:114:0x021f  */
        @Override // com.giphy.sdk.core.network.api.a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void a(@m8.h com.giphy.sdk.core.network.response.ListMediaResponse r14, @m8.h java.lang.Throwable r15) {
            /*
                Method dump skipped, instructions count: 924
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.giphy.sdk.ui.universallist.SmartGridRecyclerView.g.a(com.giphy.sdk.core.network.response.ListMediaResponse, java.lang.Throwable):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SmartGridRecyclerView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (SmartGridRecyclerView.this.f18830n) {
                return;
            }
            GPHContent gPHContent = SmartGridRecyclerView.this.f18821e;
            if (gPHContent == null || gPHContent.j()) {
                c.a aVar = com.giphy.sdk.ui.pagination.c.f18804h;
                if ((Intrinsics.areEqual(SmartGridRecyclerView.this.getNetworkState().getValue(), aVar.c()) || Intrinsics.areEqual(SmartGridRecyclerView.this.getNetworkState().getValue(), aVar.d())) && (!SmartGridRecyclerView.this.getContentItems().isEmpty())) {
                    SmartGridRecyclerView.this.x(aVar.e());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SmartGridRecyclerView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/giphy/sdk/ui/universallist/g;", "item", "", "position", "", "a", "(Lcom/giphy/sdk/ui/universallist/g;I)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class i extends Lambda implements Function2<com.giphy.sdk.ui.universallist.g, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function2 f18846a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(Function2 function2) {
            super(2);
            this.f18846a = function2;
        }

        public final void a(@m8.g com.giphy.sdk.ui.universallist.g item, int i4) {
            Intrinsics.checkNotNullParameter(item, "item");
            Function2 function2 = this.f18846a;
            if (function2 != null) {
                Unit unit = (Unit) function2.invoke(item, Integer.valueOf(i4));
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(com.giphy.sdk.ui.universallist.g gVar, Integer num) {
            a(gVar, num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SmartGridRecyclerView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class j extends Lambda implements Function1<Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final j f18847a = new j();

        j() {
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
    /* compiled from: SmartGridRecyclerView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Object firstOrNull;
            SmartGridRecyclerView.this.f18830n = false;
            int size = SmartGridRecyclerView.this.getContentItems().size();
            if (SmartGridRecyclerView.this.getContentItems().isEmpty()) {
                firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) SmartGridRecyclerView.this.getFooterItems());
                com.giphy.sdk.ui.universallist.g gVar = (com.giphy.sdk.ui.universallist.g) firstOrNull;
                if ((gVar != null ? gVar.d() : null) == SmartItemType.NetworkState) {
                    size = -1;
                }
            }
            SmartGridRecyclerView.this.getOnResultsUpdateListener().invoke(Integer.valueOf(size));
            SmartGridRecyclerView.this.getGifTrackingManager$giphy_ui_2_1_9_release().y();
        }
    }

    /* compiled from: SmartGridRecyclerView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SmartGridRecyclerView.this.f18835s = false;
            SmartGridRecyclerView smartGridRecyclerView = SmartGridRecyclerView.this;
            smartGridRecyclerView.layout(smartGridRecyclerView.getLeft(), SmartGridRecyclerView.this.getTop(), SmartGridRecyclerView.this.getRight(), SmartGridRecyclerView.this.getBottom());
            SmartGridRecyclerView smartGridRecyclerView2 = SmartGridRecyclerView.this;
            smartGridRecyclerView2.onLayout(false, smartGridRecyclerView2.getLeft(), SmartGridRecyclerView.this.getTop(), SmartGridRecyclerView.this.getRight(), SmartGridRecyclerView.this.getBottom());
        }
    }

    @JvmOverloads
    public SmartGridRecyclerView(@m8.g Context context) {
        this(context, null, 0, 6, null);
    }

    @JvmOverloads
    public SmartGridRecyclerView(@m8.g Context context, @m8.h AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ SmartGridRecyclerView(Context context, AttributeSet attributeSet, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i4);
    }

    private final void D() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (!(layoutManager instanceof LinearLayoutManager)) {
            layoutManager = null;
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        boolean z9 = true;
        boolean z10 = (linearLayoutManager == null || this.f18823g == linearLayoutManager.getOrientation()) ? false : true;
        RecyclerView.LayoutManager layoutManager2 = getLayoutManager();
        if (!(layoutManager2 instanceof GridLayoutManager)) {
            layoutManager2 = null;
        }
        GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager2;
        if (gridLayoutManager != null) {
            z10 = this.f18824h != gridLayoutManager.getSpanCount();
        }
        RecyclerView.LayoutManager layoutManager3 = getLayoutManager();
        WrapStaggeredGridLayoutManager wrapStaggeredGridLayoutManager = layoutManager3 instanceof WrapStaggeredGridLayoutManager ? layoutManager3 : null;
        if (wrapStaggeredGridLayoutManager != null) {
            if (this.f18823g == wrapStaggeredGridLayoutManager.getOrientation() && this.f18824h == wrapStaggeredGridLayoutManager.getSpanCount()) {
                z9 = false;
            }
            z10 = z9;
        }
        Timber.e("updateGridTypeIfNeeded requiresUpdate=" + z10, new Object[0]);
        if (z10) {
            r();
        }
    }

    private final void E() {
        while (getItemDecorationCount() > 0) {
            removeItemDecorationAt(0);
        }
        GPHContentType gPHContentType = this.f18827k;
        if (gPHContentType == null || com.giphy.sdk.ui.universallist.f.$EnumSwitchMapping$2[gPHContentType.ordinal()] != 1) {
            addItemDecoration(t());
        } else {
            addItemDecoration(s(this.f18824h));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F() {
        Timber.e("updateNetworkState", new Object[0]);
        this.f18819c.clear();
        this.f18819c.add(new com.giphy.sdk.ui.universallist.g(SmartItemType.NetworkState, this.f18831o.getValue(), this.f18824h));
    }

    private final d getPostComparator() {
        return new d();
    }

    private final e getSpanSizeLookup() {
        return new e();
    }

    private final void r() {
        Timber.e("configureRecyclerViewForGridType", new Object[0]);
        GPHContentType gPHContentType = this.f18827k;
        if (gPHContentType == null || com.giphy.sdk.ui.universallist.f.$EnumSwitchMapping$1[gPHContentType.ordinal()] != 1) {
            setLayoutManager(new WrapStaggeredGridLayoutManager(this.f18824h, this.f18823g));
        } else {
            GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), this.f18824h, this.f18823g, false);
            gridLayoutManager.setSpanSizeLookup(getSpanSizeLookup());
            setLayoutManager(gridLayoutManager);
        }
        E();
    }

    private final RecyclerView.ItemDecoration s(int i4) {
        return new b(i4);
    }

    private final RecyclerView.ItemDecoration t() {
        return new c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean w(List<Media> list) {
        Iterator<Media> it = list.iterator();
        int i4 = 0;
        while (true) {
            if (!it.hasNext()) {
                i4 = -1;
                break;
            } else if (!it.next().isDynamic()) {
                break;
            } else {
                i4++;
            }
        }
        return i4 == -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x(com.giphy.sdk.ui.pagination.c cVar) {
        GPHContent y9;
        Timber.e("loadGifs " + cVar.k(), new Object[0]);
        this.f18831o.setValue(cVar);
        F();
        Future<?> future = null;
        if (Intrinsics.areEqual(cVar, com.giphy.sdk.ui.pagination.c.f18804h.f())) {
            this.f18818b.clear();
            Future<?> future2 = this.f18833q;
            if (future2 != null) {
                future2.cancel(true);
            }
            this.f18833q = null;
        }
        Timber.e("loadGifs " + cVar + " offset=" + this.f18818b.size(), new Object[0]);
        this.f18830n = true;
        Future<?> future3 = this.f18833q;
        if (future3 != null) {
            future3.cancel(true);
        }
        GPHContent gPHContent = this.f18821e;
        if (gPHContent != null && (y9 = gPHContent.y(this.f18820d)) != null) {
            future = y9.q(this.f18818b.size(), new g(cVar));
        }
        this.f18833q = future;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y(int i4) {
        Timber.e("loadNextPage aroundPosition=" + i4, new Object[0]);
        post(new h());
    }

    public final void A() {
        Timber.e("refreshItems " + this.f18817a.size() + ' ' + this.f18818b.size() + ' ' + this.f18819c.size(), new Object[0]);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f18817a);
        arrayList.addAll(this.f18818b);
        arrayList.addAll(this.f18819c);
        this.f18834r.submitList(arrayList, new k());
    }

    public final void B(@m8.g GridType gridType, @m8.h Integer num, @m8.g GPHContentType contentType) {
        int i4;
        Intrinsics.checkNotNullParameter(gridType, "gridType");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        this.f18826j = gridType;
        this.f18827k = contentType;
        this.f18834r.g().l(contentType);
        int i10 = com.giphy.sdk.ui.universallist.f.$EnumSwitchMapping$0[gridType.ordinal()];
        int i11 = 1;
        if (i10 == 1) {
            Resources resources = getResources();
            Intrinsics.checkNotNullExpressionValue(resources, "resources");
            int i12 = 4;
            if (resources.getConfiguration().orientation != 2) {
                Resources resources2 = getResources();
                Intrinsics.checkNotNullExpressionValue(resources2, "resources");
                i12 = (resources2.getConfiguration().screenLayout & 15) == 4 ? 4 : 2;
            }
            if (num != null) {
                i12 = num.intValue();
            }
            i11 = i12;
            i4 = 1;
        } else if (i10 != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            i4 = 0;
        }
        if (contentType == GPHContentType.emoji) {
            i11 = num != null ? num.intValue() : 5;
        }
        setOrientation(i4);
        setSpanCount(i11);
    }

    public final void C(@m8.g GPHContent content) {
        Intrinsics.checkNotNullParameter(content, "content");
        q();
        this.f18822f.r();
        this.f18821e = content;
        this.f18834r.v(content.k());
        x(com.giphy.sdk.ui.pagination.c.f18804h.f());
    }

    @m8.g
    public final GPHApiClient getApiClient$giphy_ui_2_1_9_release() {
        return this.f18820d;
    }

    public final int getCellPadding() {
        return this.f18825i;
    }

    @m8.h
    public final RenditionType getClipsPreviewRenditionType() {
        return this.f18834r.g().b();
    }

    @m8.g
    public final ArrayList<com.giphy.sdk.ui.universallist.g> getContentItems() {
        return this.f18818b;
    }

    @m8.g
    public final ArrayList<com.giphy.sdk.ui.universallist.g> getFooterItems() {
        return this.f18819c;
    }

    @m8.g
    public final com.giphy.sdk.tracking.d getGifTrackingManager$giphy_ui_2_1_9_release() {
        return this.f18822f;
    }

    @m8.g
    public final com.giphy.sdk.ui.universallist.e getGifsAdapter() {
        return this.f18834r;
    }

    @m8.g
    public final ArrayList<com.giphy.sdk.ui.universallist.g> getHeaderItems() {
        return this.f18817a;
    }

    @m8.g
    public final MutableLiveData<com.giphy.sdk.ui.pagination.c> getNetworkState() {
        return this.f18831o;
    }

    @m8.g
    public final Function2<com.giphy.sdk.ui.universallist.g, Integer, Unit> getOnItemLongPressListener() {
        return this.f18834r.i();
    }

    @m8.h
    public final Function2<com.giphy.sdk.ui.universallist.g, Integer, Unit> getOnItemSelectedListener() {
        return this.f18834r.j();
    }

    @m8.g
    public final Function1<Integer, Unit> getOnResultsUpdateListener() {
        return this.f18828l;
    }

    @m8.g
    public final Function1<com.giphy.sdk.ui.universallist.g, Unit> getOnUserProfileInfoPressListener() {
        return this.f18834r.o();
    }

    public final int getOrientation() {
        return this.f18823g;
    }

    @m8.h
    public final RenditionType getRenditionType() {
        return this.f18834r.g().h();
    }

    @m8.g
    public final MutableLiveData<String> getResponseId() {
        return this.f18832p;
    }

    public final int getSpanCount() {
        return this.f18824h;
    }

    public final void q() {
        this.f18818b.clear();
        this.f18817a.clear();
        this.f18819c.clear();
        this.f18834r.submitList(null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        if (this.f18835s) {
            return;
        }
        this.f18835s = true;
        post(new l());
    }

    public final void setApiClient$giphy_ui_2_1_9_release(@m8.g GPHApiClient gPHApiClient) {
        Intrinsics.checkNotNullParameter(gPHApiClient, "<set-?>");
        this.f18820d = gPHApiClient;
    }

    public final void setCellPadding(int i4) {
        this.f18825i = i4;
        E();
    }

    public final void setClipsPreviewRenditionType(@m8.h RenditionType renditionType) {
        this.f18834r.g().k(renditionType);
    }

    public final void setContentItems(@m8.g ArrayList<com.giphy.sdk.ui.universallist.g> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.f18818b = arrayList;
    }

    public final void setFooterItems(@m8.g ArrayList<com.giphy.sdk.ui.universallist.g> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.f18819c = arrayList;
    }

    public final void setGifTrackingManager$giphy_ui_2_1_9_release(@m8.g com.giphy.sdk.tracking.d dVar) {
        Intrinsics.checkNotNullParameter(dVar, "<set-?>");
        this.f18822f = dVar;
    }

    public final void setHeaderItems(@m8.g ArrayList<com.giphy.sdk.ui.universallist.g> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.f18817a = arrayList;
    }

    public final void setNetworkState(@m8.g MutableLiveData<com.giphy.sdk.ui.pagination.c> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.f18831o = mutableLiveData;
    }

    public final void setOnItemLongPressListener(@m8.g Function2<? super com.giphy.sdk.ui.universallist.g, ? super Integer, Unit> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f18834r.s(value);
    }

    public final void setOnItemSelectedListener(@m8.h Function2<? super com.giphy.sdk.ui.universallist.g, ? super Integer, Unit> function2) {
        this.f18829m = function2;
        this.f18834r.t(new i(function2));
    }

    public final void setOnResultsUpdateListener(@m8.g Function1<? super Integer, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.f18828l = function1;
    }

    public final void setOnUserProfileInfoPressListener(@m8.g Function1<? super com.giphy.sdk.ui.universallist.g, Unit> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f18834r.x(value);
    }

    public final void setOrientation(int i4) {
        this.f18823g = i4;
        D();
    }

    public final void setRenditionType(@m8.h RenditionType renditionType) {
        this.f18834r.g().q(renditionType);
    }

    public final void setResponseId(@m8.g MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.f18832p = mutableLiveData;
    }

    public final void setSpanCount(int i4) {
        this.f18824h = i4;
        D();
    }

    public final boolean u() {
        return this.f18818b.isEmpty();
    }

    public final boolean v() {
        ArrayList<com.giphy.sdk.ui.universallist.g> arrayList = this.f18818b;
        ArrayList arrayList2 = new ArrayList();
        for (com.giphy.sdk.ui.universallist.g gVar : arrayList) {
            Object a10 = gVar.a();
            if (!(a10 instanceof Media)) {
                a10 = null;
            }
            Media media = (Media) a10;
            if (media != null) {
                arrayList2.add(media);
            }
        }
        return w(arrayList2);
    }

    public final void z() {
        GPHContent gPHContent = this.f18821e;
        if (gPHContent != null) {
            C(gPHContent);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SmartGridRecyclerView(@m8.g Context context, @m8.h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f18817a = new ArrayList<>();
        this.f18818b = new ArrayList<>();
        this.f18819c = new ArrayList<>();
        this.f18820d = com.giphy.sdk.core.c.f16910h.f();
        this.f18822f = new com.giphy.sdk.tracking.d(true);
        this.f18823g = 1;
        this.f18824h = 2;
        this.f18825i = -1;
        this.f18826j = GridType.waterfall;
        this.f18828l = j.f18847a;
        this.f18831o = new MutableLiveData<>();
        this.f18832p = new MutableLiveData<>();
        com.giphy.sdk.ui.universallist.e eVar = new com.giphy.sdk.ui.universallist.e(context, getPostComparator());
        eVar.u(new f(this));
        eVar.w(new a());
        Unit unit = Unit.INSTANCE;
        this.f18834r = eVar;
        if (this.f18825i == -1) {
            setCellPadding(getResources().getDimensionPixelSize(p.g.f17702z2));
        }
        r();
        setAdapter(eVar);
        this.f18822f.e(this, eVar);
    }
}
