package com.qennnsad.aknkaksd.util.animations;

import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.core.view.ViewGroupKt;
import androidx.exifinterface.media.ExifInterface;
import com.opensource.svgaplayer.SVGAImageView;
import com.qennnsad.aknkaksd.data.bean.gift.SendGiftAction;
import com.qennnsad.aknkaksd.data.bean.websocket.SendGiftMsg;
import com.qennnsad.aknkaksd.presentation.ui.room.gift.LocalAnimPlayerView;
import com.qennnsad.aknkaksd.util.k0;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.roomanim.CarView;
import com.qennnsad.aknkaksd.util.roomanim.PlaneImagerView;
import com.qennnsad.aknkaksd.util.roomanim.ShipView;
import io.sentry.protocol.y;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlinx.coroutines.b1;
import kotlinx.coroutines.l;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t0;
import m8.g;
import m8.h;
import timber.log.Timber;

/* compiled from: GiftAnimationUtil.kt */
@Metadata(bv = {}, d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0005\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\"\u001a\u00020 \u0012\u0006\u0010&\u001a\u00020#\u0012\u0006\u0010*\u001a\u00020'\u0012\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u001c0+¢\u0006\u0004\b?\u0010@J\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J%\u0010\f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u000e\u001a\u00020\u0006H\u0002J\b\u0010\u000f\u001a\u00020\u0006H\u0002J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\bH\u0002J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\bH\u0002J$\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\b2\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0019\u001a\u00020\u0004H\u0007J\u0006\u0010\u001b\u001a\u00020\u0006J\u000e\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001cJ\b\u0010\u001f\u001a\u00020\u0006H\u0016R\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010!R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010*\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u001d\u00100\u001a\b\u0012\u0004\u0012\u00020\u001c0+8\u0006¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082D¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00107\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u001a\u0010;\u001a\b\u0012\u0004\u0012\u00020\b088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R \u0010>\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020<088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010:\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006A"}, d2 = {"Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/a;", "Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;", "sendGiftAction", "", "highPriority", "", "o", "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;", "gift", "", "delay", ExifInterface.LONGITUDE_EAST, "(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "", "Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;", "k", "n", "l", "msg", "q", "j", "giftMsg", "addToAction", y.b.f83920h, "C", "", "roomId", "D", "a", "Landroid/widget/RelativeLayout;", "Landroid/widget/RelativeLayout;", "animLayout", "Lcom/opensource/svgaplayer/SVGAImageView;", "b", "Lcom/opensource/svgaplayer/SVGAImageView;", "giftSvgaPlayer", "Landroid/view/ViewGroup;", "c", "Landroid/view/ViewGroup;", "actionPlayersContainer", "Lkotlin/Function0;", "d", "Lkotlin/jvm/functions/Function0;", "m", "()Lkotlin/jvm/functions/Function0;", "getRoomId", "", "e", "Ljava/lang/String;", "TAG", "f", "Z", "animationIsRunning", "Ljava/util/LinkedList;", "g", "Ljava/util/LinkedList;", "animationQueue", "", "h", "actionQueue", "<init>", "(Landroid/widget/RelativeLayout;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class GiftAnimationUtil implements com.qennnsad.aknkaksd.presentation.ui.room.gift.a {
    @g

    /* renamed from: a */
    private final RelativeLayout f54534a;
    @g

    /* renamed from: b */
    private final SVGAImageView f54535b;
    @g

    /* renamed from: c */
    private final ViewGroup f54536c;
    @g

    /* renamed from: d */
    private final Function0<Integer> f54537d;
    @g

    /* renamed from: e */
    private final String f54538e;

    /* renamed from: f */
    private boolean f54539f;
    @g

    /* renamed from: g */
    private final LinkedList<SendGiftMsg> f54540g;
    @g

    /* renamed from: h */
    private final LinkedList<List<SendGiftAction>> f54541h;

    /* compiled from: GiftAnimationUtil.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function0<Unit> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a() {
            super(0);
            GiftAnimationUtil.this = r1;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
            GiftAnimationUtil.this.B();
        }
    }

    /* compiled from: GiftAnimationUtil.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0004\u001a\n \u0001*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "kotlin.jvm.PlatformType", "completedCount", "", "a", "(Ljava/lang/Integer;)Ljava/lang/String;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function1<Integer, String> {

        /* renamed from: a */
        final /* synthetic */ SendGiftMsg f54543a;

        /* renamed from: b */
        final /* synthetic */ GiftAnimationUtil f54544b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(SendGiftMsg sendGiftMsg, GiftAnimationUtil giftAnimationUtil) {
            super(1);
            this.f54543a = sendGiftMsg;
            this.f54544b = giftAnimationUtil;
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public final String invoke(Integer completedCount) {
            Intrinsics.checkNotNullExpressionValue(completedCount, "completedCount");
            boolean z9 = completedCount.intValue() > 0;
            String str = z9 ? "success" : "pending. msg.comboHit=" + this.f54543a.getComboHit();
            int comboHit = this.f54543a.getComboHit();
            o0.g(this.f54544b.f54538e + ".Download", "Svga download " + str + ". Completed: (" + completedCount + " items " + this.f54543a.getGiftName() + "). " + (z9 ? "Adding " + completedCount + " [" + this.f54543a.getGiftName() + "] animation items to the head of queue. comboHitStart=" + comboHit : ""));
            int intValue = completedCount.intValue();
            GiftAnimationUtil giftAnimationUtil = this.f54544b;
            SendGiftMsg sendGiftMsg = this.f54543a;
            for (int i4 = 0; i4 < intValue; i4++) {
                sendGiftMsg.setComboHit(comboHit + i4);
                giftAnimationUtil.y(sendGiftMsg, true, false);
            }
            return this.f54543a.getCache_name();
        }
    }

    /* compiled from: GiftAnimationUtil.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.util.animations.GiftAnimationUtil$testAnimation$1", f = "GiftAnimationUtil.kt", i = {}, l = {104, 105, 106}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f54545a;

        /* renamed from: b */
        int f54546b;

        /* renamed from: c */
        int f54547c;

        /* renamed from: d */
        int f54548d;

        /* renamed from: e */
        Object f54549e;

        /* renamed from: f */
        Object f54550f;

        /* renamed from: g */
        Object f54551g;

        /* renamed from: h */
        Object f54552h;

        /* renamed from: i */
        int f54553i;

        /* renamed from: k */
        final /* synthetic */ SendGiftMsg f54555k;

        /* renamed from: l */
        final /* synthetic */ SendGiftMsg f54556l;

        /* renamed from: m */
        final /* synthetic */ SendGiftMsg f54557m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(SendGiftMsg sendGiftMsg, SendGiftMsg sendGiftMsg2, SendGiftMsg sendGiftMsg3, Continuation<? super c> continuation) {
            super(2, continuation);
            GiftAnimationUtil.this = r1;
            this.f54555k = sendGiftMsg;
            this.f54556l = sendGiftMsg2;
            this.f54557m = sendGiftMsg3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            return new c(this.f54555k, this.f54556l, this.f54557m, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:55:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x00e4  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x012b  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0155  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0198  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x01ae  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x00c7 -> B:62:0x00cd). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x0129 -> B:64:0x00e2). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x012b -> B:79:0x01ab). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x0196 -> B:72:0x0153). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x0198 -> B:79:0x01ab). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r25) {
            /*
                Method dump skipped, instructions count: 433
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.util.animations.GiftAnimationUtil.c.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public GiftAnimationUtil(@g RelativeLayout animLayout, @g SVGAImageView giftSvgaPlayer, @g ViewGroup actionPlayersContainer, @g Function0<Integer> getRoomId) {
        Intrinsics.checkNotNullParameter(animLayout, "animLayout");
        Intrinsics.checkNotNullParameter(giftSvgaPlayer, "giftSvgaPlayer");
        Intrinsics.checkNotNullParameter(actionPlayersContainer, "actionPlayersContainer");
        Intrinsics.checkNotNullParameter(getRoomId, "getRoomId");
        this.f54534a = animLayout;
        this.f54535b = giftSvgaPlayer;
        this.f54536c = actionPlayersContainer;
        this.f54537d = getRoomId;
        this.f54538e = "GiftAnimationUtil";
        this.f54540g = new LinkedList<>();
        this.f54541h = new LinkedList<>();
    }

    private final void A() {
        if (this.f54539f) {
            return;
        }
        o0.g(this.f54538e + ".Animation", "Start playing animation queue");
        this.f54539f = true;
        B();
    }

    public final void B() {
        Unit unit;
        this.f54534a.removeAllViews();
        SendGiftMsg poll = this.f54540g.poll();
        if (poll != null) {
            if (poll.getRoom_id() == this.f54537d.invoke().intValue()) {
                o0.g(this.f54538e + ".Animation", "Starting next animation in queue: " + poll);
                q(poll);
            } else {
                o0.g(this.f54538e + ".Animation", "Room were changed. Skip this animation. Room: " + this.f54537d.invoke().intValue() + ". Gift: " + poll);
                B();
            }
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            o0.g(this.f54538e + ".Animation", "No animations in queue. Stopping");
            this.f54539f = false;
        }
    }

    public final Object E(SendGiftMsg sendGiftMsg, long j4, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        z(this, sendGiftMsg, false, false, 6, null);
        Object b10 = b1.b(j4, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return b10 == coroutine_suspended ? b10 : Unit.INSTANCE;
    }

    static /* synthetic */ Object F(GiftAnimationUtil giftAnimationUtil, SendGiftMsg sendGiftMsg, long j4, Continuation continuation, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            j4 = 20;
        }
        return giftAnimationUtil.E(sendGiftMsg, j4, continuation);
    }

    private final void j(SendGiftMsg sendGiftMsg) {
        if (k0.q(this.f54534a.getContext(), sendGiftMsg.getCache_name())) {
            o0.g(this.f54538e + ".Download", "Svga is already downloaded. Start playing");
            SVGAImageView sVGAImageView = this.f54535b;
            String cache_name = sendGiftMsg.getCache_name();
            Intrinsics.checkNotNullExpressionValue(cache_name, "msg.cache_name");
            com.qennnsad.aknkaksd.util.extentions.c.a(sVGAImageView, cache_name, new a());
            return;
        }
        o0.g(this.f54538e + ".Download", "No svga in cache. Need to be downloaded first");
        B();
        k0.y(this.f54534a.getContext(), sendGiftMsg.getGiftSwf(), sendGiftMsg.getCache_name(), new b(sendGiftMsg, this));
    }

    private final List<LocalAnimPlayerView> k() {
        Sequence filter;
        List<LocalAnimPlayerView> list;
        filter = SequencesKt___SequencesKt.filter(ViewGroupKt.getChildren(this.f54536c), GiftAnimationUtil$getActionPlayers$$inlined$filterIsInstance$1.INSTANCE);
        Intrinsics.checkNotNull(filter, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesKt.filterIsInstance>");
        list = SequencesKt___SequencesKt.toList(filter);
        return list;
    }

    private final LocalAnimPlayerView l() {
        Object obj;
        Iterator<T> it = k().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((LocalAnimPlayerView) obj).t()) {
                break;
            }
        }
        return (LocalAnimPlayerView) obj;
    }

    private final LocalAnimPlayerView n(SendGiftAction sendGiftAction) {
        Object obj;
        Iterator<T> it = k().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((LocalAnimPlayerView) obj).v(sendGiftAction)) {
                break;
            }
        }
        return (LocalAnimPlayerView) obj;
    }

    private final void o(SendGiftAction sendGiftAction, boolean z9) {
        Object obj;
        List<SendGiftAction> mutableListOf;
        List<SendGiftAction> mutableListOf2;
        Object first;
        List<SendGiftAction> listOf;
        LocalAnimPlayerView n9 = n(sendGiftAction);
        if (n9 != null) {
            Timber.f93860a.H(this.f54538e + ".Action").k("Action can be joined to player " + n9.getId() + ": [name=" + sendGiftAction.getGiftName() + ", combo=" + sendGiftAction.getIntcombe() + ']', new Object[0]);
            n9.D(sendGiftAction);
            return;
        }
        LocalAnimPlayerView l10 = l();
        if (l10 != null) {
            o0.g(this.f54538e + ".Action", "There is available player " + l10.getId() + ". Start action: [name=" + sendGiftAction.getGiftName() + ", combo=" + sendGiftAction.getIntcombe() + ']');
            listOf = CollectionsKt__CollectionsJVMKt.listOf(sendGiftAction);
            l10.N(listOf);
            l10.u(this);
            return;
        }
        Iterator<T> it = this.f54541h.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) obj);
            if (((SendGiftAction) first).canBeJoined(sendGiftAction)) {
                break;
            }
        }
        List list = (List) obj;
        if (list != null) {
            o0.g(this.f54538e + ".Action", "Found actions to join: [name=" + sendGiftAction.getGiftName() + ", combo=" + sendGiftAction.getIntcombe() + ']');
            list.add(sendGiftAction);
            return;
        }
        o0.g(this.f54538e + ".Action", "Action added to queue: " + sendGiftAction);
        if (z9) {
            LinkedList<List<SendGiftAction>> linkedList = this.f54541h;
            mutableListOf2 = CollectionsKt__CollectionsKt.mutableListOf(sendGiftAction);
            linkedList.offerFirst(mutableListOf2);
            return;
        }
        LinkedList<List<SendGiftAction>> linkedList2 = this.f54541h;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(sendGiftAction);
        linkedList2.offer(mutableListOf);
    }

    static /* synthetic */ void p(GiftAnimationUtil giftAnimationUtil, SendGiftAction sendGiftAction, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        giftAnimationUtil.o(sendGiftAction, z9);
    }

    private final void q(SendGiftMsg sendGiftMsg) {
        String isred = sendGiftMsg.getIsred();
        Intrinsics.checkNotNullExpressionValue(isred, "msg.isred");
        switch (Integer.parseInt(isred)) {
            case 2:
                o0.g(this.f54538e + ".Animation", "Playing fireworks");
                com.qennnsad.aknkaksd.util.roomanim.a aVar = new com.qennnsad.aknkaksd.util.roomanim.a(this.f54534a.getContext());
                aVar.setAnimsopt(new com.qennnsad.aknkaksd.util.roomanim.c() { // from class: com.qennnsad.aknkaksd.util.animations.d
                    @Override // com.qennnsad.aknkaksd.util.roomanim.c
                    public final void a() {
                        GiftAnimationUtil.r(GiftAnimationUtil.this);
                    }
                });
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
                layoutParams.addRule(13);
                this.f54534a.addView(aVar, layoutParams);
                return;
            case 3:
                o0.g(this.f54538e + ".Animation", "Playing gen");
                com.qennnsad.aknkaksd.util.roomanim.b bVar = new com.qennnsad.aknkaksd.util.roomanim.b(this.f54534a.getContext());
                bVar.setAnimsopt(new com.qennnsad.aknkaksd.util.roomanim.c() { // from class: com.qennnsad.aknkaksd.util.animations.c
                    @Override // com.qennnsad.aknkaksd.util.roomanim.c
                    public final void a() {
                        GiftAnimationUtil.s(GiftAnimationUtil.this);
                    }
                });
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams2.addRule(13);
                this.f54534a.addView(bVar, layoutParams2);
                return;
            case 4:
                o0.g(this.f54538e + ".Animation", "Playing car");
                CarView carView = new CarView(this.f54534a.getContext());
                carView.setAnimsopt(new com.qennnsad.aknkaksd.util.roomanim.c() { // from class: com.qennnsad.aknkaksd.util.animations.b
                    @Override // com.qennnsad.aknkaksd.util.roomanim.c
                    public final void a() {
                        GiftAnimationUtil.t(GiftAnimationUtil.this);
                    }
                });
                this.f54534a.addView(carView);
                carView.j(this.f54534a.getMeasuredWidth(), this.f54534a.getMeasuredHeight());
                return;
            case 5:
                o0.g(this.f54538e + ".Animation", "Playing plane");
                PlaneImagerView planeImagerView = new PlaneImagerView(this.f54534a.getContext());
                planeImagerView.setGitfSpecialsStop(new com.qennnsad.aknkaksd.util.roomanim.c() { // from class: com.qennnsad.aknkaksd.util.animations.e
                    @Override // com.qennnsad.aknkaksd.util.roomanim.c
                    public final void a() {
                        GiftAnimationUtil.u(GiftAnimationUtil.this);
                    }
                });
                this.f54534a.addView(planeImagerView);
                planeImagerView.c(this.f54534a.getWidth());
                return;
            case 6:
                o0.g(this.f54538e + ".Animation", "Playing ship");
                ShipView shipView = new ShipView(this.f54534a.getContext());
                shipView.setGitfSpecialsStop(new com.qennnsad.aknkaksd.util.roomanim.c() { // from class: com.qennnsad.aknkaksd.util.animations.a
                    @Override // com.qennnsad.aknkaksd.util.roomanim.c
                    public final void a() {
                        GiftAnimationUtil.v(GiftAnimationUtil.this);
                    }
                });
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams3.addRule(12);
                this.f54534a.addView(shipView, layoutParams3);
                shipView.h(this.f54534a.getWidth());
                return;
            case 7:
                j(sendGiftMsg);
                return;
            default:
                o0.g(this.f54538e + ".Animation", "No big animation for received gift. Starting next");
                B();
                return;
        }
    }

    public static final void r(GiftAnimationUtil this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.B();
    }

    public static final void s(GiftAnimationUtil this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.B();
    }

    public static final void t(GiftAnimationUtil this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.B();
    }

    public static final void u(GiftAnimationUtil this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.B();
    }

    public static final void v(GiftAnimationUtil this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.B();
    }

    public static /* synthetic */ void z(GiftAnimationUtil giftAnimationUtil, SendGiftMsg sendGiftMsg, boolean z9, boolean z10, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        if ((i4 & 4) != 0) {
            z10 = true;
        }
        giftAnimationUtil.y(sendGiftMsg, z9, z10);
    }

    public final void C() {
        Timber.b bVar = Timber.f93860a;
        bVar.H("GiftAnimationUtil.Action").k("Stop all action animations", new Object[0]);
        bVar.H("GiftAnimationUtil.Animation").k("Stop all action animations", new Object[0]);
        this.f54540g.clear();
        this.f54541h.clear();
        for (LocalAnimPlayerView localAnimPlayerView : k()) {
            localAnimPlayerView.w();
        }
        this.f54534a.removeAllViews();
        this.f54535b.G(true);
        this.f54535b.m();
        this.f54539f = false;
    }

    public final void D(int i4) {
        l.f(t0.b(), null, null, new c(o5.b.a(i4, 0), o5.b.c(i4, 0), o5.b.e(i4, 0), null), 3, null);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.gift.a
    public void a() {
        Object first;
        t0.b();
        List<SendGiftAction> poll = this.f54541h.poll();
        if (poll != null) {
            Intrinsics.checkNotNullExpressionValue(poll, "poll()");
            int intValue = this.f54537d.invoke().intValue();
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) poll);
            if (intValue == ((SendGiftAction) first).getRoomId()) {
                LocalAnimPlayerView l10 = l();
                if (l10 != null) {
                    o0.g(this.f54538e + ".Action", "Playing next actions from queue: " + poll);
                    l10.N(poll);
                    return;
                }
                o0.g(this.f54538e + ".Action", "No player for action from queue. Adding to head of queue: " + poll);
                this.f54541h.offerFirst(poll);
                return;
            }
            o0.g(this.f54538e + ".Action", "Room were changed. Skip: " + poll);
            a();
            return;
        }
        o0.g(this.f54538e + ".Action", "Queue is empty");
    }

    @g
    public final Function0<Integer> m() {
        return this.f54537d;
    }

    @JvmOverloads
    public final void w(@g SendGiftMsg giftMsg) {
        Intrinsics.checkNotNullParameter(giftMsg, "giftMsg");
        z(this, giftMsg, false, false, 6, null);
    }

    @JvmOverloads
    public final void x(@g SendGiftMsg giftMsg, boolean z9) {
        Intrinsics.checkNotNullParameter(giftMsg, "giftMsg");
        z(this, giftMsg, z9, false, 4, null);
    }

    @JvmOverloads
    public final void y(@g SendGiftMsg giftMsg, boolean z9, boolean z10) {
        Intrinsics.checkNotNullParameter(giftMsg, "giftMsg");
        Timber.b bVar = Timber.f93860a;
        Timber.c H = bVar.H(this.f54538e + ".Animation");
        H.k("New animation offered " + giftMsg, new Object[0]);
        if (!z9) {
            int giftCount = giftMsg.getGiftCount();
            for (int i4 = 0; i4 < giftCount; i4++) {
                this.f54540g.offer(giftMsg);
            }
        } else {
            this.f54540g.offerFirst(giftMsg);
        }
        if (z10) {
            p(this, new SendGiftAction(giftMsg), false, 2, null);
        }
        A();
    }
}
