package com.im.freechat.ui.chatlist;

import android.os.SystemClock;
import androidx.arch.core.util.Function;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.Transformations;
import com.facebook.common.callercontext.ContextChain;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.im.freechat.domain.usecase.chat.k;
import com.im.freechat.domain.usecase.chat.s;
import com.im.freechat.shared.entities.TypingEvent;
import com.im.freechat.shared.entities.banner.Banner;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.message.Message;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.concurrent.TimersKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;

/* compiled from: ChatListViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0010$\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002_`BG\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0006\u0010)\u001a\u00020&\u0012\u0006\u0010-\u001a\u00020*\u0012\u0006\u00101\u001a\u00020.\u0012\u0006\u00105\u001a\u000202¢\u0006\u0004\b]\u0010^J\b\u0010\u0004\u001a\u00020\u0003H\u0002J(\u0010\u000b\u001a\u00020\n2\u001e\u0010\t\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u00070\u0005H\u0002J\u0006\u0010\f\u001a\u00020\u0003J\u000e\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0012\u001a\u00020\nJ\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R%\u0010=\u001a\u0010\u0012\f\u0012\n 8*\u0004\u0018\u00010707068\u0006¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R,\u0010@\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u00070\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R.\u0010C\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0013 8*\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010A0A068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010:R%\u0010G\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020D\u0018\u00010A068\u0006¢\u0006\f\n\u0004\bE\u0010:\u001a\u0004\bF\u0010<R\"\u0010K\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010A0H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010JR%\u0010O\u001a\u0010\u0012\f\u0012\n 8*\u0004\u0018\u00010L0L068\u0006¢\u0006\f\n\u0004\bM\u0010:\u001a\u0004\bN\u0010<R#\u0010U\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130A0P8\u0006¢\u0006\f\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010TR#\u0010Y\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020V0A068\u0006¢\u0006\f\n\u0004\bW\u0010:\u001a\u0004\bX\u0010<R\u0011\u0010\\\u001a\u00020L8F¢\u0006\u0006\u001a\u0004\bZ\u0010[¨\u0006a"}, d2 = {"Lcom/im/freechat/ui/chatlist/ChatListViewModel;", "Lcom/im/freechat/base/a;", "Lcom/im/freechat/ui/chatlist/ChatListViewModel$Directions;", "Lkotlinx/coroutines/j2;", "J", "", "", "", "", "map", "", "M", "K", k4.b.f84734a, "w", "", "searchQuery", "I", y.b.f83919g, "Lcom/im/freechat/shared/entities/chat/Chat;", "chat", "L", "Lcom/im/freechat/domain/usecase/chat/g;", "c", "Lcom/im/freechat/domain/usecase/chat/g;", "listenAllChatsInteractor", "Lcom/im/freechat/domain/usecase/chat/e;", "d", "Lcom/im/freechat/domain/usecase/chat/e;", "deleteChatByIdInteractor", "Lcom/im/freechat/domain/usecase/chat/j;", "e", "Lcom/im/freechat/domain/usecase/chat/j;", "listenTypingInteractor", "Lcom/im/freechat/domain/usecase/chat/k;", "f", "Lcom/im/freechat/domain/usecase/chat/k;", "pinChatInteractor", "Lcom/im/freechat/domain/usecase/messages/h;", "g", "Lcom/im/freechat/domain/usecase/messages/h;", "searchMessagesInteractor", "Lcom/im/freechat/domain/usecase/chat/s;", "h", "Lcom/im/freechat/domain/usecase/chat/s;", "subscribeChatSyncStateInteractor", "Lcom/im/freechat/domain/usecase/auth/e;", ContextChain.TAG_INFRA, "Lcom/im/freechat/domain/usecase/auth/e;", "listenConnectionStateInteractor", "Lcom/im/freechat/domain/usecase/auth/c;", "j", "Lcom/im/freechat/domain/usecase/auth/c;", "getBannerListInteractor", "Landroidx/lifecycle/MutableLiveData;", "Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;", "kotlin.jvm.PlatformType", "k", "Landroidx/lifecycle/MutableLiveData;", "C", "()Landroidx/lifecycle/MutableLiveData;", "networkState", "l", "Ljava/util/Map;", "typingMap", "", "m", "chatList", "Lcom/im/freechat/shared/entities/message/Message;", "n", "D", "searchMessagesList", "Landroidx/lifecycle/LiveData;", "o", "Landroidx/lifecycle/LiveData;", "searchList", "", "p", "B", "loading", "Landroidx/lifecycle/MediatorLiveData;", "q", "Landroidx/lifecycle/MediatorLiveData;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "()Landroidx/lifecycle/MediatorLiveData;", "listToDisplay", "Lcom/im/freechat/shared/entities/banner/Banner;", "r", y.b.f83920h, "banners", "z", "()Z", "inSearchMode", "<init>", "(Lcom/im/freechat/domain/usecase/chat/g;Lcom/im/freechat/domain/usecase/chat/e;Lcom/im/freechat/domain/usecase/chat/j;Lcom/im/freechat/domain/usecase/chat/k;Lcom/im/freechat/domain/usecase/messages/h;Lcom/im/freechat/domain/usecase/chat/s;Lcom/im/freechat/domain/usecase/auth/e;Lcom/im/freechat/domain/usecase/auth/c;)V", "Directions", "NetworkState", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChatListViewModel extends com.im.freechat.base.a<Directions> {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.g f43261c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.e f43262d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.j f43263e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.k f43264f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.messages.h f43265g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final s f43266h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.auth.e f43267i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.auth.c f43268j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final MutableLiveData<NetworkState> f43269k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final Map<Integer, Map<Integer, Long>> f43270l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final MutableLiveData<List<Chat>> f43271m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final MutableLiveData<List<Message>> f43272n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final LiveData<List<Chat>> f43273o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private final MutableLiveData<Boolean> f43274p;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private final MediatorLiveData<List<Chat>> f43275q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private final MutableLiveData<List<Banner>> f43276r;

    /* compiled from: ChatListViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/im/freechat/ui/chatlist/ChatListViewModel$Directions;", "", "(Ljava/lang/String;I)V", "CHOOSE_CHAT_TYPE", "OPEN_CHAT", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Directions {
        CHOOSE_CHAT_TYPE,
        OPEN_CHAT
    }

    /* compiled from: ChatListViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;", "", "(Ljava/lang/String;I)V", "RECONNECTING", "SYNCHRONIZING", "CONNECTED", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum NetworkState {
        RECONNECTING,
        SYNCHRONIZING,
        CONNECTED
    }

    /* compiled from: ChatListViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chatlist.ChatListViewModel$deleteChatById$1", f = "ChatListViewModel.kt", i = {}, l = {131}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43279a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f43281c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i4, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f43281c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f43281c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43279a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.chat.e eVar = ChatListViewModel.this.f43262d;
                Integer boxInt = Boxing.boxInt(this.f43281c);
                this.f43279a = 1;
                if (eVar.a(boxInt, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatListViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chatlist.ChatListViewModel$searchMessages$1", f = "ChatListViewModel.kt", i = {}, l = {h0.J}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43282a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f43284c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f43284c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f43284c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43282a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.messages.h hVar = ChatListViewModel.this.f43265g;
                String str = this.f43284c;
                this.f43282a = 1;
                a10 = hVar.a(str, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            ChatListViewModel chatListViewModel = ChatListViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                chatListViewModel.D().setValue((List) a10);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: Timer.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"kotlin/concurrent/TimersKt$timerTask$1", "Ljava/util/TimerTask;", "", "run", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends TimerTask {
        public c() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            boolean z9 = false;
            for (Map.Entry entry : ChatListViewModel.this.f43270l.entrySet()) {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                Iterator it = ((Map) entry.getValue()).entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry entry2 = (Map.Entry) it.next();
                    if (SystemClock.elapsedRealtime() - ((Number) entry2.getValue()).longValue() < 3000) {
                        linkedHashMap2.put(entry2.getKey(), entry2.getValue());
                    }
                }
                if (!linkedHashMap2.isEmpty()) {
                    linkedHashMap.put(entry.getKey(), linkedHashMap2);
                }
                if (!Intrinsics.areEqual(linkedHashMap2, entry.getValue())) {
                    z9 = true;
                }
            }
            if (z9) {
                ChatListViewModel.this.f43270l.clear();
                ChatListViewModel.this.f43270l.putAll(linkedHashMap);
                ChatListViewModel chatListViewModel = ChatListViewModel.this;
                chatListViewModel.M(chatListViewModel.f43270l);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatListViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chatlist.ChatListViewModel$startListeners$1", f = "ChatListViewModel.kt", i = {}, l = {84, 87, 90, 103}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43286a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ChatListViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chatlist.ChatListViewModel$startListeners$1$1", f = "ChatListViewModel.kt", i = {}, l = {85}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends Boolean>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f43288a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f43289b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ ChatListViewModel f43290c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: ChatListViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chatlist.ChatListViewModel$startListeners$1$1$1", f = "ChatListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.ui.chatlist.ChatListViewModel$d$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0361a extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f43291a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ boolean f43292b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ ChatListViewModel f43293c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0361a(ChatListViewModel chatListViewModel, Continuation<? super C0361a> continuation) {
                    super(2, continuation);
                    this.f43293c = chatListViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    C0361a c0361a = new C0361a(this.f43293c, continuation);
                    c0361a.f43292b = ((Boolean) obj).booleanValue();
                    return c0361a;
                }

                @m8.h
                public final Object h(boolean z9, @m8.h Continuation<? super Unit> continuation) {
                    return ((C0361a) create(Boolean.valueOf(z9), continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
                    return h(bool.booleanValue(), continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f43291a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f43293c.C().setValue(this.f43292b ? NetworkState.CONNECTED : NetworkState.SYNCHRONIZING);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ChatListViewModel chatListViewModel, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f43290c = chatListViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f43290c, continuation);
                aVar.f43289b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<Boolean> result, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f43288a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    C0361a c0361a = new C0361a(this.f43290c, null);
                    this.f43288a = 1;
                    if (((com.im.freechat.shared.entities.Result) this.f43289b).onSuccess(c0361a, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ChatListViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/chat/Chat;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chatlist.ChatListViewModel$startListeners$1$2", f = "ChatListViewModel.kt", i = {}, l = {88}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class b extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends List<? extends Chat>>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f43294a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f43295b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ ChatListViewModel f43296c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: ChatListViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/chat/Chat;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chatlist.ChatListViewModel$startListeners$1$2$1", f = "ChatListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* loaded from: classes3.dex */
            public static final class a extends SuspendLambda implements Function2<List<? extends Chat>, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f43297a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f43298b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ ChatListViewModel f43299c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(ChatListViewModel chatListViewModel, Continuation<? super a> continuation) {
                    super(2, continuation);
                    this.f43299c = chatListViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    a aVar = new a(this.f43299c, continuation);
                    aVar.f43298b = obj;
                    return aVar;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g List<Chat> list, @m8.h Continuation<? super Unit> continuation) {
                    return ((a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f43297a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f43299c.f43271m.setValue((List) this.f43298b);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(ChatListViewModel chatListViewModel, Continuation<? super b> continuation) {
                super(2, continuation);
                this.f43296c = chatListViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                b bVar = new b(this.f43296c, continuation);
                bVar.f43295b = obj;
                return bVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<? extends List<Chat>> result, @m8.h Continuation<? super Unit> continuation) {
                return ((b) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f43294a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    a aVar = new a(this.f43296c, null);
                    this.f43294a = 1;
                    if (((com.im.freechat.shared.entities.Result) this.f43295b).onSuccess(aVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ChatListViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "Lcom/im/freechat/shared/entities/TypingEvent;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chatlist.ChatListViewModel$startListeners$1$3", f = "ChatListViewModel.kt", i = {}, l = {91}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class c extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends TypingEvent>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f43300a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f43301b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ ChatListViewModel f43302c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: ChatListViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/TypingEvent;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chatlist.ChatListViewModel$startListeners$1$3$1", f = "ChatListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* loaded from: classes3.dex */
            public static final class a extends SuspendLambda implements Function2<TypingEvent, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f43303a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f43304b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ ChatListViewModel f43305c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(ChatListViewModel chatListViewModel, Continuation<? super a> continuation) {
                    super(2, continuation);
                    this.f43305c = chatListViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    a aVar = new a(this.f43305c, continuation);
                    aVar.f43304b = obj;
                    return aVar;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g TypingEvent typingEvent, @m8.h Continuation<? super Unit> continuation) {
                    return ((a) create(typingEvent, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    Map mutableMap;
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f43303a == 0) {
                        ResultKt.throwOnFailure(obj);
                        TypingEvent typingEvent = (TypingEvent) this.f43304b;
                        Object obj2 = this.f43305c.f43270l.get(Boxing.boxInt(typingEvent.getChatId()));
                        if (obj2 == null) {
                            obj2 = new LinkedHashMap();
                        }
                        mutableMap = MapsKt__MapsKt.toMutableMap((Map) obj2);
                        if (typingEvent.getStart()) {
                            mutableMap.put(Boxing.boxInt(typingEvent.getUserId()), Boxing.boxLong(SystemClock.elapsedRealtime()));
                        } else {
                            mutableMap.remove(Boxing.boxInt(typingEvent.getUserId()));
                        }
                        this.f43305c.f43270l.put(Boxing.boxInt(typingEvent.getChatId()), mutableMap);
                        ChatListViewModel chatListViewModel = this.f43305c;
                        chatListViewModel.M(chatListViewModel.f43270l);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(ChatListViewModel chatListViewModel, Continuation<? super c> continuation) {
                super(2, continuation);
                this.f43302c = chatListViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                c cVar = new c(this.f43302c, continuation);
                cVar.f43301b = obj;
                return cVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<TypingEvent> result, @m8.h Continuation<? super Unit> continuation) {
                return ((c) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f43300a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    a aVar = new a(this.f43302c, null);
                    this.f43300a = 1;
                    if (((com.im.freechat.shared.entities.Result) this.f43301b).onSuccess(aVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ChatListViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chatlist.ChatListViewModel$startListeners$1$4", f = "ChatListViewModel.kt", i = {}, l = {104}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.ui.chatlist.ChatListViewModel$d$d  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0362d extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends Boolean>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f43306a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f43307b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ ChatListViewModel f43308c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: ChatListViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chatlist.ChatListViewModel$startListeners$1$4$1", f = "ChatListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.ui.chatlist.ChatListViewModel$d$d$a */
            /* loaded from: classes3.dex */
            public static final class a extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f43309a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ boolean f43310b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ ChatListViewModel f43311c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(ChatListViewModel chatListViewModel, Continuation<? super a> continuation) {
                    super(2, continuation);
                    this.f43311c = chatListViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    a aVar = new a(this.f43311c, continuation);
                    aVar.f43310b = ((Boolean) obj).booleanValue();
                    return aVar;
                }

                @m8.h
                public final Object h(boolean z9, @m8.h Continuation<? super Unit> continuation) {
                    return ((a) create(Boolean.valueOf(z9), continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
                    return h(bool.booleanValue(), continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f43309a == 0) {
                        ResultKt.throwOnFailure(obj);
                        if (this.f43310b) {
                            this.f43311c.K();
                        } else {
                            this.f43311c.C().setValue(NetworkState.RECONNECTING);
                        }
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0362d(ChatListViewModel chatListViewModel, Continuation<? super C0362d> continuation) {
                super(2, continuation);
                this.f43308c = chatListViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0362d c0362d = new C0362d(this.f43308c, continuation);
                c0362d.f43307b = obj;
                return c0362d;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<Boolean> result, @m8.h Continuation<? super Unit> continuation) {
                return ((C0362d) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f43306a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    a aVar = new a(this.f43308c, null);
                    this.f43306a = 1;
                    if (((com.im.freechat.shared.entities.Result) this.f43307b).onSuccess(aVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        d(Continuation<? super d> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new d(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((d) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0076 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x008e A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.f43286a
                r2 = 4
                r3 = 3
                r4 = 2
                r5 = 1
                r6 = 0
                if (r1 == 0) goto L2e
                if (r1 == r5) goto L2a
                if (r1 == r4) goto L26
                if (r1 == r3) goto L22
                if (r1 != r2) goto L1a
                kotlin.ResultKt.throwOnFailure(r10)
                goto L8f
            L1a:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L22:
                kotlin.ResultKt.throwOnFailure(r10)
                goto L77
            L26:
                kotlin.ResultKt.throwOnFailure(r10)
                goto L61
            L2a:
                kotlin.ResultKt.throwOnFailure(r10)
                goto L49
            L2e:
                kotlin.ResultKt.throwOnFailure(r10)
                com.im.freechat.ui.chatlist.ChatListViewModel r10 = com.im.freechat.ui.chatlist.ChatListViewModel.this
                com.im.freechat.domain.usecase.chat.s r10 = com.im.freechat.ui.chatlist.ChatListViewModel.t(r10)
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                com.im.freechat.ui.chatlist.ChatListViewModel$d$a r7 = new com.im.freechat.ui.chatlist.ChatListViewModel$d$a
                com.im.freechat.ui.chatlist.ChatListViewModel r8 = com.im.freechat.ui.chatlist.ChatListViewModel.this
                r7.<init>(r8, r6)
                r9.f43286a = r5
                java.lang.Object r10 = r10.c(r1, r7, r9)
                if (r10 != r0) goto L49
                return r0
            L49:
                com.im.freechat.ui.chatlist.ChatListViewModel r10 = com.im.freechat.ui.chatlist.ChatListViewModel.this
                com.im.freechat.domain.usecase.chat.g r10 = com.im.freechat.ui.chatlist.ChatListViewModel.o(r10)
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                com.im.freechat.ui.chatlist.ChatListViewModel$d$b r5 = new com.im.freechat.ui.chatlist.ChatListViewModel$d$b
                com.im.freechat.ui.chatlist.ChatListViewModel r7 = com.im.freechat.ui.chatlist.ChatListViewModel.this
                r5.<init>(r7, r6)
                r9.f43286a = r4
                java.lang.Object r10 = r10.c(r1, r5, r9)
                if (r10 != r0) goto L61
                return r0
            L61:
                com.im.freechat.ui.chatlist.ChatListViewModel r10 = com.im.freechat.ui.chatlist.ChatListViewModel.this
                com.im.freechat.domain.usecase.chat.j r10 = com.im.freechat.ui.chatlist.ChatListViewModel.q(r10)
                com.im.freechat.ui.chatlist.ChatListViewModel$d$c r1 = new com.im.freechat.ui.chatlist.ChatListViewModel$d$c
                com.im.freechat.ui.chatlist.ChatListViewModel r4 = com.im.freechat.ui.chatlist.ChatListViewModel.this
                r1.<init>(r4, r6)
                r9.f43286a = r3
                java.lang.Object r10 = r10.c(r6, r1, r9)
                if (r10 != r0) goto L77
                return r0
            L77:
                com.im.freechat.ui.chatlist.ChatListViewModel r10 = com.im.freechat.ui.chatlist.ChatListViewModel.this
                com.im.freechat.domain.usecase.auth.e r10 = com.im.freechat.ui.chatlist.ChatListViewModel.p(r10)
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                com.im.freechat.ui.chatlist.ChatListViewModel$d$d r3 = new com.im.freechat.ui.chatlist.ChatListViewModel$d$d
                com.im.freechat.ui.chatlist.ChatListViewModel r4 = com.im.freechat.ui.chatlist.ChatListViewModel.this
                r3.<init>(r4, r6)
                r9.f43286a = r2
                java.lang.Object r10 = r10.c(r1, r3, r9)
                if (r10 != r0) goto L8f
                return r0
            L8f:
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chatlist.ChatListViewModel.d.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatListViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chatlist.ChatListViewModel$syncBanners$1", f = "ChatListViewModel.kt", i = {}, l = {79}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43312a;

        e(Continuation<? super e> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new e(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((e) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43312a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.auth.c cVar = ChatListViewModel.this.f43268j;
                Unit unit = Unit.INSTANCE;
                this.f43312a = 1;
                a10 = cVar.a(unit, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            ChatListViewModel chatListViewModel = ChatListViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                chatListViewModel.y().setValue((List) a10);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ChatListViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chatlist.ChatListViewModel$togglePinnedStatus$1", f = "ChatListViewModel.kt", i = {}, l = {149}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class f extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43314a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Chat f43316c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(Chat chat, Continuation<? super f> continuation) {
            super(2, continuation);
            this.f43316c = chat;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new f(this.f43316c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((f) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43314a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.chat.k kVar = ChatListViewModel.this.f43264f;
                k.a aVar = new k.a(this.f43316c.getChatId(), this.f43316c.getPinnedTime() == null);
                this.f43314a = 1;
                if (kVar.a(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    public ChatListViewModel(@m8.g com.im.freechat.domain.usecase.chat.g listenAllChatsInteractor, @m8.g com.im.freechat.domain.usecase.chat.e deleteChatByIdInteractor, @m8.g com.im.freechat.domain.usecase.chat.j listenTypingInteractor, @m8.g com.im.freechat.domain.usecase.chat.k pinChatInteractor, @m8.g com.im.freechat.domain.usecase.messages.h searchMessagesInteractor, @m8.g s subscribeChatSyncStateInteractor, @m8.g com.im.freechat.domain.usecase.auth.e listenConnectionStateInteractor, @m8.g com.im.freechat.domain.usecase.auth.c getBannerListInteractor) {
        List emptyList;
        List emptyList2;
        Intrinsics.checkNotNullParameter(listenAllChatsInteractor, "listenAllChatsInteractor");
        Intrinsics.checkNotNullParameter(deleteChatByIdInteractor, "deleteChatByIdInteractor");
        Intrinsics.checkNotNullParameter(listenTypingInteractor, "listenTypingInteractor");
        Intrinsics.checkNotNullParameter(pinChatInteractor, "pinChatInteractor");
        Intrinsics.checkNotNullParameter(searchMessagesInteractor, "searchMessagesInteractor");
        Intrinsics.checkNotNullParameter(subscribeChatSyncStateInteractor, "subscribeChatSyncStateInteractor");
        Intrinsics.checkNotNullParameter(listenConnectionStateInteractor, "listenConnectionStateInteractor");
        Intrinsics.checkNotNullParameter(getBannerListInteractor, "getBannerListInteractor");
        this.f43261c = listenAllChatsInteractor;
        this.f43262d = deleteChatByIdInteractor;
        this.f43263e = listenTypingInteractor;
        this.f43264f = pinChatInteractor;
        this.f43265g = searchMessagesInteractor;
        this.f43266h = subscribeChatSyncStateInteractor;
        this.f43267i = listenConnectionStateInteractor;
        this.f43268j = getBannerListInteractor;
        this.f43269k = new MutableLiveData<>(NetworkState.CONNECTED);
        this.f43270l = new LinkedHashMap();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        MutableLiveData<List<Chat>> mutableLiveData = new MutableLiveData<>(emptyList);
        this.f43271m = mutableLiveData;
        MutableLiveData<List<Message>> mutableLiveData2 = new MutableLiveData<>(null);
        this.f43272n = mutableLiveData2;
        LiveData<List<Chat>> map = Transformations.map(mutableLiveData2, new Function() { // from class: com.im.freechat.ui.chatlist.m
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                List H;
                H = ChatListViewModel.H(ChatListViewModel.this, (List) obj);
                return H;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(searchMessagesList) …ge = msg)\n        }\n    }");
        this.f43273o = map;
        this.f43274p = new MutableLiveData<>(Boolean.FALSE);
        final MediatorLiveData<List<Chat>> mediatorLiveData = new MediatorLiveData<>();
        mediatorLiveData.addSource(map, new Observer() { // from class: com.im.freechat.ui.chatlist.o
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatListViewModel.E(ChatListViewModel.this, mediatorLiveData, (List) obj);
            }
        });
        mediatorLiveData.addSource(mutableLiveData, new Observer() { // from class: com.im.freechat.ui.chatlist.n
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ChatListViewModel.F(ChatListViewModel.this, mediatorLiveData, (List) obj);
            }
        });
        this.f43275q = mediatorLiveData;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.f43276r = new MutableLiveData<>(emptyList2);
        J();
        TimersKt.timer(null, false).scheduleAtFixedRate(new c(), 0L, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(ChatListViewModel this$0, MediatorLiveData this_apply, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        G(this$0, this_apply);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(ChatListViewModel this$0, MediatorLiveData this_apply, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        G(this$0, this_apply);
    }

    private static final void G(ChatListViewModel chatListViewModel, MediatorLiveData<List<Chat>> mediatorLiveData) {
        Unit unit;
        List<Chat> value = chatListViewModel.f43273o.getValue();
        if (value != null) {
            mediatorLiveData.setValue(value);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            mediatorLiveData.setValue(chatListViewModel.f43271m.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List H(ChatListViewModel this$0, List list) {
        Chat chat;
        Chat chat2;
        Object obj;
        boolean z9;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Message message = (Message) it.next();
                List<Chat> value = this$0.f43271m.getValue();
                if (value != null) {
                    Intrinsics.checkNotNullExpressionValue(value, "value");
                    Iterator<T> it2 = value.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        if (((Chat) obj).getChatId() == message.getChatId()) {
                            z9 = true;
                            continue;
                        } else {
                            z9 = false;
                            continue;
                        }
                        if (z9) {
                            break;
                        }
                    }
                    chat = (Chat) obj;
                } else {
                    chat = null;
                }
                if (chat != null) {
                    chat2 = chat.copy((r35 & 1) != 0 ? chat.chatId : 0, (r35 & 2) != 0 ? chat.title : null, (r35 & 4) != 0 ? chat.avatar : null, (r35 & 8) != 0 ? chat.type : null, (r35 & 16) != 0 ? chat.lastChatMessage : message, (r35 & 32) != 0 ? chat.unreadCount : 0, (r35 & 64) != 0 ? chat.pinnedMessageId : null, (r35 & 128) != 0 ? chat.pinnedMessageUserId : null, (r35 & 256) != 0 ? chat.pinnedTime : null, (r35 & 512) != 0 ? chat.membersCount : null, (r35 & 1024) != 0 ? chat.isPublic : 0, (r35 & 2048) != 0 ? chat.showHistoryToNewMembers : 0, (r35 & 4096) != 0 ? chat.invitationLink : null, (r35 & 8192) != 0 ? chat.draftMessage : null, (r35 & 16384) != 0 ? chat.contacts : null, (r35 & 32768) != 0 ? chat.updateSystemTime : null, (r35 & 65536) != 0 ? chat.typings : null);
                } else {
                    chat2 = null;
                }
                if (chat2 != null) {
                    arrayList.add(chat2);
                }
            }
            return arrayList;
        }
        return null;
    }

    private final j2 J() {
        return c(new d(null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M(Map<Integer, Map<Integer, Long>> map) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Map emptyMap;
        MutableLiveData<List<Chat>> mutableLiveData = this.f43271m;
        List<Chat> value = mutableLiveData.getValue();
        if (value != null) {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(value, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (Chat chat : value) {
                if (map.keySet().contains(Integer.valueOf(chat.getChatId()))) {
                    Map<Integer, Long> map2 = map.get(Integer.valueOf(chat.getChatId()));
                    if (map2 == null) {
                        map2 = MapsKt__MapsKt.emptyMap();
                    }
                    chat = chat.copy((r35 & 1) != 0 ? chat.chatId : 0, (r35 & 2) != 0 ? chat.title : null, (r35 & 4) != 0 ? chat.avatar : null, (r35 & 8) != 0 ? chat.type : null, (r35 & 16) != 0 ? chat.lastChatMessage : null, (r35 & 32) != 0 ? chat.unreadCount : 0, (r35 & 64) != 0 ? chat.pinnedMessageId : null, (r35 & 128) != 0 ? chat.pinnedMessageUserId : null, (r35 & 256) != 0 ? chat.pinnedTime : null, (r35 & 512) != 0 ? chat.membersCount : null, (r35 & 1024) != 0 ? chat.isPublic : 0, (r35 & 2048) != 0 ? chat.showHistoryToNewMembers : 0, (r35 & 4096) != 0 ? chat.invitationLink : null, (r35 & 8192) != 0 ? chat.draftMessage : null, (r35 & 16384) != 0 ? chat.contacts : null, (r35 & 32768) != 0 ? chat.updateSystemTime : null, (r35 & 65536) != 0 ? chat.typings : map2);
                } else if (!map.keySet().contains(Integer.valueOf(chat.getChatId())) && (!chat.getTypings().isEmpty())) {
                    emptyMap = MapsKt__MapsKt.emptyMap();
                    chat = chat.copy((r35 & 1) != 0 ? chat.chatId : 0, (r35 & 2) != 0 ? chat.title : null, (r35 & 4) != 0 ? chat.avatar : null, (r35 & 8) != 0 ? chat.type : null, (r35 & 16) != 0 ? chat.lastChatMessage : null, (r35 & 32) != 0 ? chat.unreadCount : 0, (r35 & 64) != 0 ? chat.pinnedMessageId : null, (r35 & 128) != 0 ? chat.pinnedMessageUserId : null, (r35 & 256) != 0 ? chat.pinnedTime : null, (r35 & 512) != 0 ? chat.membersCount : null, (r35 & 1024) != 0 ? chat.isPublic : 0, (r35 & 2048) != 0 ? chat.showHistoryToNewMembers : 0, (r35 & 4096) != 0 ? chat.invitationLink : null, (r35 & 8192) != 0 ? chat.draftMessage : null, (r35 & 16384) != 0 ? chat.contacts : null, (r35 & 32768) != 0 ? chat.updateSystemTime : null, (r35 & 65536) != 0 ? chat.typings : emptyMap);
                }
                arrayList.add(chat);
            }
        } else {
            arrayList = null;
        }
        mutableLiveData.postValue(arrayList);
    }

    @m8.g
    public final MediatorLiveData<List<Chat>> A() {
        return this.f43275q;
    }

    @m8.g
    public final MutableLiveData<Boolean> B() {
        return this.f43274p;
    }

    @m8.g
    public final MutableLiveData<NetworkState> C() {
        return this.f43269k;
    }

    @m8.g
    public final MutableLiveData<List<Message>> D() {
        return this.f43272n;
    }

    @m8.g
    public final j2 I(@m8.g String searchQuery) {
        Intrinsics.checkNotNullParameter(searchQuery, "searchQuery");
        return c(new b(searchQuery, null));
    }

    @m8.g
    public final j2 K() {
        return c(new e(null));
    }

    public final void L(@m8.g Chat chat) {
        Intrinsics.checkNotNullParameter(chat, "chat");
        d(this.f43274p, new f(chat, null));
    }

    @m8.g
    public final j2 w(int i4) {
        return c(new a(i4, null));
    }

    public final void x() {
        this.f43272n.setValue(null);
    }

    @m8.g
    public final MutableLiveData<List<Banner>> y() {
        return this.f43276r;
    }

    public final boolean z() {
        return this.f43273o.getValue() != null;
    }
}
