package com.qennnsad.aknkaksd.presentation.ui.room.pubmsg;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.URLSpan;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.data.bean.websocket.ChatEntityType;
import com.qennnsad.aknkaksd.data.bean.websocket.ChatNotification;
import com.qennnsad.aknkaksd.data.bean.websocket.ChatNotificationEntity;
import com.qennnsad.aknkaksd.data.bean.websocket.LegendHallWinMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.LegendProfitMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.LegendWinMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.NameCardNews;
import com.qennnsad.aknkaksd.data.bean.websocket.PeerageJoinMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.PeerageProfitMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.RoomPublicMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.SendGiftMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.SendGiftNewsMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.SystemMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.SystemWelcome;
import com.qennnsad.aknkaksd.data.bean.websocket.UpdateRoleBean;
import com.qennnsad.aknkaksd.data.bean.websocket.UserPublicMsg;
import com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewActivity;
import com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.f;
import com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog;
import com.qennnsad.aknkaksd.util.j1;
import com.qennnsad.aknkaksd.util.k1;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.translation.Translator;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.u0;

/* compiled from: PublicChatHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000È\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u001f\u0012\u0006\u0010S\u001a\u00020R\u0012\u0006\u0010X\u001a\u00020W\u0012\u0006\u00101\u001a\u00020,¢\u0006\u0004\bY\u0010ZJ$\u0010\t\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u0002J\u0010\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0003H\u0002J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0011H\u0002J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0013H\u0002J\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0015H\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0017H\u0002J\u0010\u0010\u001a\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0019H\u0002J\u0010\u0010\u001c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u001bH\u0002J\u0010\u0010\u001e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u001dH\u0002J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u001fH\u0002J\u0010\u0010\"\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020!H\u0002J\u0010\u0010$\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020#H\u0002J\u0010\u0010&\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020%H\u0002J\u0012\u0010*\u001a\u00020)2\b\u0010(\u001a\u0004\u0018\u00010'H\u0002J\u0012\u0010+\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016R\u0017\u00101\u001a\u00020,8\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R$\u00109\u001a\u0004\u0018\u0001028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R6\u0010C\u001a\u0016\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u0007\u0018\u00010:8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR$\u0010K\u001a\u0004\u0018\u00010D8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\u0014\u0010N\u001a\u00020L8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010MR\u0014\u0010Q\u001a\u00020O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010PR\u0017\u0010S\u001a\u00020R8\u0006¢\u0006\f\n\u0004\bS\u0010T\u001a\u0004\bU\u0010V¨\u0006["}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;", "Lcom/qennnsad/aknkaksd/presentation/ui/base/recycler/b;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;", "data", "Lkotlin/Function1;", "", "", "onCharSequenceReady", "q", "", u0.f86831d, "s", "msg", "p", "Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;", "n", "Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageJoinMsg;", "m", "Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageProfitMsg;", "l", "Lcom/qennnsad/aknkaksd/data/bean/websocket/UpdateRoleBean;", "o", "Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;", "r", "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;", "g", "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;", "f", "Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;", "j", "Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendHallWinMsg;", "h", "Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendProfitMsg;", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCardNews;", "k", "Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotification;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "", "answerString", "Landroid/text/SpannableStringBuilder;", ExifInterface.LONGITUDE_EAST, "t", "Lcom/qennnsad/aknkaksd/util/translation/h;", "b", "Lcom/qennnsad/aknkaksd/util/translation/h;", "z", "()Lcom/qennnsad/aknkaksd/util/translation/h;", "translatorRapid", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;", "c", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;", y.b.f83919g, "()Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;", "D", "(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;)V", "clickToWinListener", "Lkotlin/Function2;", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;", "d", "Lkotlin/jvm/functions/Function2;", "w", "()Lkotlin/jvm/functions/Function2;", "C", "(Lkotlin/jvm/functions/Function2;)V", "clickOnUserSpanListener", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;", "e", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;", "v", "()Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;", "B", "(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;)V", "clickOnChatNotificationListener", "Landroid/widget/TextView;", "Landroid/widget/TextView;", "tvContent", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;", "msgUtils", "Lg5/a;", "localDataManager", "Lg5/a;", y.b.f83920h, "()Lg5/a;", "Landroid/view/View;", "itemView", "<init>", "(Lg5/a;Landroid/view/View;Lcom/qennnsad/aknkaksd/util/translation/h;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class h extends com.qennnsad.aknkaksd.presentation.ui.base.recycler.b<RoomPublicMsg> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f54106a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.util.translation.h f54107b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private f.b f54108c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private Function2<? super UserInfo, ? super BaseUserInfoDialog.UserType, Unit> f54109d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private f.a f54110e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final TextView f54111f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c f54112g;

    /* compiled from: PublicChatHolder.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ChatEntityType.values().length];
            iArr[ChatEntityType.BOLD.ordinal()] = 1;
            iArr[ChatEntityType.ITALIC.ordinal()] = 2;
            iArr[ChatEntityType.COLOR.ordinal()] = 3;
            iArr[ChatEntityType.URL.ordinal()] = 4;
            iArr[ChatEntityType.JUMP.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* compiled from: PublicChatHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$b", "Lcom/qennnsad/aknkaksd/util/j1$b;", "Landroid/view/View;", "widget", "", "onClick", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends j1.b {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ SendGiftNewsMsg f54113c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ h f54114d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(SendGiftNewsMsg sendGiftNewsMsg, h hVar) {
            super(false, 1, null);
            this.f54113c = sendGiftNewsMsg;
            this.f54114d = hVar;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@m8.g View widget) {
            Intrinsics.checkNotNullParameter(widget, "widget");
            o0.g("SendGiftNewsMsgClick", "Gift From user: " + this.f54113c.getFromUserId());
            Function2<UserInfo, BaseUserInfoDialog.UserType, Unit> w9 = this.f54114d.w();
            if (w9 != null) {
                w9.invoke(this.f54113c.asFromUserInfo(), BaseUserInfoDialog.UserType.XI_BAO);
            }
        }
    }

    /* compiled from: PublicChatHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$c", "Lcom/qennnsad/aknkaksd/util/j1$b;", "Landroid/view/View;", "widget", "", "onClick", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends j1.b {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ SendGiftNewsMsg f54115c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ h f54116d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(SendGiftNewsMsg sendGiftNewsMsg, h hVar) {
            super(false, 1, null);
            this.f54115c = sendGiftNewsMsg;
            this.f54116d = hVar;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@m8.g View widget) {
            Intrinsics.checkNotNullParameter(widget, "widget");
            o0.g("SendGiftNewsMsgClick", "Gift To user: " + this.f54115c.getToUserId());
            Function2<UserInfo, BaseUserInfoDialog.UserType, Unit> w9 = this.f54116d.w();
            if (w9 != null) {
                w9.invoke(this.f54115c.asToUserInfo(), BaseUserInfoDialog.UserType.XI_BAO);
            }
        }
    }

    /* compiled from: PublicChatHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$d", "Lcom/qennnsad/aknkaksd/util/j1$b;", "Landroid/view/View;", "widget", "", "onClick", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends j1.b {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ LegendHallWinMsg f54117c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ h f54118d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(LegendHallWinMsg legendHallWinMsg, h hVar) {
            super(false, 1, null);
            this.f54117c = legendHallWinMsg;
            this.f54118d = hVar;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@m8.g View widget) {
            Intrinsics.checkNotNullParameter(widget, "widget");
            o0.g(com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c.f54074q, "userClickableSpan" + this.f54117c.getUserId());
            Function2<UserInfo, BaseUserInfoDialog.UserType, Unit> w9 = this.f54118d.w();
            if (w9 != null) {
                w9.invoke(this.f54117c.asUserInfo(), BaseUserInfoDialog.UserType.GAME_USER);
            }
        }
    }

    /* compiled from: PublicChatHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$e", "Lcom/qennnsad/aknkaksd/util/j1$b;", "Landroid/view/View;", "widget", "", "onClick", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends j1.b {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ LegendWinMsg f54119c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ h f54120d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(LegendWinMsg legendWinMsg, h hVar) {
            super(false, 1, null);
            this.f54119c = legendWinMsg;
            this.f54120d = hVar;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@m8.g View widget) {
            Intrinsics.checkNotNullParameter(widget, "widget");
            o0.g(com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c.f54074q, "anchorClickableSpan" + this.f54119c.getAnchorId());
            Function2<UserInfo, BaseUserInfoDialog.UserType, Unit> w9 = this.f54120d.w();
            if (w9 != null) {
                w9.invoke(this.f54119c.asAnchorUserInfo(), BaseUserInfoDialog.UserType.GAME_ANCHOR);
            }
        }
    }

    /* compiled from: PublicChatHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$f", "Lcom/qennnsad/aknkaksd/util/j1$b;", "Landroid/view/View;", "widget", "", "onClick", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f extends j1.b {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ LegendWinMsg f54121c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ h f54122d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(LegendWinMsg legendWinMsg, h hVar) {
            super(false, 1, null);
            this.f54121c = legendWinMsg;
            this.f54122d = hVar;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@m8.g View widget) {
            Intrinsics.checkNotNullParameter(widget, "widget");
            o0.g(com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c.f54074q, "userClickableSpan" + this.f54121c.getUserId());
            Function2<UserInfo, BaseUserInfoDialog.UserType, Unit> w9 = this.f54122d.w();
            if (w9 != null) {
                w9.invoke(this.f54121c.asAnchorUserInfo(), BaseUserInfoDialog.UserType.GAME_USER);
            }
        }
    }

    /* compiled from: PublicChatHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$g", "Lcom/qennnsad/aknkaksd/util/j1$b;", "Landroid/view/View;", "widget", "", "onClick", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class g extends j1.b {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ PeerageJoinMsg f54123c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ h f54124d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(PeerageJoinMsg peerageJoinMsg, h hVar) {
            super(false, 1, null);
            this.f54123c = peerageJoinMsg;
            this.f54124d = hVar;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@m8.g View widget) {
            Intrinsics.checkNotNullParameter(widget, "widget");
            o0.g(com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c.f54074q, "userClickableSpan" + this.f54123c.getUserId());
            Function2<UserInfo, BaseUserInfoDialog.UserType, Unit> w9 = this.f54124d.w();
            if (w9 != null) {
                w9.invoke(this.f54123c.asUserInfo(), BaseUserInfoDialog.UserType.PEERAGE_INFO);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PublicChatHolder.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* renamed from: com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.h$h  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0450h extends Lambda implements Function1<String, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserPublicMsg f54125a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function1<CharSequence, Unit> f54126b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ h f54127c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C0450h(UserPublicMsg userPublicMsg, Function1<? super CharSequence, Unit> function1, h hVar) {
            super(1);
            this.f54125a = userPublicMsg;
            this.f54126b = function1;
            this.f54127c = hVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            this.f54125a.setAlreadyTranslated(true);
            this.f54125a.setContent(it);
            this.f54126b.invoke(this.f54127c.p(this.f54125a));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PublicChatHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(Ljava/lang/CharSequence;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class i extends Lambda implements Function1<CharSequence, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RoomPublicMsg f54128a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h f54129b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(RoomPublicMsg roomPublicMsg, h hVar) {
            super(1);
            this.f54128a = roomPublicMsg;
            this.f54129b = hVar;
        }

        public final void a(@m8.g CharSequence it) {
            Intrinsics.checkNotNullParameter(it, "it");
            ((UserPublicMsg) this.f54128a).setCharSequence(it);
            this.f54129b.f54111f.setText(((UserPublicMsg) this.f54128a).getCharSequence());
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(CharSequence charSequence) {
            a(charSequence);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: PublicChatHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$j", "Lcom/qennnsad/aknkaksd/util/j1$c;", "Landroid/view/View;", "widget", "", "onClick", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class j extends j1.c {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ h f54130c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f54131d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(int i4, h hVar, Ref.IntRef intRef) {
            super(i4, true);
            this.f54130c = hVar;
            this.f54131d = intRef;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@m8.g View widget) {
            Intrinsics.checkNotNullParameter(widget, "widget");
            f.b x9 = this.f54130c.x();
            if (x9 != null) {
                x9.a(this.f54131d.element);
            }
        }
    }

    /* compiled from: PublicChatHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$k", "Lcom/qennnsad/aknkaksd/util/j1$c;", "Landroid/view/View;", "p0", "", "onClick", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class k extends j1.c {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ChatNotificationEntity f54132c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ h f54133d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(ChatNotificationEntity chatNotificationEntity, h hVar) {
            super(0, false, 3, null);
            this.f54132c = chatNotificationEntity;
            this.f54133d = hVar;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@m8.g View p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            String target = this.f54132c.getTarget();
            if (Intrinsics.areEqual(target, io.sentry.protocol.b.f83634d)) {
                this.f54133d.f54111f.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.f54132c.getUrl())));
            } else if (Intrinsics.areEqual(target, io.sentry.protocol.a.f83616j)) {
                SimpleWebViewActivity.a aVar = SimpleWebViewActivity.f52046l;
                Context context = this.f54133d.f54111f.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "tvContent.context");
                String url = this.f54132c.getUrl();
                if (url == null) {
                    return;
                }
                SimpleWebViewActivity.a.d(aVar, context, url, false, false, 6, null);
            }
        }
    }

    /* compiled from: PublicChatHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$l", "Lcom/qennnsad/aknkaksd/util/j1$c;", "Landroid/view/View;", "p0", "", "onClick", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class l extends j1.c {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ ChatNotificationEntity f54135d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(ChatNotificationEntity chatNotificationEntity) {
            super(0, false, 3, null);
            this.f54135d = chatNotificationEntity;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@m8.g View p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            f.a v9 = h.this.v();
            if (v9 != null) {
                v9.a(this.f54135d.getJump(), this.f54135d.getJumpId(), this.f54135d.getJumpUserIsMystery());
            }
        }
    }

    /* compiled from: PublicChatHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0010\u0010\u0005\u001a\f\u0012\u0006\b\u0000\u0012\u00020\u0002\u0018\u00010\u0004H\u0016J\u0012\u0010\n\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$m", "Lcom/bumptech/glide/request/target/e;", "Landroid/graphics/Bitmap;", "resource", "Lcom/bumptech/glide/request/transition/f;", "transition", "", "b", "Landroid/graphics/drawable/Drawable;", "placeholder", "k", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class m extends com.bumptech.glide.request.target.e<Bitmap> {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ TextView f54136d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ h f54137e;

        m(TextView textView, h hVar) {
            this.f54136d = textView;
            this.f54137e = hVar;
        }

        @Override // com.bumptech.glide.request.target.p
        /* renamed from: b */
        public void q(@m8.g Bitmap resource, @m8.h com.bumptech.glide.request.transition.f<? super Bitmap> fVar) {
            Intrinsics.checkNotNullParameter(resource, "resource");
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(resource, (resource.getWidth() / resource.getHeight()) * this.f54136d.getLineHeight(), this.f54136d.getLineHeight(), false);
            TextView textView = this.f54137e.f54111f;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("1 ");
            spannableStringBuilder.setSpan(new j1.a(this.f54136d.getContext(), createScaledBitmap, 0, 4, null), 0, 1, 33);
            Unit unit = Unit.INSTANCE;
            textView.setText(TextUtils.concat(spannableStringBuilder, this.f54137e.f54111f.getText()));
        }

        @Override // com.bumptech.glide.request.target.p
        public void k(@m8.h Drawable drawable) {
        }
    }

    /* compiled from: PublicChatHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$n", "Landroid/text/style/ClickableSpan;", "Landroid/view/View;", "widget", "", "onClick", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class n extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f54138a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h f54139b;

        n(String str, h hVar) {
            this.f54138a = str;
            this.f54139b = hVar;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@m8.g View widget) {
            String str;
            boolean startsWith$default;
            int indexOf$default;
            Integer intOrNull;
            Intrinsics.checkNotNullParameter(widget, "widget");
            o0.g(com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c.f54074q, "onclick:" + this.f54138a);
            String str2 = this.f54138a;
            Intrinsics.checkNotNullExpressionValue(str2, "str");
            str = StringsKt__StringsJVMKt.replace$default(str2, p.a.f93050d, "%26", false, 4, (Object) null);
            Intrinsics.checkNotNullExpressionValue(str, "str");
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, "/personalInfoLiveRoom", false, 2, null);
            if (startsWith$default) {
                Intrinsics.checkNotNullExpressionValue(str, "str");
                indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, "id=", 0, false, 6, (Object) null);
                Intrinsics.checkNotNullExpressionValue(str, "str");
                String substring = str.substring(indexOf$default + 3, str.length());
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(substring);
                if (intOrNull != null) {
                    intOrNull.intValue();
                    Function2<UserInfo, BaseUserInfoDialog.UserType, Unit> w9 = this.f54139b.w();
                    if (w9 != null) {
                        UserInfo userInfo = new UserInfo();
                        userInfo.setId(substring);
                        w9.invoke(userInfo, BaseUserInfoDialog.UserType.COMMON);
                        return;
                    }
                    return;
                }
                return;
            }
            widget.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(@m8.g g5.a localDataManager, @m8.g View itemView, @m8.g com.qennnsad.aknkaksd.util.translation.h translatorRapid) {
        super(itemView);
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(translatorRapid, "translatorRapid");
        this.f54106a = localDataManager;
        this.f54107b = translatorRapid;
        View findViewById = itemView.findViewById(R.id.item_public_chat_tv);
        Intrinsics.checkNotNull(findViewById, "null cannot be cast to non-null type android.widget.TextView");
        this.f54111f = (TextView) findViewById;
        this.f54112g = ((f5.d) dagger.hilt.c.a(itemView.getContext().getApplicationContext(), f5.d.class)).c().d();
    }

    private final void A(ChatNotification chatNotification) {
        Object styleSpan;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(chatNotification.getContent());
        List<ChatNotificationEntity> entities = chatNotification.getEntities();
        ArrayList<ChatNotificationEntity> arrayList = new ArrayList();
        Iterator<T> it = entities.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            ChatNotificationEntity chatNotificationEntity = (ChatNotificationEntity) next;
            if (chatNotificationEntity.getOffset() + chatNotificationEntity.getLength() <= chatNotification.getContent().length()) {
                arrayList.add(next);
            }
        }
        for (ChatNotificationEntity chatNotificationEntity2 : arrayList) {
            int i4 = a.$EnumSwitchMapping$0[chatNotificationEntity2.getType().ordinal()];
            if (i4 == 1) {
                styleSpan = new StyleSpan(1);
            } else if (i4 == 2) {
                styleSpan = new StyleSpan(2);
            } else if (i4 == 3) {
                styleSpan = new ForegroundColorSpan(Color.parseColor(chatNotificationEntity2.getColor()));
            } else if (i4 == 4) {
                styleSpan = new k(chatNotificationEntity2, this);
            } else if (i4 != 5) {
                throw new NoWhenBranchMatchedException();
            } else {
                styleSpan = new l(chatNotificationEntity2);
            }
            spannableStringBuilder.setSpan(styleSpan, chatNotificationEntity2.getOffset(), chatNotificationEntity2.getOffset() + chatNotificationEntity2.getLength(), 18);
        }
        TextView textView = this.f54111f;
        String background = chatNotification.getBackground();
        if (background != null) {
            try {
                textView.setBackgroundResource(R.drawable.room_pubchat_shape_tintable);
                textView.setBackgroundTintList(ColorStateList.valueOf(Color.parseColor(background)));
            } catch (Exception unused) {
            }
        }
        textView.setTypeface(null, 0);
        textView.setTextColor(ContextCompat.getColor(textView.getContext(), R.color.white));
        textView.setText(spannableStringBuilder);
        String icon = chatNotification.getIcon();
        if (icon != null) {
            com.bumptech.glide.c.E(textView.getContext()).v().b(icon).h1(new m(textView, this));
        }
    }

    private final SpannableStringBuilder E(String str) {
        if (!TextUtils.isEmpty(str)) {
            o0.g(com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c.f54074q, "!isEmpty()");
            Spanned c10 = j1.c(str == null ? "" : str);
            if (c10 instanceof SpannableStringBuilder) {
                o0.g(com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c.f54074q, "SpannableStringBuilder()");
                URLSpan[] uRLSpanArr = (URLSpan[]) c10.getSpans(0, c10.length(), URLSpan.class);
                if (uRLSpanArr != null && uRLSpanArr.length != 0) {
                    o0.g(com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c.f54074q, "objs.length!=0");
                    Iterator it = ArrayIteratorKt.iterator(uRLSpanArr);
                    while (it.hasNext()) {
                        URLSpan uRLSpan = (URLSpan) it.next();
                        o0.g(com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c.f54074q, "obj");
                        int spanStart = c10.getSpanStart(uRLSpan);
                        int spanEnd = c10.getSpanEnd(uRLSpan);
                        if (uRLSpan instanceof URLSpan) {
                            String url = uRLSpan.getURL();
                            o0.g(com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c.f54074q, "URLSpan--" + url + "--start:" + spanStart + "--end:" + spanEnd);
                            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) c10;
                            spannableStringBuilder.removeSpan(uRLSpan);
                            spannableStringBuilder.setSpan(new n(url, this), spanStart, spanEnd, 18);
                        }
                    }
                }
                return (SpannableStringBuilder) c10;
            }
        }
        o0.g(com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c.f54074q, "isEmpty()");
        Spanned fromHtml = Html.fromHtml(str);
        Intrinsics.checkNotNull(fromHtml, "null cannot be cast to non-null type android.text.SpannableStringBuilder");
        return (SpannableStringBuilder) fromHtml;
    }

    private final CharSequence f(SendGiftNewsMsg sendGiftNewsMsg) {
        int indexOf$default;
        int indexOf$default2;
        com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c cVar = this.f54112g;
        CharSequence content = TextUtils.concat(this.f54112g.f(), this.f54112g.j(sendGiftNewsMsg.getTitle()), this.f54112g.m(sendGiftNewsMsg.getFromUserDesc()), sendGiftNewsMsg.getFromUserName(), this.f54112g.m("给主播"), sendGiftNewsMsg.getToUserName(), cVar.m("送出" + sendGiftNewsMsg.getGiftCount() + (char) 20010), sendGiftNewsMsg.getGiftName(), this.f54112g.m("(点此围观)"));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(content);
        b bVar = new b(sendGiftNewsMsg, this);
        Intrinsics.checkNotNullExpressionValue(content, "content");
        indexOf$default = StringsKt__StringsKt.indexOf$default(content, sendGiftNewsMsg.getFromUserName(), 0, false, 6, (Object) null);
        spannableStringBuilder.setSpan(bVar, indexOf$default, sendGiftNewsMsg.getFromUserName().length() + indexOf$default, 18);
        c cVar2 = new c(sendGiftNewsMsg, this);
        indexOf$default2 = StringsKt__StringsKt.indexOf$default(content, sendGiftNewsMsg.getToUserName(), 0, false, 6, (Object) null);
        spannableStringBuilder.setSpan(cVar2, indexOf$default2, sendGiftNewsMsg.getToUserName().length() + indexOf$default2, 18);
        return spannableStringBuilder;
    }

    private final CharSequence g(SendGiftMsg sendGiftMsg) {
        CharSequence h4 = this.f54112g.h(sendGiftMsg.getLevel());
        CharSequence k10 = this.f54112g.k(sendGiftMsg.getFrom_user_peerage_id());
        if (h4 == null) {
            h4 = "";
        }
        CharSequence concat = TextUtils.concat(k10, " ", h4, this.f54112g.q(sendGiftMsg.getFromUserName()), this.f54112g.m(this.f54111f.getContext().getString(R.string.room_live_msg_sendone, String.valueOf(sendGiftMsg.getGiftCount()))), sendGiftMsg.getGiftName());
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n            peer…   msg.giftName\n        )");
        return concat;
    }

    private final CharSequence h(LegendHallWinMsg legendHallWinMsg) {
        int indexOf$default;
        CharSequence charSequence = TextUtils.concat(this.f54112g.e(), this.f54112g.j(legendHallWinMsg.getTitle()), this.f54112g.m("恭喜"), this.f54112g.g(legendHallWinMsg.getUserNickname()), this.f54112g.m("在"), this.f54112g.g(legendHallWinMsg.getScene()), this.f54112g.m("赢得"), this.f54112g.g(String.valueOf(legendHallWinMsg.getAmount())), this.f54112g.m("元"));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        Intrinsics.checkNotNullExpressionValue(charSequence, "charSequence");
        indexOf$default = StringsKt__StringsKt.indexOf$default(charSequence, legendHallWinMsg.getUserNickname(), 0, false, 6, (Object) null);
        spannableStringBuilder.setSpan(new d(legendHallWinMsg, this), indexOf$default, legendHallWinMsg.getUserNickname().length() + indexOf$default, 33);
        return spannableStringBuilder;
    }

    private final CharSequence i(LegendProfitMsg legendProfitMsg) {
        CharSequence concat = TextUtils.concat(this.f54112g.e(), this.f54112g.j(legendProfitMsg.getTitle()), this.f54112g.m("恭喜您获得游戏分成收益"), String.valueOf(legendProfitMsg.getAmount()), this.f54112g.m("元"));
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n            game…MsgContent(\"元\")\n        )");
        return concat;
    }

    private final CharSequence j(LegendWinMsg legendWinMsg) {
        int indexOf$default;
        int indexOf$default2;
        CharSequence charSequence = TextUtils.concat(this.f54112g.e(), this.f54112g.j(legendWinMsg.getTitle()), this.f54112g.m("恭喜主播"), this.f54112g.g(legendWinMsg.getAnchorNickname()), this.f54112g.m("的粉丝"), this.f54112g.g(legendWinMsg.getUserNickname()), this.f54112g.m("在"), this.f54112g.g(legendWinMsg.getScene()), this.f54112g.m("赢得"), this.f54112g.g(String.valueOf(legendWinMsg.getAmount())), this.f54112g.m("元"));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        e eVar = new e(legendWinMsg, this);
        Intrinsics.checkNotNullExpressionValue(charSequence, "charSequence");
        indexOf$default = StringsKt__StringsKt.indexOf$default(charSequence, legendWinMsg.getAnchorNickname(), 0, false, 6, (Object) null);
        spannableStringBuilder.setSpan(eVar, indexOf$default, legendWinMsg.getAnchorNickname().length() + indexOf$default, 33);
        f fVar = new f(legendWinMsg, this);
        indexOf$default2 = StringsKt__StringsKt.indexOf$default(charSequence, legendWinMsg.getUserNickname(), 0, false, 6, (Object) null);
        spannableStringBuilder.setSpan(fVar, indexOf$default2, legendWinMsg.getUserNickname().length() + indexOf$default2, 33);
        return spannableStringBuilder;
    }

    private final CharSequence k(NameCardNews nameCardNews) {
        CharSequence concat = TextUtils.concat(this.f54112g.i(), this.f54112g.j(nameCardNews.getTitle()), this.f54112g.m("恭喜"), nameCardNews.getFromUserName(), this.f54112g.m("收到主播名片"));
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n            name…ntent(\"收到主播名片\")\n        )");
        return concat;
    }

    private final CharSequence l(PeerageProfitMsg peerageProfitMsg) {
        CharSequence concat = TextUtils.concat(this.f54112g.j(peerageProfitMsg.getTitle()), this.f54112g.m("恭喜您获得"), this.f54112g.m(peerageProfitMsg.getName()), peerageProfitMsg.getAmount(), this.f54112g.m(peerageProfitMsg.getUnit()));
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n            msgU…ntent(msg.unit)\n        )");
        return concat;
    }

    private final CharSequence m(PeerageJoinMsg peerageJoinMsg) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(TextUtils.concat(this.f54112g.j(peerageJoinMsg.getTitle()), this.f54112g.m("恭喜"), peerageJoinMsg.getNickname(), this.f54112g.m(peerageJoinMsg.getDesc()), peerageJoinMsg.getPeerageName()));
        int length = peerageJoinMsg.getTitle().length() + 2;
        spannableStringBuilder.setSpan(new g(peerageJoinMsg, this), length, peerageJoinMsg.getNickname().length() + length, 33);
        return spannableStringBuilder;
    }

    private final CharSequence n(SystemMsg systemMsg) {
        CharSequence concat = TextUtils.concat(this.f54112g.n(systemMsg.getContent()));
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n            msgU…nt(msg.content)\n        )");
        return concat;
    }

    private final CharSequence o(UpdateRoleBean updateRoleBean) {
        CharSequence concat = TextUtils.concat(this.f54112g.n(updateRoleBean.getContent()));
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n            msgU…nt(msg.content)\n        )");
        return concat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CharSequence p(UserPublicMsg userPublicMsg) {
        k1 k1Var;
        k1.a i4;
        int collectionSizeOrDefault;
        CharSequence h4 = this.f54112g.h(userPublicMsg.getLevel());
        CharSequence k10 = this.f54112g.k(userPublicMsg.getFromUserPeerageId());
        CharSequence a10 = this.f54112g.a(userPublicMsg.getFromUserRole());
        String concat = TextUtils.isEmpty(h4) ? "" : TextUtils.concat(h4, "");
        String concat2 = TextUtils.isEmpty(k10) ? "" : TextUtils.concat(k10, "");
        String concat3 = TextUtils.isEmpty(a10) ? "" : TextUtils.concat(a10, "");
        CharSequence b10 = this.f54112g.b(userPublicMsg.getFanclubNickname(), userPublicMsg.getFanLevel());
        CharSequence concat4 = TextUtils.concat(b10, concat, concat2, concat3);
        CharSequence q9 = this.f54112g.q(userPublicMsg.getFromClientName());
        CharSequence concat5 = TextUtils.concat(concat4, q9);
        CharSequence fullNoGradient = TextUtils.concat(concat5, this.f54112g.m(userPublicMsg.getContent()));
        if (!TextUtils.isEmpty(b10) && (i4 = (k1Var = k1.f54783a).i(this.f54111f)) != null) {
            Intrinsics.checkNotNullExpressionValue(fullNoGradient, "fullNoGradient");
            List<CharSequence> h10 = k1Var.h(fullNoGradient, i4);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(h10, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            int i10 = 0;
            for (Object obj : h10) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                arrayList.add(this.f54112g.d(((CharSequence) obj).toString(), userPublicMsg.getFanLevel()));
                i10 = i11;
            }
            j1.e.a aVar = j1.e.f54771f;
            Object[] array = arrayList.toArray(new CharSequence[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            CharSequence[] charSequenceArr = (CharSequence[]) array;
            CharSequence concat6 = TextUtils.concat((CharSequence[]) Arrays.copyOf(charSequenceArr, charSequenceArr.length));
            Intrinsics.checkNotNullExpressionValue(concat6, "concat(*gradients.toTypedArray())");
            CharSequence concat7 = TextUtils.concat(concat4, q9, aVar.a(concat6, concat5.toString(), ""));
            Intrinsics.checkNotNullExpressionValue(concat7, "concat(\n                …dsFinal\n                )");
            return concat7;
        }
        Intrinsics.checkNotNullExpressionValue(fullNoGradient, "fullNoGradient");
        return fullNoGradient;
    }

    private final void q(UserPublicMsg userPublicMsg, Function1<? super CharSequence, Unit> function1) {
        if (!this.f54106a.K()) {
            function1.invoke(p(userPublicMsg));
        } else if (userPublicMsg.getAlreadyTranslated()) {
            function1.invoke(p(userPublicMsg));
        } else {
            String content = userPublicMsg.getContent();
            UserBean C = this.f54106a.C();
            boolean z9 = true;
            this.f54107b.a(content, (C == null || !b5.a.i(C)) ? false : false ? Translator.Direction.JA : Translator.Direction.ZH, new C0450h(userPublicMsg, function1, this));
        }
    }

    private final CharSequence r(SystemWelcome systemWelcome) {
        CharSequence h4 = this.f54112g.h(systemWelcome.getLevelid());
        CharSequence k10 = this.f54112g.k(systemWelcome.getFrom_user_peerage_id());
        if (h4 == null) {
            h4 = "";
        }
        CharSequence concat = TextUtils.concat(k10, " ", h4, this.f54112g.o(systemWelcome.getClient_name()), this.f54112g.p(this.f54111f.getContext().getString(R.string.room_live_msg_myroom)));
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n            peer…ve_msg_myroom))\n        )");
        return concat;
    }

    private final void s(boolean z9) {
        if (z9 && this.itemView.getVisibility() != 0) {
            this.itemView.setVisibility(0);
            this.itemView.setLayoutParams(new RecyclerView.LayoutParams(-2, -2));
        }
        if (z9 || this.itemView.getVisibility() != 0) {
            return;
        }
        this.itemView.setVisibility(8);
        this.itemView.setLayoutParams(new RecyclerView.LayoutParams(0, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(h this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RecyclerView.Adapter<? extends RecyclerView.ViewHolder> bindingAdapter = this$0.getBindingAdapter();
        if (bindingAdapter != null) {
            bindingAdapter.notifyItemChanged(this$0.getBindingAdapterPosition());
        }
    }

    public final void B(@m8.h f.a aVar) {
        this.f54110e = aVar;
    }

    public final void C(@m8.h Function2<? super UserInfo, ? super BaseUserInfoDialog.UserType, Unit> function2) {
        this.f54109d = function2;
    }

    public final void D(@m8.h f.b bVar) {
        this.f54108c = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0112  */
    /* JADX WARN: Type inference failed for: r10v37, types: [android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v15, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v16, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v17, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v18, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v19, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v20, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.CharSequence[]] */
    @Override // com.qennnsad.aknkaksd.presentation.ui.base.recycler.b
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(@m8.h com.qennnsad.aknkaksd.data.bean.websocket.RoomPublicMsg r10) {
        /*
            Method dump skipped, instructions count: 517
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.h.b(com.qennnsad.aknkaksd.data.bean.websocket.RoomPublicMsg):void");
    }

    @m8.h
    public final f.a v() {
        return this.f54110e;
    }

    @m8.h
    public final Function2<UserInfo, BaseUserInfoDialog.UserType, Unit> w() {
        return this.f54109d;
    }

    @m8.h
    public final f.b x() {
        return this.f54108c;
    }

    @m8.g
    public final g5.a y() {
        return this.f54106a;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.util.translation.h z() {
        return this.f54107b;
    }
}
