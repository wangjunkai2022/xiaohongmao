package com.im.freechat.ui.chat.chatdetails.messagelist;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.ListAdapter;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.extend.p;
import com.im.freechat.shared.entities.message.AudioAttachment;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.shared.entities.message.MessageStyle;
import com.im.freechat.ui.chat.holder.BaseChatHolder;
import com.im.freechat.ui.chat.holder.a0;
import com.im.freechat.ui.chat.holder.e0;
import com.im.freechat.ui.chat.holder.f0;
import com.im.freechat.ui.chat.holder.m0;
import com.im.freechat.ui.chat.holder.n0;
import com.im.freechat.ui.chat.holder.o0;
import com.im.freechat.ui.chat.holder.r0;
import com.im.freechat.ui.chat.holder.s0;
import com.im.freechat.ui.chat.holder.w;
import com.im.freechat.ui.chat.holder.x;
import com.im.freechat.ui.chat.holder.y0;
import com.im.freechat.ui.chat.holder.z;
import f4.a1;
import f4.b0;
import f4.c0;
import f4.i0;
import f4.j0;
import f4.k0;
import f4.l0;
import f4.p0;
import f4.t0;
import f4.u0;
import f4.v0;
import f4.w0;
import f4.z0;
import io.sentry.protocol.y;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ObservableProperty;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import timber.log.Timber;

/* compiled from: ChatDetailsAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010&\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\b\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\bU\u0010VJ\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0003H\u0016J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0004H\u0016J\u0018\u0010\u0010\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u001c\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0013\u001a\u0004\b\u001a\u0010\u0015\"\u0004\b\u001b\u0010\u0017R+\u0010\"\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00118V@VX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010\u0015\"\u0004\b!\u0010\u0017R4\u0010+\u001a\u0014\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R6\u0010/\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\n\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010&\u001a\u0004\b-\u0010(\"\u0004\b.\u0010*R0\u00107\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n\u0018\u0001008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R0\u0010;\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n\u0018\u0001008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00102\u001a\u0004\b9\u00104\"\u0004\b:\u00106R0\u0010>\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n\u0018\u0001008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u00102\u001a\u0004\b<\u00104\"\u0004\b=\u00106R0\u0010B\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0018\u0001008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u00102\u001a\u0004\b@\u00104\"\u0004\bA\u00106R>\u0010F\u001a\u001e\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010D0C\u0012\u0004\u0012\u00020\n\u0018\u0001008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u00102\u001a\u0004\b,\u00104\"\u0004\bE\u00106RT\u0010N\u001a4\u0012\u0013\u0012\u00110D¢\u0006\f\bG\u0012\b\bH\u0012\u0004\b\b(I\u0012\u0013\u0012\u00110J¢\u0006\f\bG\u0012\b\bH\u0012\u0004\b\b(K\u0012\u0004\u0012\u00020\n\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010&\u001a\u0004\bL\u0010(\"\u0004\bM\u0010*R8\u0010P\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\n\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010&\u001a\u0004\b?\u0010(\"\u0004\bO\u0010*R0\u0010R\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n\u0018\u0001008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u00102\u001a\u0004\b1\u00104\"\u0004\bQ\u00106R0\u0010T\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0018\u0001008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u00102\u001a\u0004\b8\u00104\"\u0004\bS\u00106¨\u0006W"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;", "", "position", "", "getItemId", "getItemViewType", "holder", "", "v", "Landroid/view/ViewGroup;", "parent", "viewType", "u", "s", "", "a", "Z", "q", "()Z", "C", "(Z)V", "isGroup", "b", "p", "z", "isChannel", "<set-?>", "c", "Lkotlin/properties/ReadWriteProperty;", "r", "I", "isSelectionModeOn", "Lkotlin/Function2;", "Lcom/im/freechat/shared/entities/message/AudioAttachment;", "d", "Lkotlin/jvm/functions/Function2;", "l", "()Lkotlin/jvm/functions/Function2;", "F", "(Lkotlin/jvm/functions/Function2;)V", "onAudioSeek", "e", "m", "G", "onItemSelect", "Lkotlin/Function1;", "f", "Lkotlin/jvm/functions/Function1;", "k", "()Lkotlin/jvm/functions/Function1;", ExifInterface.LONGITUDE_EAST, "(Lkotlin/jvm/functions/Function1;)V", "itemClickListener", "g", "h", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "failedClickListener", "j", "D", "itemBinaryClickListener", ContextChain.TAG_INFRA, "n", "H", "quoteClickListener", "", "", "w", "atSomeOneClickListener", "Lkotlin/ParameterName;", "name", "url", "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;", TypedValues.Attributes.S_TARGET, "o", "J", "urlClickListener", "B", "forwardClickListener", y.b.f83919g, "avatarClickListener", y.b.f83920h, "cancelDownload", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public class b extends ListAdapter<com.im.freechat.ui.chat.chatdetails.messagelist.d, BaseChatHolder> {

    /* renamed from: o  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f42595o = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(b.class, "isSelectionModeOn", "isSelectionModeOn()Z", 0))};

    /* renamed from: a  reason: collision with root package name */
    private boolean f42596a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f42597b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final ReadWriteProperty f42598c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private Function2<? super AudioAttachment, ? super Integer, Unit> f42599d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private Function2<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, ? super Boolean, Unit> f42600e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> f42601f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> f42602g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> f42603h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private Function1<? super Long, Unit> f42604i;
    @m8.h

    /* renamed from: j  reason: collision with root package name */
    private Function1<? super Map.Entry<Integer, String>, Unit> f42605j;
    @m8.h

    /* renamed from: k  reason: collision with root package name */
    private Function2<? super String, ? super MessageStyle.StyleUrlTarget, Unit> f42606k;
    @m8.h

    /* renamed from: l  reason: collision with root package name */
    private Function2<? super Integer, ? super Long, Unit> f42607l;
    @m8.h

    /* renamed from: m  reason: collision with root package name */
    private Function1<? super Integer, Unit> f42608m;
    @m8.h

    /* renamed from: n  reason: collision with root package name */
    private Function1<? super Long, Unit> f42609n;

    /* compiled from: ChatDetailsAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/im/freechat/shared/entities/message/AudioAttachment;", "imMessage", "", ContextChain.TAG_INFRA, "", "a", "(Lcom/im/freechat/shared/entities/message/AudioAttachment;I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function2<AudioAttachment, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f42610a = new a();

        a() {
            super(2);
        }

        public final void a(@m8.g AudioAttachment imMessage, int i4) {
            Intrinsics.checkNotNullParameter(imMessage, "imMessage");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(AudioAttachment audioAttachment, Integer num) {
            a(audioAttachment, num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "it", "", "a", "(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V"}, k = 3, mv = {1, 7, 1})
    /* renamed from: com.im.freechat.ui.chat.chatdetails.messagelist.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0348b extends Lambda implements Function1<com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.im.freechat.ui.chat.chatdetails.messagelist.d f42611a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f42612b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0348b(com.im.freechat.ui.chat.chatdetails.messagelist.d dVar, b bVar) {
            super(1);
            this.f42611a = dVar;
            this.f42612b = bVar;
        }

        public final void a(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d it) {
            Function2<com.im.freechat.ui.chat.chatdetails.messagelist.d, Boolean, Unit> m9;
            Intrinsics.checkNotNullParameter(it, "it");
            if (!this.f42611a.i().getMessageStatus().isSent() || (m9 = this.f42612b.m()) == null) {
                return;
            }
            com.im.freechat.ui.chat.chatdetails.messagelist.d dVar = this.f42611a;
            m9.invoke(dVar, Boolean.valueOf(!dVar.j()));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(com.im.freechat.ui.chat.chatdetails.messagelist.d dVar) {
            a(dVar);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "it", "", "a", "(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> {
        c() {
            super(1);
        }

        public final void a(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (it.i().getMessageStatus().isSent()) {
                if (b.this.r()) {
                    Function2<com.im.freechat.ui.chat.chatdetails.messagelist.d, Boolean, Unit> m9 = b.this.m();
                    if (m9 != null) {
                        m9.invoke(it, Boolean.valueOf(!it.j()));
                        return;
                    }
                    return;
                }
                Function1<com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> j4 = b.this.j();
                if (j4 != null) {
                    j4.invoke(it);
                }
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(com.im.freechat.ui.chat.chatdetails.messagelist.d dVar) {
            a(dVar);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(J)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function1<Long, Unit> {
        d() {
            super(1);
        }

        public final void a(long j4) {
            Function1<Long, Unit> n9 = b.this.n();
            if (n9 != null) {
                n9.invoke(Long.valueOf(j4));
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Long l10) {
            a(l10.longValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", k4.b.f84734a, "", "messageId", "", "a", "(ILjava/lang/Long;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function2<Integer, Long, Unit> {
        e() {
            super(2);
        }

        public final void a(int i4, @m8.h Long l10) {
            Function2<Integer, Long, Unit> i10 = b.this.i();
            if (i10 != null) {
                i10.invoke(Integer.valueOf(i4), l10);
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Integer num, Long l10) {
            a(num.intValue(), l10);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0010&\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0014\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "", "", "s", "", "a", "(Ljava/util/Map$Entry;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function1<Map.Entry<? extends Integer, ? extends String>, Unit> {
        f() {
            super(1);
        }

        public final void a(@m8.g Map.Entry<Integer, String> s9) {
            Intrinsics.checkNotNullParameter(s9, "s");
            Function1<Map.Entry<Integer, String>, Unit> e4 = b.this.e();
            if (e4 != null) {
                e4.invoke(s9);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Map.Entry<? extends Integer, ? extends String> entry) {
            a(entry);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "s", "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;", "styleUrlTarget", "", "a", "(Ljava/lang/String;Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class g extends Lambda implements Function2<String, MessageStyle.StyleUrlTarget, Unit> {
        g() {
            super(2);
        }

        public final void a(@m8.g String s9, @m8.g MessageStyle.StyleUrlTarget styleUrlTarget) {
            Intrinsics.checkNotNullParameter(s9, "s");
            Intrinsics.checkNotNullParameter(styleUrlTarget, "styleUrlTarget");
            Function2<String, MessageStyle.StyleUrlTarget, Unit> o9 = b.this.o();
            if (o9 != null) {
                o9.invoke(s9, styleUrlTarget);
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(String str, MessageStyle.StyleUrlTarget styleUrlTarget) {
            a(str, styleUrlTarget);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatDetailsAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class h extends Lambda implements Function1<Integer, Unit> {
        h() {
            super(1);
        }

        public final void a(int i4) {
            Function1<Integer, Unit> f10 = b.this.f();
            if (f10 != null) {
                f10.invoke(Integer.valueOf(i4));
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: Delegates.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J+\u0010\u0007\u001a\u00020\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t¸\u0006\u0000"}, d2 = {"kotlin/properties/Delegates$observable$1", "Lkotlin/properties/ObservableProperty;", "Lkotlin/reflect/KProperty;", "property", "oldValue", "newValue", "", "afterChange", "(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class i extends ObservableProperty<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f42619a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(Object obj, b bVar) {
            super(obj);
            this.f42619a = bVar;
        }

        @Override // kotlin.properties.ObservableProperty
        protected void afterChange(@m8.g KProperty<?> property, Boolean bool, Boolean bool2) {
            Intrinsics.checkNotNullParameter(property, "property");
            if (bool.booleanValue() != bool2.booleanValue()) {
                b bVar = this.f42619a;
                bVar.notifyItemRangeChanged(0, bVar.getCurrentList().size());
            }
        }
    }

    public b() {
        super(com.im.freechat.ui.chat.chatdetails.messagelist.c.a());
        Delegates delegates = Delegates.INSTANCE;
        this.f42598c = new i(Boolean.FALSE, this);
        this.f42599d = a.f42610a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(com.im.freechat.ui.chat.chatdetails.messagelist.d msgWrap, b this$0, View view) {
        Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> function1;
        Intrinsics.checkNotNullParameter(msgWrap, "$msgWrap");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (msgWrap.i().getMessageStatus().isSent()) {
            if (this$0.r()) {
                Function2<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, ? super Boolean, Unit> function2 = this$0.f42600e;
                if (function2 != null) {
                    function2.invoke(msgWrap, Boolean.valueOf(!msgWrap.j()));
                }
            } else {
                Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> function12 = this$0.f42601f;
                if (function12 != null) {
                    function12.invoke(msgWrap);
                }
            }
        }
        if (msgWrap.i().getMessageStatus() != Message.MessageStatus.SEND_FAILED || this$0.r() || (function1 = this$0.f42602g) == null) {
            return;
        }
        function1.invoke(msgWrap);
    }

    public final void A(@m8.h Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> function1) {
        this.f42602g = function1;
    }

    public final void B(@m8.h Function2<? super Integer, ? super Long, Unit> function2) {
        this.f42607l = function2;
    }

    public final void C(boolean z9) {
        this.f42596a = z9;
    }

    public final void D(@m8.h Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> function1) {
        this.f42603h = function1;
    }

    public final void E(@m8.h Function1<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> function1) {
        this.f42601f = function1;
    }

    public final void F(@m8.g Function2<? super AudioAttachment, ? super Integer, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.f42599d = function2;
    }

    public final void G(@m8.h Function2<? super com.im.freechat.ui.chat.chatdetails.messagelist.d, ? super Boolean, Unit> function2) {
        this.f42600e = function2;
    }

    public final void H(@m8.h Function1<? super Long, Unit> function1) {
        this.f42604i = function1;
    }

    public void I(boolean z9) {
        this.f42598c.setValue(this, f42595o[0], Boolean.valueOf(z9));
    }

    public final void J(@m8.h Function2<? super String, ? super MessageStyle.StyleUrlTarget, Unit> function2) {
        this.f42606k = function2;
    }

    @m8.h
    public final Function1<Map.Entry<Integer, String>, Unit> e() {
        return this.f42605j;
    }

    @m8.h
    public final Function1<Integer, Unit> f() {
        return this.f42608m;
    }

    @m8.h
    public final Function1<Long, Unit> g() {
        return this.f42609n;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i4) {
        return a5.a.a(getItem(i4).i().getMessageId());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i4) {
        Message i10 = getItem(i4).i();
        if (p.z(i10)) {
            return 14;
        }
        if (i10.getSender().isCurrentUser() && p.A(i10)) {
            return 1;
        }
        if (i10.getSender().isCurrentUser() && p.t(i10)) {
            return 3;
        }
        if (i10.getSender().isCurrentUser() && (p.s(i10) || p.r(i10))) {
            return 17;
        }
        if (i10.getSender().isCurrentUser() && p.B(i10)) {
            return 15;
        }
        if (i10.getSender().isCurrentUser() && p.q(i10)) {
            return 11;
        }
        if (i10.getSender().isCurrentUser() && p.p(i10)) {
            return 5;
        }
        if (i10.getSender().isCurrentUser() && p.y(i10)) {
            return 19;
        }
        if (this.f42597b) {
            return 21;
        }
        if (p.A(i10)) {
            return 2;
        }
        if (p.t(i10)) {
            return 4;
        }
        if (p.s(i10) || p.r(i10)) {
            return 18;
        }
        if (p.B(i10)) {
            return 16;
        }
        if (p.q(i10)) {
            return 12;
        }
        if (p.p(i10)) {
            return 6;
        }
        if (p.y(i10)) {
            return 20;
        }
        Timber.b bVar = Timber.f93860a;
        bVar.d("weird message: " + i10, new Object[0]);
        throw new IllegalStateException("Unexpected message".toString());
    }

    @m8.h
    public final Function1<com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> h() {
        return this.f42602g;
    }

    @m8.h
    public final Function2<Integer, Long, Unit> i() {
        return this.f42607l;
    }

    @m8.h
    public final Function1<com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> j() {
        return this.f42603h;
    }

    @m8.h
    public final Function1<com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> k() {
        return this.f42601f;
    }

    @m8.g
    public final Function2<AudioAttachment, Integer, Unit> l() {
        return this.f42599d;
    }

    @m8.h
    public final Function2<com.im.freechat.ui.chat.chatdetails.messagelist.d, Boolean, Unit> m() {
        return this.f42600e;
    }

    @m8.h
    public final Function1<Long, Unit> n() {
        return this.f42604i;
    }

    @m8.h
    public final Function2<String, MessageStyle.StyleUrlTarget, Unit> o() {
        return this.f42606k;
    }

    public final boolean p() {
        return this.f42597b;
    }

    public final boolean q() {
        return this.f42596a;
    }

    public boolean r() {
        return ((Boolean) this.f42598c.getValue(this, f42595o[0])).booleanValue();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: s */
    public void onBindViewHolder(@m8.g BaseChatHolder holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        com.im.freechat.ui.chat.chatdetails.messagelist.d item = getItem(i4);
        if (item != null) {
            final com.im.freechat.ui.chat.chatdetails.messagelist.d dVar = item;
            int i10 = i4 + 1;
            Message i11 = i10 < getItemCount() ? getItem(i10).i() : null;
            com.im.freechat.ui.chat.chatdetails.messagelist.d item2 = getItem(i4);
            Intrinsics.checkNotNullExpressionValue(item2, "getItem(position)");
            holder.E(item2, i11, i4, r());
            holder.o0(new C0348b(dVar, this));
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.chatdetails.messagelist.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    b.t(d.this, this, view);
                }
            });
            holder.k0(new c());
            holder.u0(new d());
            holder.n0(new e());
            holder.i0(new f());
            holder.w0(new g());
            holder.j0(new h());
            return;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: u */
    public BaseChatHolder onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        switch (i4) {
            case 1:
                v0 d4 = v0.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.f….context), parent, false)");
                return new r0(d4, this.f42596a);
            case 2:
                w0 d10 = w0.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d10, "inflate(LayoutInflater.f….context), parent, false)");
                return new s0(d10, this.f42596a);
            case 3:
                k0 d11 = k0.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d11, "inflate(LayoutInflater.f….context), parent, false)");
                return new e0(d11, this.f42596a);
            case 4:
                l0 d12 = l0.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d12, "inflate(LayoutInflater.f….context), parent, false)");
                return new f0(d12, this.f42596a);
            case 5:
                b0 d13 = b0.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d13, "inflate(LayoutInflater.f….context), parent, false)");
                return new com.im.freechat.ui.chat.holder.c(d13, this.f42599d, this.f42596a);
            case 6:
                c0 d14 = c0.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d14, "inflate(LayoutInflater.f….context), parent, false)");
                return new com.im.freechat.ui.chat.holder.d(d14, this.f42599d, this.f42596a);
            case 7:
            case 8:
            case 9:
            case 10:
            case 13:
            default:
                throw new IllegalStateException("Illegal view type".toString());
            case 11:
                i0 d15 = i0.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d15, "inflate(LayoutInflater.f….context), parent, false)");
                return new w(d15, this.f42596a);
            case 12:
                j0 d16 = j0.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d16, "inflate(LayoutInflater.f….context), parent, false)");
                return new x(d16, this.f42596a);
            case 14:
                f4.r0 d17 = f4.r0.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d17, "inflate(LayoutInflater.f….context), parent, false)");
                return new o0(d17, this.f42596a);
            case 15:
                z0 d18 = z0.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d18, "inflate(LayoutInflater.f….context), parent, false)");
                return new y0(d18, this.f42596a);
            case 16:
                a1 d19 = a1.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d19, "inflate(LayoutInflater.f….context), parent, false)");
                return new com.im.freechat.ui.chat.holder.z0(d19, this.f42596a);
            case 17:
                f4.s0 d20 = f4.s0.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d20, "inflate(LayoutInflater.f….context), parent, false)");
                return new z(d20, this.f42596a);
            case 18:
                t0 d21 = t0.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d21, "inflate(LayoutInflater.f….context), parent, false)");
                return new a0(d21, this.f42596a);
            case 19:
                f4.o0 d22 = f4.o0.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d22, "inflate(LayoutInflater.f….context), parent, false)");
                return new m0(d22, this, this.f42596a);
            case 20:
                p0 d23 = p0.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d23, "inflate(LayoutInflater.f….context), parent, false)");
                return new n0(d23, this, this.f42596a);
            case 21:
                u0 d24 = u0.d(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(d24, "inflate(LayoutInflater.f….context), parent, false)");
                return new com.im.freechat.ui.chat.holder.p0(d24);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: v */
    public void onViewRecycled(@m8.g BaseChatHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewRecycled(holder);
        holder.x0();
    }

    public final void w(@m8.h Function1<? super Map.Entry<Integer, String>, Unit> function1) {
        this.f42605j = function1;
    }

    public final void x(@m8.h Function1<? super Integer, Unit> function1) {
        this.f42608m = function1;
    }

    public final void y(@m8.h Function1<? super Long, Unit> function1) {
        this.f42609n = function1;
    }

    public final void z(boolean z9) {
        this.f42597b = z9;
    }
}
