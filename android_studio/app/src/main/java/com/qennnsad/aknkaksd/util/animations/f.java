package com.qennnsad.aknkaksd.util.animations;

import com.facebook.common.callercontext.ContextChain;
import com.opensource.svgaplayer.SVGAImageView;
import com.qennnsad.aknkaksd.data.bean.websocket.PeerageLogin;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.presentation.ui.room.view.PeerageLoginView;
import com.qennnsad.aknkaksd.util.k0;
import com.qennnsad.aknkaksd.util.o0;
import java.util.LinkedList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import m8.g;
import timber.log.Timber;

/* compiled from: PeerageAnimationUtil.kt */
@Metadata(bv = {}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0018\u001a\u00020\u0014\u0012\u0006\u0010\u001d\u001a\u00020\u0019\u0012\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\r0\u001e¢\u0006\u0004\b3\u00104J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u001a\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\tH\u0007J\u0006\u0010\f\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0018\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\b\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u001d\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001d\u0010\"\u001a\b\u0012\u0004\u0012\u00020\r0\u001e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b\u001f\u0010!R\u001a\u0010'\u001a\u00020#8\u0006X\u0086D¢\u0006\f\n\u0004\b\u0016\u0010$\u001a\u0004\b%\u0010&R\"\u0010-\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001d\u00102\u001a\b\u0012\u0004\u0012\u00020\u00050.8\u0006¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b/\u00101¨\u00065"}, d2 = {"Lcom/qennnsad/aknkaksd/util/animations/f;", "", "", "n", "o", "Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;", "peerageLogin", "c", "b", "", "highPriority", "k", "p", "", "roomId", "q", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/presentation/ui/room/view/PeerageLoginView;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/view/PeerageLoginView;", "e", "()Lcom/qennnsad/aknkaksd/presentation/ui/room/view/PeerageLoginView;", "peerageLoginView", "Lcom/opensource/svgaplayer/SVGAImageView;", "Lcom/opensource/svgaplayer/SVGAImageView;", "f", "()Lcom/opensource/svgaplayer/SVGAImageView;", "peerageSvgaPlayer", "Lkotlin/Function0;", "d", "Lkotlin/jvm/functions/Function0;", "()Lkotlin/jvm/functions/Function0;", "getRoomId", "", "Ljava/lang/String;", "h", "()Ljava/lang/String;", "TAG", "Z", ContextChain.TAG_INFRA, "()Z", "m", "(Z)V", "isRunning", "Ljava/util/LinkedList;", "g", "Ljava/util/LinkedList;", "()Ljava/util/LinkedList;", "queue", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/presentation/ui/room/view/PeerageLoginView;Lcom/opensource/svgaplayer/SVGAImageView;Lkotlin/jvm/functions/Function0;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final m f54563a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final PeerageLoginView f54564b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final SVGAImageView f54565c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final Function0<Integer> f54566d;
    @g

    /* renamed from: e  reason: collision with root package name */
    private final String f54567e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f54568f;
    @g

    /* renamed from: g  reason: collision with root package name */
    private final LinkedList<PeerageLogin> f54569g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PeerageAnimationUtil.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PeerageLoginView f54570a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ f f54571b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(PeerageLoginView peerageLoginView, f fVar) {
            super(0);
            this.f54570a = peerageLoginView;
            this.f54571b = fVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f54570a.a();
            this.f54571b.o();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PeerageAnimationUtil.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0004\u001a\n \u0001*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "kotlin.jvm.PlatformType", "completedCount", "", "a", "(Ljava/lang/Integer;)Ljava/lang/String;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function1<Integer, String> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PeerageLogin f54573b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(PeerageLogin peerageLogin) {
            super(1);
            this.f54573b = peerageLogin;
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public final String invoke(Integer completedCount) {
            Intrinsics.checkNotNullExpressionValue(completedCount, "completedCount");
            String str = completedCount.intValue() > 0 ? "success" : "pending";
            String str2 = completedCount.intValue() > 0 ? "Adding animation is the head of the queue." : "";
            String h4 = f.this.h();
            o0.g(h4, "Svga download " + str + " (" + completedCount + " items). " + str2);
            int intValue = completedCount.intValue();
            f fVar = f.this;
            PeerageLogin peerageLogin = this.f54573b;
            for (int i4 = 0; i4 < intValue; i4++) {
                fVar.k(peerageLogin, true);
            }
            return this.f54573b.getCache_name();
        }
    }

    public f(@g m sourceFactory, @g PeerageLoginView peerageLoginView, @g SVGAImageView peerageSvgaPlayer, @g Function0<Integer> getRoomId) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(peerageLoginView, "peerageLoginView");
        Intrinsics.checkNotNullParameter(peerageSvgaPlayer, "peerageSvgaPlayer");
        Intrinsics.checkNotNullParameter(getRoomId, "getRoomId");
        this.f54563a = sourceFactory;
        this.f54564b = peerageLoginView;
        this.f54565c = peerageSvgaPlayer;
        this.f54566d = getRoomId;
        this.f54567e = "PeerageAnimationUtil";
        this.f54569g = new LinkedList<>();
    }

    private final void b(PeerageLogin peerageLogin) {
        PeerageLoginView peerageLoginView = this.f54564b;
        peerageLoginView.c(this.f54563a, peerageLogin);
        peerageLoginView.d();
        SVGAImageView sVGAImageView = this.f54565c;
        String cache_name = peerageLogin.getCache_name();
        Intrinsics.checkNotNullExpressionValue(cache_name, "peerageLogin.cache_name");
        com.qennnsad.aknkaksd.util.extentions.c.a(sVGAImageView, cache_name, new a(peerageLoginView, this));
    }

    private final void c(PeerageLogin peerageLogin) {
        o0.g(this.f54567e, "Trying to play svga");
        if (k0.q(this.f54564b.getContext(), peerageLogin.getCache_name())) {
            o0.g(this.f54567e, "Svga is already downloaded. Start playing");
            b(peerageLogin);
            return;
        }
        o0.g(this.f54567e, "No svga in cache. Need to be downloaded first");
        o();
        k0.y(this.f54564b.getContext(), peerageLogin.getMount_url(), peerageLogin.getCache_name(), new b(peerageLogin));
    }

    public static /* synthetic */ void l(f fVar, PeerageLogin peerageLogin, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        fVar.k(peerageLogin, z9);
    }

    private final void n() {
        if (this.f54568f) {
            return;
        }
        this.f54568f = true;
        o0.g(this.f54567e, "Peerage Login animations started");
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o() {
        Unit unit;
        Integer intOrNull;
        PeerageLogin poll = this.f54569g.poll();
        if (poll != null) {
            String room_id = poll.getRoom_id();
            Intrinsics.checkNotNullExpressionValue(room_id, "it.room_id");
            intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(room_id);
            int intValue = this.f54566d.invoke().intValue();
            if (intOrNull != null && intOrNull.intValue() == intValue) {
                String str = this.f54567e;
                o0.g(str, "Playing peerage login from queue: " + poll);
                c(poll);
            } else {
                String str2 = this.f54567e;
                o0.g(str2, "Room were changed. Skip this animation. room:" + this.f54566d.invoke().intValue() + " peerage: " + poll);
                o();
            }
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            Timber.f93860a.k("No peerage logins in queue. Stopping", new Object[0]);
            this.f54568f = false;
        }
    }

    @g
    public final Function0<Integer> d() {
        return this.f54566d;
    }

    @g
    public final PeerageLoginView e() {
        return this.f54564b;
    }

    @g
    public final SVGAImageView f() {
        return this.f54565c;
    }

    @g
    public final LinkedList<PeerageLogin> g() {
        return this.f54569g;
    }

    @g
    public final String h() {
        return this.f54567e;
    }

    public final boolean i() {
        return this.f54568f;
    }

    @JvmOverloads
    public final void j(@g PeerageLogin peerageLogin) {
        Intrinsics.checkNotNullParameter(peerageLogin, "peerageLogin");
        l(this, peerageLogin, false, 2, null);
    }

    @JvmOverloads
    public final void k(@g PeerageLogin peerageLogin, boolean z9) {
        Intrinsics.checkNotNullParameter(peerageLogin, "peerageLogin");
        String str = this.f54567e;
        o0.g(str, "New animation offered " + peerageLogin);
        if (!z9) {
            this.f54569g.offer(peerageLogin);
        } else {
            this.f54569g.offerFirst(peerageLogin);
        }
        n();
    }

    public final void m(boolean z9) {
        this.f54568f = z9;
    }

    public final void p() {
        this.f54569g.clear();
        this.f54564b.a();
        this.f54565c.G(true);
        this.f54565c.m();
        this.f54568f = false;
    }

    public final void q(int i4) {
        l(this, o5.a.a(i4), false, 2, null);
        l(this, o5.a.a(i4), false, 2, null);
    }
}
