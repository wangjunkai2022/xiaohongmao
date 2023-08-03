package com.im.freechat.ui.chat.userprofile;

import androidx.core.os.BundleKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Transformations;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.domain.usecase.messages.k;
import com.im.freechat.extend.p;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.Message;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.y0;

/* compiled from: UserProfileViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001]BG\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u0006\u0010#\u001a\u00020 \u0012\u0006\u0010'\u001a\u00020$\u0012\u0006\u0010+\u001a\u00020(\u0012\u0006\u0010/\u001a\u00020,¢\u0006\u0004\b[\u0010\\J\u0016\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\f\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\u0007J\u0006\u0010\u000f\u001a\u00020\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\"\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010\u000f\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u001d\u0010A\u001a\b\u0012\u0004\u0012\u00020<0;8\u0006¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R#\u0010F\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020C0B0;8\u0006¢\u0006\f\n\u0004\bD\u0010>\u001a\u0004\bE\u0010@R%\u0010J\u001a\u0010\u0012\f\u0012\n G*\u0004\u0018\u00010\u00050\u00050;8\u0006¢\u0006\f\n\u0004\bH\u0010>\u001a\u0004\bI\u0010@R \u0010M\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020K0B0;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010>R1\u0010T\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020O G*\n\u0012\u0004\u0012\u00020O\u0018\u00010B0B0N8\u0006¢\u0006\f\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010SR1\u0010W\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020O G*\n\u0012\u0004\u0012\u00020O\u0018\u00010B0B0N8\u0006¢\u0006\f\n\u0004\bU\u0010Q\u001a\u0004\bV\u0010SR1\u0010Z\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020O G*\n\u0012\u0004\u0012\u00020O\u0018\u00010B0B0N8\u0006¢\u0006\f\n\u0004\bX\u0010Q\u001a\u0004\bY\u0010S¨\u0006^"}, d2 = {"Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;", "Lcom/im/freechat/base/a;", "Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;", "", j.f43244a, "", "fromSingleChat", "Lkotlinx/coroutines/j2;", "F", "w", "N", "u", "M", "L", "", "I", "Lcom/im/freechat/domain/usecase/contact/d;", "c", "Lcom/im/freechat/domain/usecase/contact/d;", "listenContactInteractor", "Lcom/im/freechat/domain/usecase/chat/c;", "d", "Lcom/im/freechat/domain/usecase/chat/c;", "createSingleChatInteractor", "Lcom/im/freechat/domain/usecase/contact/b;", "e", "Lcom/im/freechat/domain/usecase/contact/b;", "followContactInteractor", "Lcom/im/freechat/domain/usecase/contact/f;", "f", "Lcom/im/freechat/domain/usecase/contact/f;", "removeFriendInteractor", "Lcom/im/freechat/domain/usecase/contact/a;", "g", "Lcom/im/freechat/domain/usecase/contact/a;", "blockContactInteractor", "Lcom/im/freechat/domain/usecase/contact/j;", "h", "Lcom/im/freechat/domain/usecase/contact/j;", "unblockContactInteractor", "Lcom/im/freechat/domain/usecase/messages/k;", ContextChain.TAG_INFRA, "Lcom/im/freechat/domain/usecase/messages/k;", "subscribeChatMessagesInteractor", "Lcom/im/freechat/domain/usecase/members/e;", "j", "Lcom/im/freechat/domain/usecase/members/e;", "listenCommonGroupsInteractor", "k", "z", "()I", "J", "(I)V", "l", "Z", "B", "()Z", "K", "(Z)V", "Landroidx/lifecycle/MutableLiveData;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "m", "Landroidx/lifecycle/MutableLiveData;", y.b.f83920h, "()Landroidx/lifecycle/MutableLiveData;", "contact", "", "Lcom/im/freechat/shared/entities/chat/Chat;", "n", y.b.f83919g, "commonGroups", "kotlin.jvm.PlatformType", "o", "D", "loading", "Lcom/im/freechat/shared/entities/message/Message;", "p", "messages", "Landroidx/lifecycle/LiveData;", "Lcom/im/freechat/ui/chat/history/a;", "q", "Landroidx/lifecycle/LiveData;", ExifInterface.LONGITUDE_EAST, "()Landroidx/lifecycle/LiveData;", "media", "r", "C", "links", "s", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "files", "<init>", "(Lcom/im/freechat/domain/usecase/contact/d;Lcom/im/freechat/domain/usecase/chat/c;Lcom/im/freechat/domain/usecase/contact/b;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/a;Lcom/im/freechat/domain/usecase/contact/j;Lcom/im/freechat/domain/usecase/messages/k;Lcom/im/freechat/domain/usecase/members/e;)V", "Directions", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class UserProfileViewModel extends com.im.freechat.base.a<Directions> {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.contact.d f43172c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.c f43173d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.contact.b f43174e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.contact.f f43175f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.contact.a f43176g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.contact.j f43177h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.messages.k f43178i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.members.e f43179j;

    /* renamed from: k  reason: collision with root package name */
    private int f43180k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f43181l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final MutableLiveData<UserModel> f43182m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final MutableLiveData<List<Chat>> f43183n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final MutableLiveData<Boolean> f43184o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private final MutableLiveData<List<Message>> f43185p;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private final LiveData<List<com.im.freechat.ui.chat.history.a>> f43186q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private final LiveData<List<com.im.freechat.ui.chat.history.a>> f43187r;
    @m8.g

    /* renamed from: s  reason: collision with root package name */
    private final LiveData<List<com.im.freechat.ui.chat.history.a>> f43188s;

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;", "", "(Ljava/lang/String;I)V", "BACK", "CHAT_DETAILS", "CHAT_SELECTOR", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Directions {
        BACK,
        CHAT_DETAILS,
        CHAT_SELECTOR
    }

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.userprofile.UserProfileViewModel$blockContact$1", f = "UserProfileViewModel.kt", i = {}, l = {93}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43190a;

        a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(continuation);
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
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43190a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                UserProfileViewModel.this.D().setValue(Boxing.boxBoolean(true));
                com.im.freechat.domain.usecase.contact.a aVar = UserProfileViewModel.this.f43176g;
                Integer boxInt = Boxing.boxInt(UserProfileViewModel.this.z());
                this.f43190a = 1;
                a10 = aVar.a(boxInt, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            UserProfileViewModel userProfileViewModel = UserProfileViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                Unit unit = (Unit) a10;
                userProfileViewModel.h(b.s.f2218c0, new Object[0]);
            }
            UserProfileViewModel userProfileViewModel2 = UserProfileViewModel.this;
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                userProfileViewModel2.h(b.s.f2373r1, new Object[0]);
            }
            UserProfileViewModel.this.D().setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.userprofile.UserProfileViewModel$followContact$1", f = "UserProfileViewModel.kt", i = {}, l = {77}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43192a;

        b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(continuation);
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
            int i4 = this.f43192a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                UserProfileViewModel.this.D().setValue(Boxing.boxBoolean(true));
                com.im.freechat.domain.usecase.contact.b bVar = UserProfileViewModel.this.f43174e;
                Integer boxInt = Boxing.boxInt(UserProfileViewModel.this.z());
                this.f43192a = 1;
                a10 = bVar.a(boxInt, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            UserProfileViewModel userProfileViewModel = UserProfileViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                Unit unit = (Unit) a10;
                userProfileViewModel.h(b.s.f2413v1, new Object[0]);
            }
            UserProfileViewModel userProfileViewModel2 = UserProfileViewModel.this;
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                userProfileViewModel2.h(b.s.f2383s1, new Object[0]);
            }
            UserProfileViewModel.this.D().setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.userprofile.UserProfileViewModel$init$1", f = "UserProfileViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43194a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f43195b;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f43197d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ boolean f43198e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: UserProfileViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chat.userprofile.UserProfileViewModel$init$1$1", f = "UserProfileViewModel.kt", i = {}, l = {61}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f43199a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ UserProfileViewModel f43200b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f43201c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ y0<Unit> f43202d;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: UserProfileViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chat.userprofile.UserProfileViewModel$init$1$1$1", f = "UserProfileViewModel.kt", i = {}, l = {62}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.ui.chat.userprofile.UserProfileViewModel$c$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0356a extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends UserModel>, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f43203a;

                /* renamed from: b  reason: collision with root package name */
                private /* synthetic */ Object f43204b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ UserProfileViewModel f43205c;

                /* renamed from: d  reason: collision with root package name */
                final /* synthetic */ y0<Unit> f43206d;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: UserProfileViewModel.kt */
                @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/contact/UserModel;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
                @DebugMetadata(c = "com.im.freechat.ui.chat.userprofile.UserProfileViewModel$init$1$1$1$1", f = "UserProfileViewModel.kt", i = {}, l = {64}, m = "invokeSuspend", n = {}, s = {})
                /* renamed from: com.im.freechat.ui.chat.userprofile.UserProfileViewModel$c$a$a$a  reason: collision with other inner class name */
                /* loaded from: classes3.dex */
                public static final class C0357a extends SuspendLambda implements Function2<UserModel, Continuation<? super Unit>, Object> {

                    /* renamed from: a  reason: collision with root package name */
                    int f43207a;

                    /* renamed from: b  reason: collision with root package name */
                    /* synthetic */ Object f43208b;

                    /* renamed from: c  reason: collision with root package name */
                    final /* synthetic */ UserProfileViewModel f43209c;

                    /* renamed from: d  reason: collision with root package name */
                    final /* synthetic */ y0<Unit> f43210d;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C0357a(UserProfileViewModel userProfileViewModel, y0<Unit> y0Var, Continuation<? super C0357a> continuation) {
                        super(2, continuation);
                        this.f43209c = userProfileViewModel;
                        this.f43210d = y0Var;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.g
                    public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                        C0357a c0357a = new C0357a(this.f43209c, this.f43210d, continuation);
                        c0357a.f43208b = obj;
                        return c0357a;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    @m8.h
                    /* renamed from: h */
                    public final Object invoke(@m8.h UserModel userModel, @m8.h Continuation<? super Unit> continuation) {
                        return ((C0357a) create(userModel, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        Object coroutine_suspended;
                        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i4 = this.f43207a;
                        if (i4 == 0) {
                            ResultKt.throwOnFailure(obj);
                            this.f43209c.y().setValue((UserModel) this.f43208b);
                            if (!this.f43210d.i()) {
                                y0<Unit> y0Var = this.f43210d;
                                this.f43207a = 1;
                                if (y0Var.D(this) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
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
                C0356a(UserProfileViewModel userProfileViewModel, y0<Unit> y0Var, Continuation<? super C0356a> continuation) {
                    super(2, continuation);
                    this.f43205c = userProfileViewModel;
                    this.f43206d = y0Var;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    C0356a c0356a = new C0356a(this.f43205c, this.f43206d, continuation);
                    c0356a.f43204b = obj;
                    return c0356a;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<UserModel> result, @m8.h Continuation<? super Unit> continuation) {
                    return ((C0356a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    Object coroutine_suspended;
                    coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i4 = this.f43203a;
                    if (i4 == 0) {
                        ResultKt.throwOnFailure(obj);
                        C0357a c0357a = new C0357a(this.f43205c, this.f43206d, null);
                        this.f43203a = 1;
                        if (((com.im.freechat.shared.entities.Result) this.f43204b).onSuccess(c0357a, this) == coroutine_suspended) {
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
            a(UserProfileViewModel userProfileViewModel, int i4, y0<Unit> y0Var, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f43200b = userProfileViewModel;
                this.f43201c = i4;
                this.f43202d = y0Var;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new a(this.f43200b, this.f43201c, this.f43202d, continuation);
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
                int i4 = this.f43199a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    com.im.freechat.domain.usecase.contact.d dVar = this.f43200b.f43172c;
                    Integer boxInt = Boxing.boxInt(this.f43201c);
                    C0356a c0356a = new C0356a(this.f43200b, this.f43202d, null);
                    this.f43199a = 1;
                    if (dVar.c(boxInt, c0356a, this) == coroutine_suspended) {
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
        /* compiled from: UserProfileViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chat.userprofile.UserProfileViewModel$init$1$2", f = "UserProfileViewModel.kt", i = {}, l = {69}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f43211a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ UserProfileViewModel f43212b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f43213c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: UserProfileViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/chat/Chat;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chat.userprofile.UserProfileViewModel$init$1$2$1", f = "UserProfileViewModel.kt", i = {}, l = {70}, m = "invokeSuspend", n = {}, s = {})
            /* loaded from: classes3.dex */
            public static final class a extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends List<? extends Chat>>, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f43214a;

                /* renamed from: b  reason: collision with root package name */
                private /* synthetic */ Object f43215b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ UserProfileViewModel f43216c;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: UserProfileViewModel.kt */
                @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/chat/Chat;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
                @DebugMetadata(c = "com.im.freechat.ui.chat.userprofile.UserProfileViewModel$init$1$2$1$1", f = "UserProfileViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                /* renamed from: com.im.freechat.ui.chat.userprofile.UserProfileViewModel$c$b$a$a  reason: collision with other inner class name */
                /* loaded from: classes3.dex */
                public static final class C0358a extends SuspendLambda implements Function2<List<? extends Chat>, Continuation<? super Unit>, Object> {

                    /* renamed from: a  reason: collision with root package name */
                    int f43217a;

                    /* renamed from: b  reason: collision with root package name */
                    /* synthetic */ Object f43218b;

                    /* renamed from: c  reason: collision with root package name */
                    final /* synthetic */ UserProfileViewModel f43219c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C0358a(UserProfileViewModel userProfileViewModel, Continuation<? super C0358a> continuation) {
                        super(2, continuation);
                        this.f43219c = userProfileViewModel;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.g
                    public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                        C0358a c0358a = new C0358a(this.f43219c, continuation);
                        c0358a.f43218b = obj;
                        return c0358a;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    @m8.h
                    /* renamed from: h */
                    public final Object invoke(@m8.g List<Chat> list, @m8.h Continuation<? super Unit> continuation) {
                        return ((C0358a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.f43217a == 0) {
                            ResultKt.throwOnFailure(obj);
                            this.f43219c.x().setValue((List) this.f43218b);
                            return Unit.INSTANCE;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(UserProfileViewModel userProfileViewModel, Continuation<? super a> continuation) {
                    super(2, continuation);
                    this.f43216c = userProfileViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    a aVar = new a(this.f43216c, continuation);
                    aVar.f43215b = obj;
                    return aVar;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<? extends List<Chat>> result, @m8.h Continuation<? super Unit> continuation) {
                    return ((a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    Object coroutine_suspended;
                    coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i4 = this.f43214a;
                    if (i4 == 0) {
                        ResultKt.throwOnFailure(obj);
                        C0358a c0358a = new C0358a(this.f43216c, null);
                        this.f43214a = 1;
                        if (((com.im.freechat.shared.entities.Result) this.f43215b).onSuccess(c0358a, this) == coroutine_suspended) {
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
            b(UserProfileViewModel userProfileViewModel, int i4, Continuation<? super b> continuation) {
                super(2, continuation);
                this.f43212b = userProfileViewModel;
                this.f43213c = i4;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new b(this.f43212b, this.f43213c, continuation);
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
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f43211a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    com.im.freechat.domain.usecase.members.e eVar = this.f43212b.f43179j;
                    Integer boxInt = Boxing.boxInt(this.f43213c);
                    a aVar = new a(this.f43212b, null);
                    this.f43211a = 1;
                    if (eVar.c(boxInt, aVar, this) == coroutine_suspended) {
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
        /* compiled from: UserProfileViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chat.userprofile.UserProfileViewModel$init$1$messagesDeffered$1", f = "UserProfileViewModel.kt", i = {}, l = {56}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.ui.chat.userprofile.UserProfileViewModel$c$c  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0359c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f43220a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ UserProfileViewModel f43221b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f43222c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: UserProfileViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/message/Message;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chat.userprofile.UserProfileViewModel$init$1$messagesDeffered$1$1", f = "UserProfileViewModel.kt", i = {}, l = {57}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.ui.chat.userprofile.UserProfileViewModel$c$c$a */
            /* loaded from: classes3.dex */
            public static final class a extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends List<? extends Message>>, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f43223a;

                /* renamed from: b  reason: collision with root package name */
                private /* synthetic */ Object f43224b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ UserProfileViewModel f43225c;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: UserProfileViewModel.kt */
                @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/message/Message;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
                @DebugMetadata(c = "com.im.freechat.ui.chat.userprofile.UserProfileViewModel$init$1$messagesDeffered$1$1$1", f = "UserProfileViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                /* renamed from: com.im.freechat.ui.chat.userprofile.UserProfileViewModel$c$c$a$a  reason: collision with other inner class name */
                /* loaded from: classes3.dex */
                public static final class C0360a extends SuspendLambda implements Function2<List<? extends Message>, Continuation<? super Unit>, Object> {

                    /* renamed from: a  reason: collision with root package name */
                    int f43226a;

                    /* renamed from: b  reason: collision with root package name */
                    /* synthetic */ Object f43227b;

                    /* renamed from: c  reason: collision with root package name */
                    final /* synthetic */ UserProfileViewModel f43228c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C0360a(UserProfileViewModel userProfileViewModel, Continuation<? super C0360a> continuation) {
                        super(2, continuation);
                        this.f43228c = userProfileViewModel;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.g
                    public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                        C0360a c0360a = new C0360a(this.f43228c, continuation);
                        c0360a.f43227b = obj;
                        return c0360a;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    @m8.h
                    /* renamed from: h */
                    public final Object invoke(@m8.g List<Message> list, @m8.h Continuation<? super Unit> continuation) {
                        return ((C0360a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.f43226a == 0) {
                            ResultKt.throwOnFailure(obj);
                            this.f43228c.f43185p.setValue((List) this.f43227b);
                            return Unit.INSTANCE;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(UserProfileViewModel userProfileViewModel, Continuation<? super a> continuation) {
                    super(2, continuation);
                    this.f43225c = userProfileViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    a aVar = new a(this.f43225c, continuation);
                    aVar.f43224b = obj;
                    return aVar;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<? extends List<Message>> result, @m8.h Continuation<? super Unit> continuation) {
                    return ((a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    Object coroutine_suspended;
                    coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i4 = this.f43223a;
                    if (i4 == 0) {
                        ResultKt.throwOnFailure(obj);
                        C0360a c0360a = new C0360a(this.f43225c, null);
                        this.f43223a = 1;
                        if (((com.im.freechat.shared.entities.Result) this.f43224b).onSuccess(c0360a, this) == coroutine_suspended) {
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
            C0359c(UserProfileViewModel userProfileViewModel, int i4, Continuation<? super C0359c> continuation) {
                super(2, continuation);
                this.f43221b = userProfileViewModel;
                this.f43222c = i4;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new C0359c(this.f43221b, this.f43222c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((C0359c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f43220a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    com.im.freechat.domain.usecase.messages.k kVar = this.f43221b.f43178i;
                    k.a aVar = new k.a(this.f43222c, 0L);
                    a aVar2 = new a(this.f43221b, null);
                    this.f43220a = 1;
                    if (kVar.c(aVar, aVar2, this) == coroutine_suspended) {
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
        c(int i4, boolean z9, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f43197d = i4;
            this.f43198e = z9;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            c cVar = new c(this.f43197d, this.f43198e, continuation);
            cVar.f43195b = obj;
            return cVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            y0 b10;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f43194a == 0) {
                ResultKt.throwOnFailure(obj);
                s0 s0Var = (s0) this.f43195b;
                UserProfileViewModel.this.J(this.f43197d);
                UserProfileViewModel.this.K(this.f43198e);
                b10 = kotlinx.coroutines.l.b(s0Var, null, null, new C0359c(UserProfileViewModel.this, this.f43197d, null), 3, null);
                UserProfileViewModel userProfileViewModel = UserProfileViewModel.this;
                userProfileViewModel.c(new a(userProfileViewModel, this.f43197d, b10, null));
                UserProfileViewModel userProfileViewModel2 = UserProfileViewModel.this;
                userProfileViewModel2.c(new b(userProfileViewModel2, this.f43197d, null));
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.userprofile.UserProfileViewModel$startChat$1", f = "UserProfileViewModel.kt", i = {}, l = {109}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43229a;

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

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43229a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                UserProfileViewModel.this.D().setValue(Boxing.boxBoolean(true));
                com.im.freechat.domain.usecase.chat.c cVar = UserProfileViewModel.this.f43173d;
                Integer boxInt = Boxing.boxInt(UserProfileViewModel.this.z());
                this.f43229a = 1;
                a10 = cVar.a(boxInt, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            UserProfileViewModel userProfileViewModel = UserProfileViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                userProfileViewModel.e(Directions.CHAT_DETAILS, BundleKt.bundleOf(TuplesKt.to(k4.b.f84734a, Boxing.boxInt(((Number) a10).intValue()))));
            }
            UserProfileViewModel userProfileViewModel2 = UserProfileViewModel.this;
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                userProfileViewModel2.h(b.s.f2312l1, new Object[0]);
            }
            UserProfileViewModel.this.D().setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.userprofile.UserProfileViewModel$unblockContact$1", f = "UserProfileViewModel.kt", i = {}, l = {101}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43231a;

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
            int i4 = this.f43231a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                UserProfileViewModel.this.D().setValue(Boxing.boxBoolean(true));
                com.im.freechat.domain.usecase.contact.j jVar = UserProfileViewModel.this.f43177h;
                Integer boxInt = Boxing.boxInt(UserProfileViewModel.this.z());
                this.f43231a = 1;
                a10 = jVar.a(boxInt, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            UserProfileViewModel userProfileViewModel = UserProfileViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                Unit unit = (Unit) a10;
                userProfileViewModel.h(b.s.f2324m2, new Object[0]);
            }
            UserProfileViewModel userProfileViewModel2 = UserProfileViewModel.this;
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                userProfileViewModel2.h(b.s.f2393t1, new Object[0]);
            }
            UserProfileViewModel.this.D().setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.userprofile.UserProfileViewModel$unfollowContact$1", f = "UserProfileViewModel.kt", i = {}, l = {85}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class f extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43233a;

        f(Continuation<? super f> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new f(continuation);
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
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43233a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                UserProfileViewModel.this.D().setValue(Boxing.boxBoolean(true));
                com.im.freechat.domain.usecase.contact.f fVar = UserProfileViewModel.this.f43175f;
                Integer boxInt = Boxing.boxInt(UserProfileViewModel.this.z());
                this.f43233a = 1;
                a10 = fVar.a(boxInt, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            UserProfileViewModel userProfileViewModel = UserProfileViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                Unit unit = (Unit) a10;
                userProfileViewModel.h(b.s.f2344o2, new Object[0]);
            }
            UserProfileViewModel userProfileViewModel2 = UserProfileViewModel.this;
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                userProfileViewModel2.h(b.s.f2403u1, new Object[0]);
            }
            UserProfileViewModel.this.D().setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    public UserProfileViewModel(@m8.g com.im.freechat.domain.usecase.contact.d listenContactInteractor, @m8.g com.im.freechat.domain.usecase.chat.c createSingleChatInteractor, @m8.g com.im.freechat.domain.usecase.contact.b followContactInteractor, @m8.g com.im.freechat.domain.usecase.contact.f removeFriendInteractor, @m8.g com.im.freechat.domain.usecase.contact.a blockContactInteractor, @m8.g com.im.freechat.domain.usecase.contact.j unblockContactInteractor, @m8.g com.im.freechat.domain.usecase.messages.k subscribeChatMessagesInteractor, @m8.g com.im.freechat.domain.usecase.members.e listenCommonGroupsInteractor) {
        Intrinsics.checkNotNullParameter(listenContactInteractor, "listenContactInteractor");
        Intrinsics.checkNotNullParameter(createSingleChatInteractor, "createSingleChatInteractor");
        Intrinsics.checkNotNullParameter(followContactInteractor, "followContactInteractor");
        Intrinsics.checkNotNullParameter(removeFriendInteractor, "removeFriendInteractor");
        Intrinsics.checkNotNullParameter(blockContactInteractor, "blockContactInteractor");
        Intrinsics.checkNotNullParameter(unblockContactInteractor, "unblockContactInteractor");
        Intrinsics.checkNotNullParameter(subscribeChatMessagesInteractor, "subscribeChatMessagesInteractor");
        Intrinsics.checkNotNullParameter(listenCommonGroupsInteractor, "listenCommonGroupsInteractor");
        this.f43172c = listenContactInteractor;
        this.f43173d = createSingleChatInteractor;
        this.f43174e = followContactInteractor;
        this.f43175f = removeFriendInteractor;
        this.f43176g = blockContactInteractor;
        this.f43177h = unblockContactInteractor;
        this.f43178i = subscribeChatMessagesInteractor;
        this.f43179j = listenCommonGroupsInteractor;
        this.f43180k = -1;
        this.f43182m = new MutableLiveData<>();
        this.f43183n = new MutableLiveData<>();
        this.f43184o = new MutableLiveData<>(Boolean.FALSE);
        MutableLiveData<List<Message>> mutableLiveData = new MutableLiveData<>();
        this.f43185p = mutableLiveData;
        LiveData<List<com.im.freechat.ui.chat.history.a>> map = Transformations.map(mutableLiveData, l.f43247a);
        Intrinsics.checkNotNullExpressionValue(map, "map(messages) { list ->\n…nt) }\n            }\n    }");
        this.f43186q = map;
        LiveData<List<com.im.freechat.ui.chat.history.a>> map2 = Transformations.map(mutableLiveData, m.f43248a);
        Intrinsics.checkNotNullExpressionValue(map2, "map(messages) { list ->\n…atId, it.content) }\n    }");
        this.f43187r = map2;
        LiveData<List<com.im.freechat.ui.chat.history.a>> map3 = Transformations.map(mutableLiveData, k.f43246a);
        Intrinsics.checkNotNullExpressionValue(map3, "map(messages) { list ->\n…atId, it.content) }\n    }");
        this.f43188s = map3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List G(List list) {
        int collectionSizeOrDefault;
        List<String> m9;
        Intrinsics.checkNotNullExpressionValue(list, "list");
        ArrayList<Message> arrayList = new ArrayList();
        for (Object obj : list) {
            Message message = (Message) obj;
            boolean z9 = false;
            if (p.A(message)) {
                String content = message.getContent();
                if ((content == null || (m9 = p.m(content)) == null || !(m9.isEmpty() ^ true)) ? false : true) {
                    z9 = true;
                }
            }
            if (z9) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (Message message2 : arrayList) {
            arrayList2.add(new com.im.freechat.ui.chat.history.a(null, message2.getSender(), message2.getSendTime(), message2.getChatId(), message2.getContent()));
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List H(List list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullExpressionValue(list, "list");
        ArrayList<Message> arrayList = new ArrayList();
        for (Object obj : list) {
            Message message = (Message) obj;
            if (p.v(message) || p.p(message) || p.s(message)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Message message2 : arrayList) {
            List<Attachment> attachments = message2.getAttachments();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(attachments, 10);
            ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
            for (Attachment attachment : attachments) {
                arrayList3.add(new com.im.freechat.ui.chat.history.a(attachment, message2.getSender(), message2.getSendTime(), message2.getChatId(), message2.getContent()));
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList2, arrayList3);
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List v(List list) {
        int collectionSizeOrDefault;
        Object first;
        Intrinsics.checkNotNullExpressionValue(list, "list");
        ArrayList<Message> arrayList = new ArrayList();
        for (Object obj : list) {
            if (p.q((Message) obj)) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (Message message : arrayList) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            arrayList2.add(new com.im.freechat.ui.chat.history.a((Attachment) first, message.getSender(), message.getSendTime(), message.getChatId(), message.getContent()));
        }
        return arrayList2;
    }

    @m8.g
    public final LiveData<List<com.im.freechat.ui.chat.history.a>> A() {
        return this.f43188s;
    }

    public final boolean B() {
        return this.f43181l;
    }

    @m8.g
    public final LiveData<List<com.im.freechat.ui.chat.history.a>> C() {
        return this.f43187r;
    }

    @m8.g
    public final MutableLiveData<Boolean> D() {
        return this.f43184o;
    }

    @m8.g
    public final LiveData<List<com.im.freechat.ui.chat.history.a>> E() {
        return this.f43186q;
    }

    @m8.g
    public final j2 F(int i4, boolean z9) {
        return c(new c(i4, z9, null));
    }

    public final void I() {
        if (this.f43181l) {
            com.im.freechat.base.a.f(this, Directions.BACK, null, 2, null);
        } else {
            L();
        }
    }

    public final void J(int i4) {
        this.f43180k = i4;
    }

    public final void K(boolean z9) {
        this.f43181l = z9;
    }

    @m8.g
    public final j2 L() {
        return c(new d(null));
    }

    @m8.g
    public final j2 M() {
        return c(new e(null));
    }

    @m8.g
    public final j2 N() {
        return c(new f(null));
    }

    @m8.g
    public final j2 u() {
        return c(new a(null));
    }

    @m8.g
    public final j2 w() {
        return c(new b(null));
    }

    @m8.g
    public final MutableLiveData<List<Chat>> x() {
        return this.f43183n;
    }

    @m8.g
    public final MutableLiveData<UserModel> y() {
        return this.f43182m;
    }

    public final int z() {
        return this.f43180k;
    }
}
