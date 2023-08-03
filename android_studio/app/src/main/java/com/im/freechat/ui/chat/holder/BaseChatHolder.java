package com.im.freechat.ui.chat.holder;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.style.StyleSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.Group;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.google.android.exoplayer2.k2;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.im.freechat.shared.entities.DownloadInfo;
import com.im.freechat.shared.entities.contact.Sender;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.shared.entities.message.MessageStyle;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import org.koin.core.Koin;
import org.koin.core.component.a;
import timber.log.Timber;

/* compiled from: BaseChatHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000º\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010&\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0006\u0010?\u001a\u00020<\u0012\u0006\u0010C\u001a\u00020\u0005¢\u0006\u0006\b\u0091\u0001\u0010\u0092\u0001J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\tH\u0002J \u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\f\u0010\u001b\u001a\u00020\u0007*\u00020\u001aH\u0003J\u001a\u0010\u001e\u001a\u00020\u00072\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00070\u001cJ(\u0010!\u001a\u00020\u00072 \u0010\u001d\u001a\u001c\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0006\u0012\u0004\u0018\u00010 0\u001f\u0012\u0004\u0012\u00020\u00070\u001cJ \u0010$\u001a\u00020\u00072\u0018\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00070\"J\u001a\u0010&\u001a\u00020\u00072\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00070\u001cJ\"\u0010'\u001a\u00020\u00072\u001a\u0010\u001d\u001a\u0016\u0012\u0004\u0012\u00020\u0016\u0012\u0006\u0012\u0004\u0018\u00010%\u0012\u0004\u0012\u00020\u00070\"J\u001a\u0010(\u001a\u00020\u00072\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00070\u001cJ\u001c\u0010,\u001a\u00020\u00072\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020*0)H\u0016J\u0010\u0010/\u001a\n .*\u0004\u0018\u00010-0-H\u0004J\u0010\u00101\u001a\u00020\u00072\b\b\u0002\u00100\u001a\u00020\u0005J(\u00105\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\b\u00102\u001a\u0004\u0018\u00010\t2\u0006\u00103\u001a\u00020\u00162\u0006\u00104\u001a\u00020\u0005J\u0010\u00106\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016J*\u00107\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\b\u00102\u001a\u0004\u0018\u00010\t2\u0006\u00103\u001a\u00020\u00162\u0006\u00104\u001a\u00020\u0005H\u0014J\u0016\u00109\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u00162\u0006\u00108\u001a\u00020\u0016J\u0006\u0010:\u001a\u00020\u0007J\u0014\u0010;\u001a\u00020\u0007*\u00020\u001a2\u0006\u0010\n\u001a\u00020\tH\u0004R\u0014\u0010?\u001a\u00020<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u001a\u0010C\u001a\u00020\u00058\u0004X\u0084\u0004¢\u0006\f\n\u0004\b@\u00101\u001a\u0004\bA\u0010BR\u0017\u0010G\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\bD\u00106\u001a\u0004\bE\u0010FR\u0017\u0010J\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\bH\u00106\u001a\u0004\bI\u0010FR\u001b\u0010P\u001a\u00020K8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010OR\"\u0010U\u001a\u00020\u00058\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bQ\u00101\u001a\u0004\bR\u0010B\"\u0004\bS\u0010TR>\u0010\\\u001a\u001e\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0006\u0012\u0004\u0018\u00010 0\u001f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001c8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bV\u0010W\u001a\u0004\bX\u0010Y\"\u0004\bZ\u0010[RT\u0010f\u001a4\u0012\u0013\u0012\u00110 ¢\u0006\f\b]\u0012\b\b^\u0012\u0004\b\b(_\u0012\u0013\u0012\u00110#¢\u0006\f\b]\u0012\b\b^\u0012\u0004\b\b(`\u0012\u0004\u0012\u00020\u0007\u0018\u00010\"8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010a\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR0\u0010j\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001c8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bg\u0010W\u001a\u0004\bh\u0010Y\"\u0004\bi\u0010[R$\u0010l\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010WR,\u0010n\u001a\u0018\u0012\u0004\u0012\u00020\u0016\u0012\u0006\u0012\u0004\u0018\u00010%\u0012\u0004\u0012\u00020\u0007\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010aR$\u0010p\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010WR0\u0010s\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010W\u001a\u0004\bq\u0010Y\"\u0004\br\u0010[R&\u0010v\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020*0)0t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010uR$\u0010~\u001a\u0004\u0018\u00010w8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bx\u0010y\u001a\u0004\bz\u0010{\"\u0004\b|\u0010}R\u0015\u0010\u0080\u0001\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u007f\u0010BR\u0016\u0010\u0082\u0001\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0081\u0001\u0010BR\u0016\u0010\u0084\u0001\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0083\u0001\u0010BR\u0017\u0010\u0087\u0001\u001a\u00020<8&X¦\u0004¢\u0006\b\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0019\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u001a8&X¦\u0004¢\u0006\b\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001R\u0019\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u001a8&X¦\u0004¢\u0006\b\u001a\u0006\b\u008b\u0001\u0010\u0089\u0001R\u001a\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008d\u00018&X¦\u0004¢\u0006\b\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001¨\u0006\u0093\u0001"}, d2 = {"Lcom/im/freechat/ui/chat/holder/BaseChatHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lorg/koin/core/component/a;", "Lcom/im/freechat/shared/entities/contact/Sender;", "sender", "", "nextMessageSenderIsTheSame", "", "G", "Lcom/im/freechat/shared/entities/message/Message;", "message", y.b.f83920h, "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "messageWrapper", "r", "text", "Landroid/text/SpannableStringBuilder;", "J", "", "charSequence", "Landroid/text/TextPaint;", "textPaint", "", "width", "Landroid/text/StaticLayout;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroid/widget/TextView;", "p0", "Lkotlin/Function1;", "l", "k0", "", "", "i0", "Lkotlin/Function2;", "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;", "w0", "", "u0", "n0", "j0", "", "Lcom/im/freechat/shared/entities/DownloadInfo;", "downloadInfos", "h0", "Landroid/content/Context;", "kotlin.jvm.PlatformType", "M", "keepState", "Z", "prev", "position", "selectionMode", ExifInterface.LONGITUDE_EAST, "I", "F", "itemsCount", "q", "x0", "v0", "Landroid/view/View;", "a", "Landroid/view/View;", "v", "b", "d0", "()Z", "isGroup", "g", ExifInterface.LATITUDE_SOUTH, "()I", "MEDIA_GRID_WIDTH", "h", "R", "MEDIA_GRID_MAX_HEIGHT", "Lcom/im/freechat/utils/f;", ContextChain.TAG_INFRA, "Lkotlin/Lazy;", "N", "()Lcom/im/freechat/utils/f;", "downloadUtil", "j", ExifInterface.LONGITUDE_WEST, "t0", "(Z)V", "preProcessing", "k", "Lkotlin/jvm/functions/Function1;", "Q", "()Lkotlin/jvm/functions/Function1;", "r0", "(Lkotlin/jvm/functions/Function1;)V", "mAtSomeOneClickListener", "Lkotlin/ParameterName;", "name", "url", TypedValues.Attributes.S_TARGET, "Lkotlin/jvm/functions/Function2;", ExifInterface.GPS_DIRECTION_TRUE, "()Lkotlin/jvm/functions/Function2;", "s0", "(Lkotlin/jvm/functions/Function2;)V", "mUrlClickListener", "m", "K", "l0", "binnaryCallback", "n", "mQuoteClickCallback", "o", "mForwardClickCallback", "p", "avatarClickListener", "P", "o0", "longClickListener", "Landroidx/lifecycle/Observer;", "Landroidx/lifecycle/Observer;", "observer", "Landroid/animation/ValueAnimator;", "s", "Landroid/animation/ValueAnimator;", "L", "()Landroid/animation/ValueAnimator;", "m0", "(Landroid/animation/ValueAnimator;)V", "colorAnimator", "c0", "isChannel", "f0", "isMediaGroupCell", "e0", "isMe", "U", "()Landroid/view/View;", "messageContent", "Y", "()Landroid/widget/TextView;", "tvTextContent", "X", "tvEditTag", "Landroid/widget/ImageView;", "O", "()Landroid/widget/ImageView;", "ivPreview", "<init>", "(Landroid/view/View;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class BaseChatHolder extends RecyclerView.ViewHolder implements org.koin.core.component.a {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final View f42927a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f42928b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private final f4.d0 f42929c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private final f4.e0 f42930d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private final f4.f0 f42931e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private final f4.g0 f42932f;

    /* renamed from: g  reason: collision with root package name */
    private final int f42933g;

    /* renamed from: h  reason: collision with root package name */
    private final int f42934h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final Lazy f42935i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f42936j;
    @m8.h

    /* renamed from: k  reason: collision with root package name */
    private Function1<? super Map.Entry<Integer, String>, Unit> f42937k;
    @m8.h

    /* renamed from: l  reason: collision with root package name */
    private Function2<? super String, ? super MessageStyle.StyleUrlTarget, Unit> f42938l;
    @m8.h

    /* renamed from: m  reason: collision with root package name */
    private Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> f42939m;
    @m8.h

    /* renamed from: n  reason: collision with root package name */
    private Function1<? super Long, Unit> f42940n;
    @m8.h

    /* renamed from: o  reason: collision with root package name */
    private Function2<? super Integer, ? super Long, Unit> f42941o;
    @m8.h

    /* renamed from: p  reason: collision with root package name */
    private Function1<? super Integer, Unit> f42942p;
    @m8.h

    /* renamed from: q  reason: collision with root package name */
    private Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> f42943q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private final Observer<Map<Long, DownloadInfo>> f42944r;
    @m8.h

    /* renamed from: s  reason: collision with root package name */
    private ValueAnimator f42945s;

    /* compiled from: BaseChatHolder.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Message.MessageStatus.values().length];
            iArr[Message.MessageStatus.SENDING.ordinal()] = 1;
            iArr[Message.MessageStatus.SEND_FAILED.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[MessageStyle.StyleType.values().length];
            iArr2[MessageStyle.StyleType.BOLD.ordinal()] = 1;
            iArr2[MessageStyle.StyleType.URL.ordinal()] = 2;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseChatHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "it", "a", "(Lkotlin/Unit;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function1<Unit, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f42949a = new b();

        b() {
            super(1);
        }

        public final void a(@m8.g Unit it) {
            Intrinsics.checkNotNullParameter(it, "it");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Unit unit) {
            a(unit);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseChatHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "<anonymous parameter 0>", "a", "(Lkotlin/Unit;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<Unit, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map.Entry<Integer, String> f42951b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Map.Entry<Integer, String> entry) {
            super(1);
            this.f42951b = entry;
        }

        public final void a(@m8.g Unit unit) {
            Intrinsics.checkNotNullParameter(unit, "<anonymous parameter 0>");
            Timber.f93860a.a("Text mention span click", new Object[0]);
            Function1<Map.Entry<Integer, String>, Unit> Q = BaseChatHolder.this.Q();
            if (Q != null) {
                Q.invoke(this.f42951b);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Unit unit) {
            a(unit);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseChatHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "<anonymous parameter 0>", "a", "(Lkotlin/Unit;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function1<Unit, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MessageStyle f42953b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(MessageStyle messageStyle) {
            super(1);
            this.f42953b = messageStyle;
        }

        public final void a(@m8.g Unit unit) {
            Intrinsics.checkNotNullParameter(unit, "<anonymous parameter 0>");
            Function2<String, MessageStyle.StyleUrlTarget, Unit> T = BaseChatHolder.this.T();
            if (T != null) {
                String url = this.f42953b.getUrl();
                Intrinsics.checkNotNull(url);
                MessageStyle.StyleUrlTarget urlTarget = this.f42953b.getUrlTarget();
                Intrinsics.checkNotNull(urlTarget);
                T.invoke(url, urlTarget);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Unit unit) {
            a(unit);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseChatHolder(@m8.g View v9, boolean z9) {
        super(v9);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(v9, "v");
        this.f42927a = v9;
        this.f42928b = z9;
        this.f42929c = (c0() || f0()) ? null : f4.d0.a(v9);
        this.f42930d = e0() ? f4.e0.a(v9) : null;
        this.f42931e = (e0() || c0() || f0()) ? null : f4.f0.a(v9);
        this.f42932f = (c0() || f0()) ? null : f4.g0.a(v9);
        this.f42933g = (int) M().getResources().getDimension(b.g.f1425v3);
        Context M = M();
        Intrinsics.checkNotNullExpressionValue(M, "getContext()");
        this.f42934h = (com.im.freechat.extend.f.v(M) * 2) / 5;
        lazy = LazyKt__LazyJVMKt.lazy(d9.b.f62011a.b(), (Function0) new BaseChatHolder$special$$inlined$inject$default$1(this, null, null));
        this.f42935i = lazy;
        this.f42944r = new Observer() { // from class: com.im.freechat.ui.chat.holder.j
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BaseChatHolder.g0(BaseChatHolder.this, (Map) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(BaseChatHolder this$0, Message this_with, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Function1<? super Long, Unit> function1 = this$0.f42940n;
        if (function1 != null) {
            function1.invoke(Long.valueOf(this_with.getMessageId()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(BaseChatHolder this$0, Message this_with, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Function1<? super Long, Unit> function1 = this$0.f42940n;
        if (function1 != null) {
            function1.invoke(Long.valueOf(this_with.getMessageId()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(BaseChatHolder this$0, Message this_with, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Function1<? super Long, Unit> function1 = this$0.f42940n;
        if (function1 != null) {
            function1.invoke(Long.valueOf(this_with.getMessageId()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(BaseChatHolder this$0, int i4, Long l10, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function2<? super Integer, ? super Long, Unit> function2 = this$0.f42941o;
        if (function2 != null) {
            function2.invoke(Integer.valueOf(i4), l10);
        }
    }

    private final void G(final Sender sender, boolean z9) {
        char first;
        String capitalize;
        f4.f0 f0Var = this.f42931e;
        if (f0Var != null) {
            if (this.f42928b) {
                String displayName = sender.getDisplayName();
                FrameLayout flAvatar = f0Var.f65500b;
                Intrinsics.checkNotNullExpressionValue(flAvatar, "flAvatar");
                flAvatar.setVisibility(z9 ? 4 : 0);
                TextView textView = f0Var.f65502d;
                first = StringsKt___StringsKt.first(displayName);
                capitalize = StringsKt__StringsJVMKt.capitalize(String.valueOf(first));
                textView.setText(capitalize);
                f0Var.f65502d.setBackgroundTintList(ColorStateList.valueOf(com.im.freechat.extend.r.a(displayName)));
                f0Var.f65500b.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.holder.o
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        BaseChatHolder.H(BaseChatHolder.this, sender, view);
                    }
                });
                String avatar = sender.getAvatar();
                if (avatar != null) {
                    ImageView ivIcon = f0Var.f65501c;
                    Intrinsics.checkNotNullExpressionValue(ivIcon, "ivIcon");
                    ivIcon.setVisibility(0);
                    ImageView ivIcon2 = f0Var.f65501c;
                    Intrinsics.checkNotNullExpressionValue(ivIcon2, "ivIcon");
                    com.im.freechat.extend.m.o(ivIcon2, avatar);
                    return;
                }
                ImageView ivIcon3 = f0Var.f65501c;
                Intrinsics.checkNotNullExpressionValue(ivIcon3, "ivIcon");
                ivIcon3.setVisibility(8);
                return;
            }
            FrameLayout flAvatar2 = f0Var.f65500b;
            Intrinsics.checkNotNullExpressionValue(flAvatar2, "flAvatar");
            flAvatar2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(BaseChatHolder this$0, Sender sender, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(sender, "$sender");
        Function1<? super Integer, Unit> function1 = this$0.f42942p;
        if (function1 != null) {
            function1.invoke(Integer.valueOf(sender.getUserId()));
        }
    }

    private final SpannableStringBuilder J(Message message) {
        Object styleSpan;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) message.getContent());
        if (message.getMentionAll()) {
            spannableStringBuilder.setSpan(new com.im.freechat.utils.d(b.f42949a, ContextCompat.getColor(M(), b.f.P1), false, 4, null), spannableStringBuilder.length() - 4, spannableStringBuilder.length(), 17);
        }
        Map<Integer, String> mentions = message.getMentions();
        if (mentions != null) {
            for (Map.Entry<Integer, String> entry : mentions.entrySet()) {
                String str = '@' + entry.getValue();
                String content = message.getContent();
                int indexOf$default = content != null ? StringsKt__StringsKt.indexOf$default((CharSequence) content, str, 0, false, 6, (Object) null) : -1;
                if (indexOf$default >= 0) {
                    spannableStringBuilder.setSpan(new com.im.freechat.utils.d(new c(entry), ContextCompat.getColor(M(), b.f.P1), false, 4, null), indexOf$default, str.length() + indexOf$default, 17);
                }
            }
        }
        List<MessageStyle> messageStyles = message.getMessageStyles();
        if (messageStyles != null) {
            ArrayList<MessageStyle> arrayList = new ArrayList();
            Iterator<T> it = messageStyles.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                MessageStyle messageStyle = (MessageStyle) next;
                int offset = messageStyle.getOffset() + messageStyle.getLength();
                String content2 = message.getContent();
                if (offset <= (content2 != null ? content2.length() : 0)) {
                    arrayList.add(next);
                }
            }
            for (MessageStyle messageStyle2 : arrayList) {
                int i4 = a.$EnumSwitchMapping$1[messageStyle2.getType().ordinal()];
                if (i4 == 1) {
                    styleSpan = new StyleSpan(1);
                } else if (i4 != 2) {
                    throw new NoWhenBranchMatchedException();
                } else {
                    styleSpan = new com.im.freechat.utils.d(new d(messageStyle2), ContextCompat.getColor(M(), b.f.P1), true);
                }
                spannableStringBuilder.setSpan(styleSpan, messageStyle2.getOffset(), messageStyle2.getOffset() + messageStyle2.getLength(), 18);
            }
        }
        return spannableStringBuilder;
    }

    private final StaticLayout V(CharSequence charSequence, TextPaint textPaint, int i4) {
        return new StaticLayout(charSequence, textPaint, i4, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
    }

    public static /* synthetic */ void a0(BaseChatHolder baseChatHolder, boolean z9, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: highlightViewBackground");
        }
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        baseChatHolder.Z(z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(BaseChatHolder this$0, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        View view = this$0.itemView;
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        view.setBackgroundColor(((Integer) animatedValue).intValue());
    }

    private final boolean c0() {
        return (this instanceof p0) || (this instanceof o0);
    }

    private final boolean e0() {
        return this instanceof j0;
    }

    private final boolean f0() {
        return (this instanceof b0) || (this instanceof t0) || (this instanceof y);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void g0(BaseChatHolder this$0, Map map) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (map == null) {
            map = MapsKt__MapsKt.emptyMap();
        }
        this$0.h0(map);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private final void p0(TextView textView) {
        textView.setOnTouchListener(i.f43002a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean q0(View view, MotionEvent motionEvent) {
        int i4 = b.j.fh;
        Object tag = view.getTag(i4);
        boolean areEqual = Intrinsics.areEqual(tag instanceof Boolean ? (Boolean) tag : null, Boolean.TRUE);
        if (motionEvent.getAction() == 1 && areEqual) {
            view.setTag(i4, Boolean.FALSE);
            return true;
        }
        if (motionEvent.getAction() == 0) {
            view.setTag(i4, Boolean.FALSE);
        }
        return view.onTouchEvent(motionEvent);
    }

    private final void r(final com.im.freechat.ui.chat.chatdetails.messagelist.d dVar) {
        if (c0()) {
            return;
        }
        this.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.im.freechat.ui.chat.holder.g
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean s9;
                s9 = BaseChatHolder.s(BaseChatHolder.this, dVar, view);
                return s9;
            }
        });
        ImageView O = O();
        if (O != null) {
            O.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.im.freechat.ui.chat.holder.s
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean t9;
                    t9 = BaseChatHolder.t(BaseChatHolder.this, dVar, view);
                    return t9;
                }
            });
        }
        View U = U();
        U.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.im.freechat.ui.chat.holder.h
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean u9;
                u9 = BaseChatHolder.u(BaseChatHolder.this, dVar, view);
                return u9;
            }
        });
        U.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.holder.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseChatHolder.v(BaseChatHolder.this, view);
            }
        });
        final TextView Y = Y();
        if (Y != null) {
            Y.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.holder.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseChatHolder.w(Y, this, view);
                }
            });
            Y.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.im.freechat.ui.chat.holder.f
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean x9;
                    x9 = BaseChatHolder.x(BaseChatHolder.this, dVar, view);
                    return x9;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean s(BaseChatHolder this$0, com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(messageWrapper, "$messageWrapper");
        Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> function1 = this$0.f42943q;
        if (function1 != null) {
            function1.invoke(messageWrapper);
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean t(BaseChatHolder this$0, com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(messageWrapper, "$messageWrapper");
        Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> function1 = this$0.f42943q;
        if (function1 != null) {
            function1.invoke(messageWrapper);
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean u(BaseChatHolder this$0, com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(messageWrapper, "$messageWrapper");
        Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> function1 = this$0.f42943q;
        if (function1 != null) {
            function1.invoke(messageWrapper);
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(BaseChatHolder this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.itemView.performClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(TextView this_apply, BaseChatHolder this$0, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this_apply.getSelectionStart() == -1 && this_apply.getSelectionEnd() == -1) {
            this$0.itemView.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean x(BaseChatHolder this$0, com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(messageWrapper, "$messageWrapper");
        Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> function1 = this$0.f42943q;
        if (function1 != null) {
            function1.invoke(messageWrapper);
            return true;
        }
        return true;
    }

    private final void y(Message message) {
        int i4;
        f4.g0 g0Var = this.f42932f;
        if (g0Var != null) {
            Context M = M();
            if (this instanceof z) {
                i4 = b.f.U1;
            } else if (this instanceof a0) {
                i4 = b.f.Y1;
            } else {
                i4 = message.getSender().isCurrentUser() ? b.f.W1 : b.f.f1043a2;
            }
            int color = ContextCompat.getColor(M, i4);
            boolean z9 = true;
            if (com.im.freechat.extend.p.x(message)) {
                Group quoteGroup = g0Var.f65512c;
                Intrinsics.checkNotNullExpressionValue(quoteGroup, "quoteGroup");
                quoteGroup.setVisibility(8);
                ImageView quotePreview = g0Var.f65513d;
                Intrinsics.checkNotNullExpressionValue(quotePreview, "quotePreview");
                quotePreview.setVisibility(8);
                Group forwardGroup = g0Var.f65511b;
                Intrinsics.checkNotNullExpressionValue(forwardGroup, "forwardGroup");
                forwardGroup.setVisibility(0);
                final Long forwardMessageId = message.getForwardMessageId();
                Sender forwardMessageSender = message.getForwardMessageSender();
                Intrinsics.checkNotNull(forwardMessageSender);
                Integer forwardMessageChatId = message.getForwardMessageChatId();
                Intrinsics.checkNotNull(forwardMessageChatId);
                final int intValue = forwardMessageChatId.intValue();
                TextView textView = g0Var.f65515f;
                SpannableStringBuilder append = new SpannableStringBuilder().append((CharSequence) textView.getContext().getString(b.s.f2402u0));
                Intrinsics.checkNotNullExpressionValue(append, "SpannableStringBuilder()…_details_forwarded_from))");
                StyleSpan styleSpan = new StyleSpan(1);
                int length = append.length();
                append.append((CharSequence) (' ' + forwardMessageSender.getDisplayName()));
                append.setSpan(styleSpan, length, append.length(), 17);
                textView.setText(append);
                Intrinsics.checkNotNullExpressionValue(textView, "");
                com.im.freechat.utils.v.d(textView, com.im.freechat.extend.m.m(forwardMessageSender.getManagementRole()), false, false, true, false, 22, null);
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.holder.n
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        BaseChatHolder.D(BaseChatHolder.this, intValue, forwardMessageId, view);
                    }
                });
                textView.setTextColor(color);
                TextView textView2 = g0Var.f65516g;
                textView2.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.holder.m
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        BaseChatHolder.z(BaseChatHolder.this, intValue, forwardMessageId, view);
                    }
                });
                textView2.setTextColor(color);
            } else if (message.getRepliedMessage() != null) {
                Group forwardGroup2 = g0Var.f65511b;
                Intrinsics.checkNotNullExpressionValue(forwardGroup2, "forwardGroup");
                forwardGroup2.setVisibility(8);
                Group quoteGroup2 = g0Var.f65512c;
                Intrinsics.checkNotNullExpressionValue(quoteGroup2, "quoteGroup");
                quoteGroup2.setVisibility(0);
                final Message repliedMessage = message.getRepliedMessage();
                Intrinsics.checkNotNull(repliedMessage);
                Context context = this.f42927a.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "v.context");
                String d4 = com.im.freechat.extend.p.d(repliedMessage, context);
                TextView textView3 = g0Var.f65518i;
                textView3.setText(repliedMessage.getSender().getDisplayName());
                Intrinsics.checkNotNullExpressionValue(textView3, "");
                com.im.freechat.utils.v.d(textView3, com.im.freechat.extend.m.m(repliedMessage.getSender().getManagementRole()), false, false, true, false, 22, null);
                textView3.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.holder.p
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        BaseChatHolder.A(BaseChatHolder.this, repliedMessage, view);
                    }
                });
                textView3.setTextColor(color);
                TextView textView4 = g0Var.f65517h;
                textView4.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.holder.q
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        BaseChatHolder.B(BaseChatHolder.this, repliedMessage, view);
                    }
                });
                textView4.setText(d4);
                textView4.setTextColor(color);
                g0Var.f65514e.setBackgroundColor(color);
                ImageView imageView = g0Var.f65513d;
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.holder.r
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        BaseChatHolder.C(BaseChatHolder.this, repliedMessage, view);
                    }
                });
                Intrinsics.checkNotNullExpressionValue(imageView, "");
                if (com.im.freechat.extend.p.B(repliedMessage)) {
                    com.im.freechat.extend.m.s(imageView, com.im.freechat.extend.p.i(com.im.freechat.extend.p.H(repliedMessage)), 0.0f, true, 0, 10, null);
                } else if (com.im.freechat.extend.p.t(repliedMessage)) {
                    ImageView quotePreview2 = g0Var.f65513d;
                    Intrinsics.checkNotNullExpressionValue(quotePreview2, "quotePreview");
                    com.im.freechat.extend.m.s(quotePreview2, com.im.freechat.extend.p.h(com.im.freechat.extend.p.G(repliedMessage)), 0.0f, true, 0, 10, null);
                } else if (com.im.freechat.extend.p.s(repliedMessage)) {
                    ImageView quotePreview3 = g0Var.f65513d;
                    Intrinsics.checkNotNullExpressionValue(quotePreview3, "quotePreview");
                    com.im.freechat.extend.m.s(quotePreview3, com.im.freechat.extend.p.k(com.im.freechat.extend.p.F(repliedMessage)), 0.0f, true, 0, 10, null);
                } else if (com.im.freechat.extend.p.r(repliedMessage)) {
                    ImageView quotePreview4 = g0Var.f65513d;
                    Intrinsics.checkNotNullExpressionValue(quotePreview4, "quotePreview");
                    com.im.freechat.extend.m.s(quotePreview4, com.im.freechat.extend.p.k(com.im.freechat.extend.p.E(repliedMessage)), 0.0f, true, 0, 10, null);
                } else {
                    z9 = false;
                }
                imageView.setVisibility(z9 ? 0 : 8);
            } else {
                Group quoteGroup3 = g0Var.f65512c;
                Intrinsics.checkNotNullExpressionValue(quoteGroup3, "quoteGroup");
                quoteGroup3.setVisibility(8);
                ImageView quotePreview5 = g0Var.f65513d;
                Intrinsics.checkNotNullExpressionValue(quotePreview5, "quotePreview");
                quotePreview5.setVisibility(8);
                Group forwardGroup3 = g0Var.f65511b;
                Intrinsics.checkNotNullExpressionValue(forwardGroup3, "forwardGroup");
                forwardGroup3.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(BaseChatHolder this$0, int i4, Long l10, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Function2<? super Integer, ? super Long, Unit> function2 = this$0.f42941o;
        if (function2 != null) {
            function2.invoke(Integer.valueOf(i4), l10);
        }
    }

    public final void E(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, @m8.h Message message, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        F(messageWrapper, message, i4, z9);
        N().h().observeForever(this.f42944r);
        ValueAnimator valueAnimator = this.f42945s;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void F(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, @m8.h Message message, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        G(messageWrapper.i().getSender(), messageWrapper.l());
        I(messageWrapper.i());
        y(messageWrapper.i());
        r(messageWrapper);
        boolean z10 = true;
        if (messageWrapper.j()) {
            Z(true);
        } else {
            View view = this.itemView;
            view.setBackgroundColor(ContextCompat.getColor(view.getContext(), 17170445));
        }
        TextView Y = Y();
        if (Y != null) {
            v0(Y, messageWrapper.i());
            Y.setTextColor(ContextCompat.getColor(Y.getContext(), messageWrapper.i().getSender().isCurrentUser() ? b.f.V1 : b.f.Z1));
        }
        f4.d0 d0Var = this.f42929c;
        if (d0Var != null) {
            TextView textView = d0Var.f65467d;
            textView.setText(com.im.freechat.extend.m.g(messageWrapper.i().getSendTime()));
            Intrinsics.checkNotNullExpressionValue(textView, "");
            if (message != null && !com.im.freechat.extend.m.f(message.getSendTime(), Long.valueOf(messageWrapper.i().getSendTime()))) {
                z10 = false;
            }
            textView.setVisibility(z10 ? 0 : 8);
            FrameLayout cbSelect = d0Var.f65466c;
            Intrinsics.checkNotNullExpressionValue(cbSelect, "cbSelect");
            cbSelect.setVisibility(z9 ? 0 : 8);
            d0Var.f65465b.setChecked(messageWrapper.j());
        }
    }

    public void I(@m8.g Message message) {
        Intrinsics.checkNotNullParameter(message, "message");
        f4.d0 d0Var = this.f42929c;
        TextView textView = d0Var != null ? d0Var.f65468e : null;
        if (textView != null) {
            textView.setText(com.im.freechat.extend.f.p(message.getSendTime()));
        }
        f4.e0 e0Var = this.f42930d;
        if (e0Var != null) {
            int i4 = a.$EnumSwitchMapping$0[message.getMessageStatus().ordinal()];
            if (i4 == 1) {
                e0Var.f65486d.setVisibility(0);
                e0Var.f65484b.setVisibility(8);
                e0Var.f65485c.setImageResource(b.h.D5);
            } else if (i4 != 2) {
                e0Var.f65486d.setVisibility(8);
                e0Var.f65484b.setVisibility(8);
                e0Var.f65485c.setImageResource(message.getMessageStatus() != Message.MessageStatus.HAVE_READ ? b.h.E5 : b.h.C5);
            } else {
                e0Var.f65486d.setVisibility(8);
                e0Var.f65484b.setVisibility(0);
                e0Var.f65485c.setImageResource(b.h.B5);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.h
    public final Function1<com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> K() {
        return this.f42939m;
    }

    @m8.h
    public final ValueAnimator L() {
        return this.f42945s;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Context M() {
        return this.f42927a.getContext();
    }

    @m8.g
    public final com.im.freechat.utils.f N() {
        return (com.im.freechat.utils.f) this.f42935i.getValue();
    }

    @m8.h
    public abstract ImageView O();

    @m8.h
    public final Function1<com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> P() {
        return this.f42943q;
    }

    @m8.h
    protected final Function1<Map.Entry<Integer, String>, Unit> Q() {
        return this.f42937k;
    }

    public final int R() {
        return this.f42934h;
    }

    public final int S() {
        return this.f42933g;
    }

    @m8.h
    protected final Function2<String, MessageStyle.StyleUrlTarget, Unit> T() {
        return this.f42938l;
    }

    @m8.g
    public abstract View U();

    protected final boolean W() {
        return this.f42936j;
    }

    @m8.h
    public abstract TextView X();

    @m8.h
    public abstract TextView Y();

    public final void Z(boolean z9) {
        int color = ContextCompat.getColor(this.f42927a.getContext(), b.f.X1);
        if (z9) {
            this.itemView.setBackgroundColor(color);
            return;
        }
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(color), Integer.valueOf(ContextCompat.getColor(this.itemView.getContext(), 17170445)));
        this.f42945s = ofObject;
        if (ofObject != null) {
            ofObject.setDuration(k2.f23783i1);
        }
        ValueAnimator valueAnimator = this.f42945s;
        if (valueAnimator != null) {
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.im.freechat.ui.chat.holder.e
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    BaseChatHolder.b0(BaseChatHolder.this, valueAnimator2);
                }
            });
        }
        ValueAnimator valueAnimator2 = this.f42945s;
        if (valueAnimator2 != null) {
            valueAnimator2.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean d0() {
        return this.f42928b;
    }

    @Override // org.koin.core.component.a
    @m8.g
    public Koin getKoin() {
        return a.C0815a.a(this);
    }

    public void h0(@m8.g Map<Long, DownloadInfo> downloadInfos) {
        Intrinsics.checkNotNullParameter(downloadInfos, "downloadInfos");
    }

    public final void i0(@m8.g Function1<? super Map.Entry<Integer, String>, Unit> l10) {
        Intrinsics.checkNotNullParameter(l10, "l");
        this.f42937k = l10;
    }

    public final void j0(@m8.g Function1<? super Integer, Unit> l10) {
        Intrinsics.checkNotNullParameter(l10, "l");
        this.f42942p = l10;
    }

    public final void k0(@m8.g Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> l10) {
        Intrinsics.checkNotNullParameter(l10, "l");
        this.f42939m = l10;
    }

    protected final void l0(@m8.h Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> function1) {
        this.f42939m = function1;
    }

    public final void m0(@m8.h ValueAnimator valueAnimator) {
        this.f42945s = valueAnimator;
    }

    public final void n0(@m8.g Function2<? super Integer, ? super Long, Unit> l10) {
        Intrinsics.checkNotNullParameter(l10, "l");
        this.f42941o = l10;
    }

    public final void o0(@m8.h Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> function1) {
        this.f42943q = function1;
    }

    public final void q(int i4, int i10) {
        float f10;
        float f11;
        int ceil;
        ViewGroup.LayoutParams layoutParams = this.f42927a.getLayoutParams();
        FlexboxLayoutManager.LayoutParams layoutParams2 = layoutParams instanceof FlexboxLayoutManager.LayoutParams ? (FlexboxLayoutManager.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            int i11 = i10 > 4 ? 3 : 2;
            int i12 = i10 % i11;
            if (i12 == 0) {
                i12 = i11;
            }
            if (!((i10 - i12) - i4 <= 0)) {
                f10 = this.f42933g;
                f11 = i11;
            } else {
                f10 = this.f42933g;
                f11 = i12;
            }
            ((ViewGroup.MarginLayoutParams) layoutParams2).width = (int) ((f10 / f11) * 0.9f);
            if (i10 == 2) {
                ceil = this.f42934h / 2;
            } else {
                ceil = this.f42934h / ((int) Math.ceil(i10 / i11));
            }
            ((ViewGroup.MarginLayoutParams) layoutParams2).height = ceil;
            ImageView O = O();
            if (O != null) {
                O.getLayoutParams().width = -1;
                O.getLayoutParams().height = -1;
            }
            layoutParams2.setFlexShrink(1.0f);
            layoutParams2.setFlexGrow(1.0f);
        }
    }

    protected final void r0(@m8.h Function1<? super Map.Entry<Integer, String>, Unit> function1) {
        this.f42937k = function1;
    }

    protected final void s0(@m8.h Function2<? super String, ? super MessageStyle.StyleUrlTarget, Unit> function2) {
        this.f42938l = function2;
    }

    protected final void t0(boolean z9) {
        this.f42936j = z9;
    }

    public final void u0(@m8.g Function1<? super Long, Unit> l10) {
        Intrinsics.checkNotNullParameter(l10, "l");
        this.f42940n = l10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void v0(@m8.g TextView textView, @m8.g Message message) {
        String string;
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        String content = message.getContent();
        if (content == null || content.length() == 0) {
            textView.setVisibility(8);
            TextView X = X();
            if (X == null) {
                return;
            }
            X.setVisibility(8);
            return;
        }
        Resources resources = textView.getContext().getResources();
        int dimension = (int) resources.getDimension(b.g.f1405t3);
        int dimension2 = (int) resources.getDimension(b.g.f1415u3);
        SpannableStringBuilder J = J(message);
        if (c0()) {
            string = com.im.freechat.extend.f.p(message.getSendTime());
        } else {
            string = resources.getString(b.s.f2332n0);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.activity_chat_details_edited)");
        }
        if (!com.im.freechat.extend.p.w(message) && !c0()) {
            TextView X2 = X();
            if (X2 != null) {
                X2.setVisibility(8);
            }
            textView.setText(J);
            textView.setPadding(dimension, dimension2, dimension, dimension2);
            return;
        }
        TextView X3 = X();
        if (X3 != null) {
            X3.setVisibility(0);
        }
        TextView X4 = X();
        if (X4 != null) {
            X4.setText(string);
        }
        TextView X5 = X();
        float desiredWidth = StaticLayout.getDesiredWidth(string, X5 != null ? X5.getPaint() : null) + com.im.freechat.extend.s.a(dimension / 2);
        if (StaticLayout.getDesiredWidth(J, textView.getPaint()) + desiredWidth + dimension <= textView.getMaxWidth()) {
            textView.setPadding(dimension, dimension2, (int) desiredWidth, dimension2);
        } else {
            textView.setPadding(dimension, dimension2, dimension, dimension2);
            TextPaint paint = textView.getPaint();
            Intrinsics.checkNotNullExpressionValue(paint, "paint");
            StaticLayout V = V(J, paint, textView.getMaxWidth() - (dimension * 2));
            if (V.getLineWidth(V.getLineCount() - 1) + desiredWidth + (dimension * 3) >= textView.getMaxWidth()) {
                if (V.getLineCount() == 1) {
                    J.append("\n");
                } else {
                    J.append("                 ");
                }
            }
        }
        textView.setMovementMethod(new g0(t.a()));
        p0(textView);
        textView.setText(J);
    }

    public final void w0(@m8.g Function2<? super String, ? super MessageStyle.StyleUrlTarget, Unit> l10) {
        Intrinsics.checkNotNullParameter(l10, "l");
        this.f42938l = l10;
    }

    public final void x0() {
        N().h().removeObserver(this.f42944r);
    }
}
