package com.qennnsad.aknkaksd.presentation.ui.room.pubmsg;

import android.view.View;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.data.bean.websocket.ChatNotification;
import com.qennnsad.aknkaksd.data.bean.websocket.JumpType;
import com.qennnsad.aknkaksd.data.bean.websocket.LegendHallWinMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.LegendProfitMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.LegendWinMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.NewFanEvent;
import com.qennnsad.aknkaksd.data.bean.websocket.PeerageJoinMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.RoomPublicMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.SendGiftMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.UserPublicMsg;
import com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.translation.Translator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: PublicChatAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001:\u000378\u001fB7\u0012\u0006\u00102\u001a\u000201\u0012\u0010\u00104\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u000103\u0012\u0014\u0010!\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0012\u0004\u0012\u00020\u00070\u001d¢\u0006\u0004\b5\u00106J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0002J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tH\u0014J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u000eH\u0014J\u0018\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\tH\u0016J\u0010\u0010\u0016\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014J \u0010\u001a\u001a\u00020\u00072\u0018\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00070\u0017J\u000e\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u001bR\"\u0010!\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0012\u0004\u0012\u00020\u00070\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R*\u0010'\u001a\u0016\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010*\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u001b\u00100\u001a\u00020+8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/¨\u00069"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;", "Lcom/qennnsad/aknkaksd/presentation/ui/base/recycler/a;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;", "data", "", "p", "", "o", "", "pos", "getItemViewType", "viewType", ContextChain.TAG_INFRA, "Landroid/view/View;", "view", "q", "holder", "position", "s", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;", "l", "v", "Lkotlin/Function2;", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;", "w", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;", "u", "Lkotlin/Function1;", "", "c", "Lkotlin/jvm/functions/Function1;", "onSubtitle", "d", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;", "mClickToWinListener", "e", "Lkotlin/jvm/functions/Function2;", "mUserClicked", "f", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;", "mChatNotificationListener", "Lcom/qennnsad/aknkaksd/util/translation/h;", "g", "Lkotlin/Lazy;", "r", "()Lcom/qennnsad/aknkaksd/util/translation/h;", "translatorRapid", "Lg5/a;", "localDataManager", "", "msgList", "<init>", "(Lg5/a;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V", "a", "b", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f extends com.qennnsad.aknkaksd.presentation.ui.base.recycler.a<RoomPublicMsg, h> {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f54097b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Function1<String, Unit> f54098c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private b f54099d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private Function2<? super UserInfo, ? super BaseUserInfoDialog.UserType, Unit> f54100e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private a f54101f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final Lazy f54102g;

    /* compiled from: PublicChatAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J-\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H&¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;", "", "Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;", "jumpType", "", "jumpId", "", "userMystery", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;Ljava/lang/Integer;Ljava/lang/Boolean;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public interface a {
        void a(@m8.h JumpType jumpType, @m8.h Integer num, @m8.h Boolean bool);
    }

    /* compiled from: PublicChatAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¨\u0006\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;", "", "", "gameId", "", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public interface b {
        void a(int i4);
    }

    /* compiled from: PublicChatAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&¨\u0006\b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$c;", "", "", "position", "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;", "data", "", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public interface c {
        void a(int i4, @m8.h RoomPublicMsg roomPublicMsg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PublicChatAdapter.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function1<String, Unit> {
        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            o0.a("PublicChatAdapter", "STT RECOGNIZED. SUBTITLE: " + it);
            f.this.f54098c.invoke(it);
        }
    }

    /* compiled from: PublicChatAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/qennnsad/aknkaksd/util/translation/h;", "a", "()Lcom/qennnsad/aknkaksd/util/translation/h;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class e extends Lambda implements Function0<com.qennnsad.aknkaksd.util.translation.h> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f54104a = new e();

        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final com.qennnsad.aknkaksd.util.translation.h invoke() {
            return ((f5.d) dagger.hilt.c.a(BaseBeautyApplication.Companion.a(), f5.d.class)).c().h();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public f(@m8.g g5.a localDataManager, @m8.h List<? extends RoomPublicMsg> list, @m8.g Function1<? super String, Unit> onSubtitle) {
        super(list);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(onSubtitle, "onSubtitle");
        this.f54097b = localDataManager;
        this.f54098c = onSubtitle;
        lazy = LazyKt__LazyJVMKt.lazy(e.f54104a);
        this.f54102g = lazy;
    }

    private final boolean p(RoomPublicMsg roomPublicMsg) {
        if (roomPublicMsg instanceof UserPublicMsg) {
            UserPublicMsg userPublicMsg = (UserPublicMsg) roomPublicMsg;
            if (com.qennnsad.aknkaksd.util.translation.f.b(userPublicMsg.getContent())) {
                if (!this.f54097b.L()) {
                    o0.a("PublicChatAdapter", "Speech-To-Text subtitle received but the STT local setting is OFF. Hide the STT item.");
                    return false;
                }
                r().a(com.qennnsad.aknkaksd.util.translation.f.a(userPublicMsg.getContent()), Translator.Direction.ZH, new d());
                return false;
            }
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(RoomPublicMsg msg, f this$0, View view) {
        Function2<? super UserInfo, ? super BaseUserInfoDialog.UserType, Unit> function2;
        Intrinsics.checkNotNullParameter(msg, "$msg");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (msg instanceof UserPublicMsg) {
            Function2<? super UserInfo, ? super BaseUserInfoDialog.UserType, Unit> function22 = this$0.f54100e;
            if (function22 != null) {
                function22.invoke(((UserPublicMsg) msg).asUserInfo(), BaseUserInfoDialog.UserType.COMMON);
            }
        } else if (!(msg instanceof SendGiftMsg) || (function2 = this$0.f54100e) == null) {
        } else {
            function2.invoke(b5.a.a((SendGiftMsg) msg), BaseUserInfoDialog.UserType.COMMON);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i4) {
        Object orNull;
        List<RoomPublicMsg> dataList = h();
        Intrinsics.checkNotNullExpressionValue(dataList, "dataList");
        orNull = CollectionsKt___CollectionsKt.getOrNull(dataList, i4);
        return ((RoomPublicMsg) orNull) instanceof NewFanEvent ? 1 : 0;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.recycler.a
    protected int i(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                return 0;
            }
            return R.layout.item_room_public_chat_new_fan;
        }
        return R.layout.item_room_public_chat;
    }

    public final void o(@m8.g RoomPublicMsg data) {
        List listOf;
        Intrinsics.checkNotNullParameter(data, "data");
        if (p(data)) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(data);
            super.e(listOf);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.ui.base.recycler.a
    @m8.g
    /* renamed from: q */
    public h g(@m8.g View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        h hVar = new h(this.f54097b, view, r());
        b bVar = this.f54099d;
        if (bVar != null) {
            hVar.D(bVar);
        }
        Function2<? super UserInfo, ? super BaseUserInfoDialog.UserType, Unit> function2 = this.f54100e;
        if (function2 != null) {
            hVar.C(function2);
        }
        a aVar = this.f54101f;
        if (aVar != null) {
            hVar.B(aVar);
        }
        return hVar;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.util.translation.h r() {
        return (com.qennnsad.aknkaksd.util.translation.h) this.f54102g.getValue();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.recycler.a, androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: s */
    public void onBindViewHolder(@m8.g h holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onBindViewHolder(holder, i4);
        RoomPublicMsg roomPublicMsg = h().get(i4);
        Intrinsics.checkNotNull(roomPublicMsg);
        final RoomPublicMsg roomPublicMsg2 = roomPublicMsg;
        if (!(roomPublicMsg2 instanceof LegendProfitMsg) && !(roomPublicMsg2 instanceof LegendWinMsg) && !(roomPublicMsg2 instanceof LegendHallWinMsg) && !(roomPublicMsg2 instanceof PeerageJoinMsg) && !(roomPublicMsg2 instanceof ChatNotification)) {
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    f.t(RoomPublicMsg.this, this, view);
                }
            });
        } else {
            holder.itemView.setOnClickListener(null);
        }
    }

    public final void u(@m8.g a l10) {
        Intrinsics.checkNotNullParameter(l10, "l");
        this.f54101f = l10;
    }

    public final void v(@m8.h b bVar) {
        this.f54099d = bVar;
    }

    public final void w(@m8.g Function2<? super UserInfo, ? super BaseUserInfoDialog.UserType, Unit> l10) {
        Intrinsics.checkNotNullParameter(l10, "l");
        this.f54100e = l10;
    }
}
