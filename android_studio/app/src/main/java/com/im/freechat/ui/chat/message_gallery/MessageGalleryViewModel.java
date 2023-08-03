package com.im.freechat.ui.chat.message_gallery;

import android.net.Uri;
import androidx.lifecycle.MutableLiveData;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.domain.usecase.messages.k;
import com.im.freechat.extend.p;
import com.im.freechat.shared.entities.Result;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.shared.entities.message.VideoAttachment;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;

/* compiled from: MessageGalleryViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00015B\u001f\u0012\u0006\u0010/\u001a\u00020.\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b3\u00104J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\tJ\u0006\u0010\f\u001a\u00020\tJ\u0006\u0010\r\u001a\u00020\tR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R#\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00170\u00168\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R.\u0010-\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010%8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u0017\u0010/\u001a\u00020.8\u0006¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102¨\u00066"}, d2 = {"Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel;", "Lcom/im/freechat/base/a;", "Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$Directions;", "", k4.b.f84734a, "Lkotlinx/coroutines/j2;", "m", "Lcom/im/freechat/ui/chat/history/a;", "item", "", "q", "p", "n", "o", "Lcom/im/freechat/utils/f;", "d", "Lcom/im/freechat/utils/f;", "downloadUtil", "Lcom/im/freechat/domain/usecase/messages/k;", "e", "Lcom/im/freechat/domain/usecase/messages/k;", "subscribeChatMessagesInteractor", "Landroidx/lifecycle/MutableLiveData;", "", "f", "Landroidx/lifecycle/MutableLiveData;", "k", "()Landroidx/lifecycle/MutableLiveData;", "items", "", "g", "J", "lastPosition", "", "h", "Z", "playWhenReady", "Lcom/im/freechat/shared/entities/message/VideoAttachment;", "value", ContextChain.TAG_INFRA, "Lcom/im/freechat/shared/entities/message/VideoAttachment;", "j", "()Lcom/im/freechat/shared/entities/message/VideoAttachment;", "r", "(Lcom/im/freechat/shared/entities/message/VideoAttachment;)V", "currentPlaylistItem", "Lp4/a;", "playback", "Lp4/a;", "l", "()Lp4/a;", "<init>", "(Lp4/a;Lcom/im/freechat/utils/f;Lcom/im/freechat/domain/usecase/messages/k;)V", "Directions", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class MessageGalleryViewModel extends com.im.freechat.base.a<Directions> {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final p4.a f43120c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.im.freechat.utils.f f43121d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.messages.k f43122e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final MutableLiveData<List<com.im.freechat.ui.chat.history.a>> f43123f;

    /* renamed from: g  reason: collision with root package name */
    private long f43124g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f43125h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private VideoAttachment f43126i;

    /* compiled from: MessageGalleryViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$Directions;", "", "(Ljava/lang/String;I)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Directions {
    }

    /* compiled from: MessageGalleryViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.message_gallery.MessageGalleryViewModel$init$1", f = "MessageGalleryViewModel.kt", i = {}, l = {39}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43128a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f43130c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MessageGalleryViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/message/Message;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chat.message_gallery.MessageGalleryViewModel$init$1$1", f = "MessageGalleryViewModel.kt", i = {}, l = {40}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.ui.chat.message_gallery.MessageGalleryViewModel$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0352a extends SuspendLambda implements Function2<Result<? extends List<? extends Message>>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f43131a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f43132b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ MessageGalleryViewModel f43133c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: MessageGalleryViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/message/Message;", "list", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chat.message_gallery.MessageGalleryViewModel$init$1$1$1", f = "MessageGalleryViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.ui.chat.message_gallery.MessageGalleryViewModel$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0353a extends SuspendLambda implements Function2<List<? extends Message>, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f43134a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f43135b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ MessageGalleryViewModel f43136c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0353a(MessageGalleryViewModel messageGalleryViewModel, Continuation<? super C0353a> continuation) {
                    super(2, continuation);
                    this.f43136c = messageGalleryViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    C0353a c0353a = new C0353a(this.f43136c, continuation);
                    c0353a.f43135b = obj;
                    return c0353a;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g List<Message> list, @m8.h Continuation<? super Unit> continuation) {
                    return ((C0353a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    int collectionSizeOrDefault;
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f43134a == 0) {
                        ResultKt.throwOnFailure(obj);
                        MutableLiveData<List<com.im.freechat.ui.chat.history.a>> k10 = this.f43136c.k();
                        ArrayList<Message> arrayList = new ArrayList();
                        for (Object obj2 : (List) this.f43135b) {
                            if (p.v((Message) obj2)) {
                                arrayList.add(obj2);
                            }
                        }
                        ArrayList arrayList2 = new ArrayList();
                        for (Message message : arrayList) {
                            List<Attachment> attachments = message.getAttachments();
                            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(attachments, 10);
                            ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
                            for (Attachment attachment : attachments) {
                                arrayList3.add(new com.im.freechat.ui.chat.history.a(attachment, message.getSender(), message.getSendTime(), message.getChatId(), message.getContent()));
                            }
                            CollectionsKt__MutableCollectionsKt.addAll(arrayList2, arrayList3);
                        }
                        k10.setValue(arrayList2);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0352a(MessageGalleryViewModel messageGalleryViewModel, Continuation<? super C0352a> continuation) {
                super(2, continuation);
                this.f43133c = messageGalleryViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0352a c0352a = new C0352a(this.f43133c, continuation);
                c0352a.f43132b = obj;
                return c0352a;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g Result<? extends List<Message>> result, @m8.h Continuation<? super Unit> continuation) {
                return ((C0352a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f43131a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    C0353a c0353a = new C0353a(this.f43133c, null);
                    this.f43131a = 1;
                    if (((Result) this.f43132b).onSuccess(c0353a, this) == coroutine_suspended) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i4, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f43130c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f43130c, continuation);
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
            int i4 = this.f43128a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.messages.k kVar = MessageGalleryViewModel.this.f43122e;
                k.a aVar = new k.a(this.f43130c, 0L);
                C0352a c0352a = new C0352a(MessageGalleryViewModel.this, null);
                this.f43128a = 1;
                if (kVar.c(aVar, c0352a, this) == coroutine_suspended) {
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

    public MessageGalleryViewModel(@m8.g p4.a playback, @m8.g com.im.freechat.utils.f downloadUtil, @m8.g com.im.freechat.domain.usecase.messages.k subscribeChatMessagesInteractor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(playback, "playback");
        Intrinsics.checkNotNullParameter(downloadUtil, "downloadUtil");
        Intrinsics.checkNotNullParameter(subscribeChatMessagesInteractor, "subscribeChatMessagesInteractor");
        this.f43120c = playback;
        this.f43121d = downloadUtil;
        this.f43122e = subscribeChatMessagesInteractor;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.f43123f = new MutableLiveData<>(emptyList);
        this.f43125h = true;
    }

    @m8.h
    public final VideoAttachment j() {
        return this.f43126i;
    }

    @m8.g
    public final MutableLiveData<List<com.im.freechat.ui.chat.history.a>> k() {
        return this.f43123f;
    }

    @m8.g
    public final p4.a l() {
        return this.f43120c;
    }

    @m8.g
    public final j2 m(int i4) {
        return c(new a(i4, null));
    }

    public final void n() {
        this.f43124g = this.f43120c.getCurrentPosition();
        this.f43125h = this.f43120c.isPlaying();
    }

    public final void o() {
        this.f43120c.seekTo(this.f43124g);
        if (this.f43125h) {
            return;
        }
        this.f43120c.pause();
    }

    public final void p() {
        this.f43124g = this.f43120c.getCurrentPosition();
        this.f43120c.pause();
    }

    public final void q(@m8.g com.im.freechat.ui.chat.history.a item) {
        Intrinsics.checkNotNullParameter(item, "item");
        h(b.s.M4, new Object[0]);
        com.im.freechat.utils.f fVar = this.f43121d;
        Attachment h4 = item.h();
        Long valueOf = h4 != null ? Long.valueOf(h4.getMediaId()) : null;
        Integer valueOf2 = Integer.valueOf(item.i());
        Attachment h10 = item.h();
        String j4 = h10 != null ? p.j(h10) : null;
        Intrinsics.checkNotNull(j4);
        fVar.j(valueOf, valueOf2, j4);
    }

    public final void r(@m8.h VideoAttachment videoAttachment) {
        if (Intrinsics.areEqual(this.f43126i, videoAttachment)) {
            this.f43120c.d();
            this.f43120c.seekTo(this.f43124g);
        } else if (videoAttachment != null) {
            p4.a aVar = this.f43120c;
            Uri parse = Uri.parse(p.j(videoAttachment));
            Intrinsics.checkNotNullExpressionValue(parse, "parse(this)");
            aVar.F(parse);
        }
        this.f43126i = videoAttachment;
    }
}
