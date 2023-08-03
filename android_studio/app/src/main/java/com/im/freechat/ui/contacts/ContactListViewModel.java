package com.im.freechat.ui.contacts;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.domain.usecase.contact.ListenBlockedContactsInteractor;
import com.im.freechat.domain.usecase.contact.ListenContactListInteractor;
import com.im.freechat.domain.usecase.contact.ListenFollowingsInteractor;
import com.im.freechat.domain.usecase.contact.k;
import com.im.freechat.shared.entities.contact.ContactType;
import com.im.freechat.shared.entities.contact.UserModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;

/* compiled from: ContactListViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001^BO\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0006\u0010)\u001a\u00020&\u0012\u0006\u0010-\u001a\u00020*\u0012\u0006\u00101\u001a\u00020.\u0012\u0006\u00105\u001a\u000202\u0012\u0006\u00109\u001a\u000206\u0012\u0006\u0010=\u001a\u00020:¢\u0006\u0004\b\\\u0010]J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0005J\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0015J\u0016\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u000eR\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\"\u0010D\u001a\u00020\n8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR%\u0010K\u001a\u0010\u0012\f\u0012\n F*\u0004\u0018\u00010\u00050\u00050E8\u0006¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010JR#\u0010O\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120L0E8\u0006¢\u0006\f\n\u0004\bM\u0010H\u001a\u0004\bN\u0010JR\"\u0010Q\u001a\u0010\u0012\f\u0012\n F*\u0004\u0018\u00010\u000e0\u000e0E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010HR \u0010S\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120L0E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010HR \u0010U\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120L0E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010HR#\u0010[\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120L0V8\u0006¢\u0006\f\n\u0004\bW\u0010X\u001a\u0004\bY\u0010Z¨\u0006_"}, d2 = {"Lcom/im/freechat/ui/contacts/ContactListViewModel;", "Lcom/im/freechat/base/a;", "Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;", "Lkotlinx/coroutines/j2;", "K", "", "showService", "O", "N", "M", "Lcom/im/freechat/shared/entities/contact/ContactType;", "type", "", "L", "", "filter", "typeAhead", ExifInterface.LONGITUDE_EAST, "Lcom/im/freechat/shared/entities/contact/UserModel;", "contact", "P", "", com.im.freechat.ui.chat.userprofile.j.f43244a, "D", "name", "R", "Lcom/im/freechat/domain/usecase/contact/ListenFollowingsInteractor;", "c", "Lcom/im/freechat/domain/usecase/contact/ListenFollowingsInteractor;", "listenFollowingsInteractor", "Lcom/im/freechat/domain/usecase/contact/ListenBlockedContactsInteractor;", "d", "Lcom/im/freechat/domain/usecase/contact/ListenBlockedContactsInteractor;", "ListenBlockedContactsInteractor", "Lcom/im/freechat/domain/usecase/contact/ListenContactListInteractor;", "e", "Lcom/im/freechat/domain/usecase/contact/ListenContactListInteractor;", "ListenContactListInteractor", "Lcom/im/freechat/domain/usecase/chat/c;", "f", "Lcom/im/freechat/domain/usecase/chat/c;", "createSingleChatInteractor", "Lcom/im/freechat/domain/usecase/contact/c;", "g", "Lcom/im/freechat/domain/usecase/contact/c;", "getServiceChatIdInteractor", "Lcom/im/freechat/domain/usecase/contact/f;", "h", "Lcom/im/freechat/domain/usecase/contact/f;", "removeFriendInteractor", "Lcom/im/freechat/domain/usecase/contact/j;", ContextChain.TAG_INFRA, "Lcom/im/freechat/domain/usecase/contact/j;", "unblockContactInteractor", "Lcom/im/freechat/domain/usecase/contact/k;", "j", "Lcom/im/freechat/domain/usecase/contact/k;", "updateUserMaskInteractor", "Lcom/im/freechat/domain/usecase/contact/g;", "k", "Lcom/im/freechat/domain/usecase/contact/g;", "searchContactInteractor", "l", "Lcom/im/freechat/shared/entities/contact/ContactType;", "H", "()Lcom/im/freechat/shared/entities/contact/ContactType;", "Q", "(Lcom/im/freechat/shared/entities/contact/ContactType;)V", "currentType", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", "m", "Landroidx/lifecycle/MutableLiveData;", "J", "()Landroidx/lifecycle/MutableLiveData;", "loading", "", "n", "I", "extraContacts", "o", "activeFilter", "p", "originalList", "q", "foundItems", "Landroidx/lifecycle/MediatorLiveData;", "r", "Landroidx/lifecycle/MediatorLiveData;", "G", "()Landroidx/lifecycle/MediatorLiveData;", "contactList", "<init>", "(Lcom/im/freechat/domain/usecase/contact/ListenFollowingsInteractor;Lcom/im/freechat/domain/usecase/contact/ListenBlockedContactsInteractor;Lcom/im/freechat/domain/usecase/contact/ListenContactListInteractor;Lcom/im/freechat/domain/usecase/chat/c;Lcom/im/freechat/domain/usecase/contact/c;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/j;Lcom/im/freechat/domain/usecase/contact/k;Lcom/im/freechat/domain/usecase/contact/g;)V", "Directions", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ContactListViewModel extends com.im.freechat.base.a<Directions> {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final ListenFollowingsInteractor f43370c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final ListenBlockedContactsInteractor f43371d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final ListenContactListInteractor f43372e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.c f43373f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.contact.c f43374g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.contact.f f43375h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.contact.j f43376i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.contact.k f43377j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.contact.g f43378k;

    /* renamed from: l  reason: collision with root package name */
    public ContactType f43379l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final MutableLiveData<Boolean> f43380m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final MutableLiveData<List<UserModel>> f43381n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final MutableLiveData<String> f43382o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private final MutableLiveData<List<UserModel>> f43383p;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private final MutableLiveData<List<UserModel>> f43384q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private final MediatorLiveData<List<UserModel>> f43385r;

    /* compiled from: ContactListViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;", "", "(Ljava/lang/String;I)V", "CHAT_DETAILS", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Directions {
        CHAT_DETAILS
    }

    /* compiled from: ContactListViewModel.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ContactType.values().length];
            iArr[ContactType.FOLLOW.ordinal()] = 1;
            iArr[ContactType.BLOCK.ordinal()] = 2;
            iArr[ContactType.NONE.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* compiled from: ContactListViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.contacts.ContactListViewModel$createChat$1", f = "ContactListViewModel.kt", i = {}, l = {82, 86}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43387a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f43388b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ContactListViewModel f43389c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(int i4, ContactListViewModel contactListViewModel, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f43388b = i4;
            this.f43389c = contactListViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f43388b, this.f43389c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x006c  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0097  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00bb  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.f43387a
                java.lang.String r2 = "chatId"
                r3 = 2
                r4 = 0
                r5 = 1
                if (r1 == 0) goto L2e
                if (r1 == r5) goto L24
                if (r1 != r3) goto L1c
                kotlin.ResultKt.throwOnFailure(r8)
                kotlin.Result r8 = (kotlin.Result) r8
                java.lang.Object r8 = r8.m79unboximpl()
                goto L8f
            L1c:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L24:
                kotlin.ResultKt.throwOnFailure(r8)
                kotlin.Result r8 = (kotlin.Result) r8
                java.lang.Object r8 = r8.m79unboximpl()
                goto L46
            L2e:
                kotlin.ResultKt.throwOnFailure(r8)
                int r8 = r7.f43388b
                if (r8 != r5) goto L7a
                com.im.freechat.ui.contacts.ContactListViewModel r8 = r7.f43389c
                com.im.freechat.domain.usecase.contact.c r8 = com.im.freechat.ui.contacts.ContactListViewModel.p(r8)
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                r7.f43387a = r5
                java.lang.Object r8 = r8.a(r1, r7)
                if (r8 != r0) goto L46
                return r0
            L46:
                com.im.freechat.ui.contacts.ContactListViewModel r0 = r7.f43389c
                boolean r1 = kotlin.Result.m77isSuccessimpl(r8)
                if (r1 == 0) goto L64
                r1 = r8
                java.lang.Integer r1 = (java.lang.Integer) r1
                if (r1 == 0) goto L64
                com.im.freechat.ui.contacts.ContactListViewModel$Directions r3 = com.im.freechat.ui.contacts.ContactListViewModel.Directions.CHAT_DETAILS
                kotlin.Pair[] r6 = new kotlin.Pair[r5]
                kotlin.Pair r1 = kotlin.TuplesKt.to(r2, r1)
                r6[r4] = r1
                android.os.Bundle r1 = androidx.core.os.BundleKt.bundleOf(r6)
                r0.e(r3, r1)
            L64:
                com.im.freechat.ui.contacts.ContactListViewModel r0 = r7.f43389c
                java.lang.Throwable r8 = kotlin.Result.m73exceptionOrNullimpl(r8)
                if (r8 == 0) goto Lcd
                int r1 = b4.b.s.f2312l1
                java.lang.Object[] r2 = new java.lang.Object[r5]
                java.lang.String r8 = r8.getMessage()
                r2[r4] = r8
                r0.h(r1, r2)
                goto Lcd
            L7a:
                com.im.freechat.ui.contacts.ContactListViewModel r8 = r7.f43389c
                com.im.freechat.domain.usecase.chat.c r8 = com.im.freechat.ui.contacts.ContactListViewModel.n(r8)
                int r1 = r7.f43388b
                java.lang.Integer r1 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r1)
                r7.f43387a = r3
                java.lang.Object r8 = r8.a(r1, r7)
                if (r8 != r0) goto L8f
                return r0
            L8f:
                com.im.freechat.ui.contacts.ContactListViewModel r0 = r7.f43389c
                boolean r1 = kotlin.Result.m77isSuccessimpl(r8)
                if (r1 == 0) goto Lb3
                r1 = r8
                java.lang.Number r1 = (java.lang.Number) r1
                int r1 = r1.intValue()
                com.im.freechat.ui.contacts.ContactListViewModel$Directions r3 = com.im.freechat.ui.contacts.ContactListViewModel.Directions.CHAT_DETAILS
                kotlin.Pair[] r6 = new kotlin.Pair[r5]
                java.lang.Integer r1 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r1)
                kotlin.Pair r1 = kotlin.TuplesKt.to(r2, r1)
                r6[r4] = r1
                android.os.Bundle r1 = androidx.core.os.BundleKt.bundleOf(r6)
                r0.e(r3, r1)
            Lb3:
                com.im.freechat.ui.contacts.ContactListViewModel r0 = r7.f43389c
                java.lang.Throwable r8 = kotlin.Result.m73exceptionOrNullimpl(r8)
                if (r8 == 0) goto Lcd
                int r1 = b4.b.s.f2312l1
                java.lang.Object[] r2 = new java.lang.Object[r5]
                java.lang.String r3 = r8.getMessage()
                r2[r4] = r3
                r0.h(r1, r2)
                timber.log.Timber$b r0 = timber.log.Timber.f93860a
                r0.e(r8)
            Lcd:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.contacts.ContactListViewModel.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContactListViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.contacts.ContactListViewModel$globalSearch$1", f = "ContactListViewModel.kt", i = {}, l = {100}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43390a;

        c(Continuation<? super c> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43390a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.contact.g gVar = ContactListViewModel.this.f43378k;
                T value = ContactListViewModel.this.f43382o.getValue();
                Intrinsics.checkNotNull(value);
                this.f43390a = 1;
                a10 = gVar.a(value, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            ContactListViewModel contactListViewModel = ContactListViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                contactListViewModel.f43384q.setValue((List) a10);
            }
            ContactListViewModel contactListViewModel2 = ContactListViewModel.this;
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                contactListViewModel2.h(b.s.f2230d1, new Object[0]);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContactListViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.contacts.ContactListViewModel$listenAll$1", f = "ContactListViewModel.kt", i = {}, l = {120}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43392a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f43394c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ContactListViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/contact/UserModel;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.contacts.ContactListViewModel$listenAll$1$1", f = "ContactListViewModel.kt", i = {0}, l = {121, 122}, m = "invokeSuspend", n = {"$this$invoke"}, s = {"L$0"})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends List<? extends UserModel>>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f43395a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f43396b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ ContactListViewModel f43397c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: ContactListViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/contact/UserModel;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.contacts.ContactListViewModel$listenAll$1$1$1", f = "ContactListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.ui.contacts.ContactListViewModel$d$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0364a extends SuspendLambda implements Function2<List<? extends UserModel>, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f43398a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f43399b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ ContactListViewModel f43400c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0364a(ContactListViewModel contactListViewModel, Continuation<? super C0364a> continuation) {
                    super(2, continuation);
                    this.f43400c = contactListViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    C0364a c0364a = new C0364a(this.f43400c, continuation);
                    c0364a.f43399b = obj;
                    return c0364a;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g List<UserModel> list, @m8.h Continuation<? super Unit> continuation) {
                    return ((C0364a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f43398a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f43400c.f43383p.setValue((List) this.f43399b);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: ContactListViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.contacts.ContactListViewModel$listenAll$1$1$2", f = "ContactListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* loaded from: classes3.dex */
            public static final class b extends SuspendLambda implements Function2<Throwable, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f43401a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ ContactListViewModel f43402b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                b(ContactListViewModel contactListViewModel, Continuation<? super b> continuation) {
                    super(2, continuation);
                    this.f43402b = contactListViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    return new b(this.f43402b, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                public final Object invoke(@m8.h Throwable th, @m8.h Continuation<? super Unit> continuation) {
                    return ((b) create(th, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f43401a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f43402b.h(b.s.f2230d1, new Object[0]);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ContactListViewModel contactListViewModel, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f43397c = contactListViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f43397c, continuation);
                aVar.f43396b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<? extends List<UserModel>> result, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                com.im.freechat.shared.entities.Result result;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f43395a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    result = (com.im.freechat.shared.entities.Result) this.f43396b;
                    C0364a c0364a = new C0364a(this.f43397c, null);
                    this.f43396b = result;
                    this.f43395a = 1;
                    if (result.onSuccess(c0364a, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    if (i4 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                } else {
                    result = (com.im.freechat.shared.entities.Result) this.f43396b;
                    ResultKt.throwOnFailure(obj);
                }
                b bVar = new b(this.f43397c, null);
                this.f43396b = null;
                this.f43395a = 2;
                if (result.onFailure(bVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(boolean z9, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f43394c = z9;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new d(this.f43394c, continuation);
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
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43392a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                ListenContactListInteractor listenContactListInteractor = ContactListViewModel.this.f43372e;
                Boolean boxBoolean = Boxing.boxBoolean(this.f43394c);
                a aVar = new a(ContactListViewModel.this, null);
                this.f43392a = 1;
                if (listenContactListInteractor.c(boxBoolean, aVar, this) == coroutine_suspended) {
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
    /* compiled from: ContactListViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.contacts.ContactListViewModel$listenBlocked$1", f = "ContactListViewModel.kt", i = {}, l = {113}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43403a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f43405c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ContactListViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/contact/UserModel;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.contacts.ContactListViewModel$listenBlocked$1$1", f = "ContactListViewModel.kt", i = {0}, l = {114, 115}, m = "invokeSuspend", n = {"$this$invoke"}, s = {"L$0"})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends List<? extends UserModel>>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f43406a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f43407b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ ContactListViewModel f43408c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: ContactListViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/contact/UserModel;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.contacts.ContactListViewModel$listenBlocked$1$1$1", f = "ContactListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.ui.contacts.ContactListViewModel$e$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0365a extends SuspendLambda implements Function2<List<? extends UserModel>, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f43409a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f43410b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ ContactListViewModel f43411c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0365a(ContactListViewModel contactListViewModel, Continuation<? super C0365a> continuation) {
                    super(2, continuation);
                    this.f43411c = contactListViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    C0365a c0365a = new C0365a(this.f43411c, continuation);
                    c0365a.f43410b = obj;
                    return c0365a;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g List<UserModel> list, @m8.h Continuation<? super Unit> continuation) {
                    return ((C0365a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f43409a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f43411c.f43383p.setValue((List) this.f43410b);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: ContactListViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.contacts.ContactListViewModel$listenBlocked$1$1$2", f = "ContactListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* loaded from: classes3.dex */
            public static final class b extends SuspendLambda implements Function2<Throwable, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f43412a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ ContactListViewModel f43413b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                b(ContactListViewModel contactListViewModel, Continuation<? super b> continuation) {
                    super(2, continuation);
                    this.f43413b = contactListViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    return new b(this.f43413b, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                public final Object invoke(@m8.h Throwable th, @m8.h Continuation<? super Unit> continuation) {
                    return ((b) create(th, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f43412a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f43413b.h(b.s.f2230d1, new Object[0]);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ContactListViewModel contactListViewModel, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f43408c = contactListViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f43408c, continuation);
                aVar.f43407b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<? extends List<UserModel>> result, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                com.im.freechat.shared.entities.Result result;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f43406a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    result = (com.im.freechat.shared.entities.Result) this.f43407b;
                    C0365a c0365a = new C0365a(this.f43408c, null);
                    this.f43407b = result;
                    this.f43406a = 1;
                    if (result.onSuccess(c0365a, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    if (i4 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                } else {
                    result = (com.im.freechat.shared.entities.Result) this.f43407b;
                    ResultKt.throwOnFailure(obj);
                }
                b bVar = new b(this.f43408c, null);
                this.f43407b = null;
                this.f43406a = 2;
                if (result.onFailure(bVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(boolean z9, Continuation<? super e> continuation) {
            super(2, continuation);
            this.f43405c = z9;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new e(this.f43405c, continuation);
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
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43403a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                ListenBlockedContactsInteractor listenBlockedContactsInteractor = ContactListViewModel.this.f43371d;
                Boolean boxBoolean = Boxing.boxBoolean(this.f43405c);
                a aVar = new a(ContactListViewModel.this, null);
                this.f43403a = 1;
                if (listenBlockedContactsInteractor.c(boxBoolean, aVar, this) == coroutine_suspended) {
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
    /* compiled from: ContactListViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.contacts.ContactListViewModel$listenFollowings$1", f = "ContactListViewModel.kt", i = {}, l = {106}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class f extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43414a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f43416c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ContactListViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/contact/UserModel;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.contacts.ContactListViewModel$listenFollowings$1$1", f = "ContactListViewModel.kt", i = {0}, l = {107, 108}, m = "invokeSuspend", n = {"$this$invoke"}, s = {"L$0"})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends List<? extends UserModel>>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f43417a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f43418b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ ContactListViewModel f43419c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: ContactListViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/contact/UserModel;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.contacts.ContactListViewModel$listenFollowings$1$1$1", f = "ContactListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.ui.contacts.ContactListViewModel$f$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0366a extends SuspendLambda implements Function2<List<? extends UserModel>, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f43420a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f43421b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ ContactListViewModel f43422c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0366a(ContactListViewModel contactListViewModel, Continuation<? super C0366a> continuation) {
                    super(2, continuation);
                    this.f43422c = contactListViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    C0366a c0366a = new C0366a(this.f43422c, continuation);
                    c0366a.f43421b = obj;
                    return c0366a;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g List<UserModel> list, @m8.h Continuation<? super Unit> continuation) {
                    return ((C0366a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f43420a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f43422c.f43383p.setValue((List) this.f43421b);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: ContactListViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.contacts.ContactListViewModel$listenFollowings$1$1$2", f = "ContactListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* loaded from: classes3.dex */
            public static final class b extends SuspendLambda implements Function2<Throwable, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f43423a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ ContactListViewModel f43424b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                b(ContactListViewModel contactListViewModel, Continuation<? super b> continuation) {
                    super(2, continuation);
                    this.f43424b = contactListViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    return new b(this.f43424b, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                public final Object invoke(@m8.h Throwable th, @m8.h Continuation<? super Unit> continuation) {
                    return ((b) create(th, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f43423a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f43424b.h(b.s.f2230d1, new Object[0]);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ContactListViewModel contactListViewModel, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f43419c = contactListViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f43419c, continuation);
                aVar.f43418b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<? extends List<UserModel>> result, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                com.im.freechat.shared.entities.Result result;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f43417a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    result = (com.im.freechat.shared.entities.Result) this.f43418b;
                    C0366a c0366a = new C0366a(this.f43419c, null);
                    this.f43418b = result;
                    this.f43417a = 1;
                    if (result.onSuccess(c0366a, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    if (i4 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                } else {
                    result = (com.im.freechat.shared.entities.Result) this.f43418b;
                    ResultKt.throwOnFailure(obj);
                }
                b bVar = new b(this.f43419c, null);
                this.f43418b = null;
                this.f43417a = 2;
                if (result.onFailure(bVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(boolean z9, Continuation<? super f> continuation) {
            super(2, continuation);
            this.f43416c = z9;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new f(this.f43416c, continuation);
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
            int i4 = this.f43414a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                ListenFollowingsInteractor listenFollowingsInteractor = ContactListViewModel.this.f43370c;
                Boolean boxBoolean = Boxing.boxBoolean(this.f43416c);
                a aVar = new a(ContactListViewModel.this, null);
                this.f43414a = 1;
                if (listenFollowingsInteractor.c(boxBoolean, aVar, this) == coroutine_suspended) {
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

    /* compiled from: ContactListViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.contacts.ContactListViewModel$removeItem$1", f = "ContactListViewModel.kt", i = {}, l = {74, 75}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class g extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43425a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ UserModel f43427c;

        /* compiled from: ContactListViewModel.kt */
        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ContactType.values().length];
                iArr[ContactType.FOLLOW.ordinal()] = 1;
                iArr[ContactType.BLOCK.ordinal()] = 2;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(UserModel userModel, Continuation<? super g> continuation) {
            super(2, continuation);
            this.f43427c = userModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new g(this.f43427c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((g) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43425a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                int i10 = a.$EnumSwitchMapping$0[ContactListViewModel.this.H().ordinal()];
                if (i10 == 1) {
                    com.im.freechat.domain.usecase.contact.f fVar = ContactListViewModel.this.f43375h;
                    Integer boxInt = Boxing.boxInt(this.f43427c.getUserId());
                    this.f43425a = 1;
                    if (fVar.a(boxInt, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i10 == 2) {
                    com.im.freechat.domain.usecase.contact.j jVar = ContactListViewModel.this.f43376i;
                    Integer boxInt2 = Boxing.boxInt(this.f43427c.getUserId());
                    this.f43425a = 2;
                    if (jVar.a(boxInt2, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else if (i4 != 1 && i4 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ContactListViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.contacts.ContactListViewModel$updateContactMask$1", f = "ContactListViewModel.kt", i = {}, l = {96}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class h extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43428a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f43430c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f43431d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(int i4, String str, Continuation<? super h> continuation) {
            super(2, continuation);
            this.f43430c = i4;
            this.f43431d = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new h(this.f43430c, this.f43431d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((h) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43428a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.contact.k kVar = ContactListViewModel.this.f43377j;
                k.a aVar = new k.a(this.f43430c, this.f43431d.length() == 0 ? String.valueOf(this.f43430c) : this.f43431d);
                this.f43428a = 1;
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

    public ContactListViewModel(@m8.g ListenFollowingsInteractor listenFollowingsInteractor, @m8.g ListenBlockedContactsInteractor ListenBlockedContactsInteractor, @m8.g ListenContactListInteractor ListenContactListInteractor, @m8.g com.im.freechat.domain.usecase.chat.c createSingleChatInteractor, @m8.g com.im.freechat.domain.usecase.contact.c getServiceChatIdInteractor, @m8.g com.im.freechat.domain.usecase.contact.f removeFriendInteractor, @m8.g com.im.freechat.domain.usecase.contact.j unblockContactInteractor, @m8.g com.im.freechat.domain.usecase.contact.k updateUserMaskInteractor, @m8.g com.im.freechat.domain.usecase.contact.g searchContactInteractor) {
        List emptyList;
        List emptyList2;
        List emptyList3;
        Intrinsics.checkNotNullParameter(listenFollowingsInteractor, "listenFollowingsInteractor");
        Intrinsics.checkNotNullParameter(ListenBlockedContactsInteractor, "ListenBlockedContactsInteractor");
        Intrinsics.checkNotNullParameter(ListenContactListInteractor, "ListenContactListInteractor");
        Intrinsics.checkNotNullParameter(createSingleChatInteractor, "createSingleChatInteractor");
        Intrinsics.checkNotNullParameter(getServiceChatIdInteractor, "getServiceChatIdInteractor");
        Intrinsics.checkNotNullParameter(removeFriendInteractor, "removeFriendInteractor");
        Intrinsics.checkNotNullParameter(unblockContactInteractor, "unblockContactInteractor");
        Intrinsics.checkNotNullParameter(updateUserMaskInteractor, "updateUserMaskInteractor");
        Intrinsics.checkNotNullParameter(searchContactInteractor, "searchContactInteractor");
        this.f43370c = listenFollowingsInteractor;
        this.f43371d = ListenBlockedContactsInteractor;
        this.f43372e = ListenContactListInteractor;
        this.f43373f = createSingleChatInteractor;
        this.f43374g = getServiceChatIdInteractor;
        this.f43375h = removeFriendInteractor;
        this.f43376i = unblockContactInteractor;
        this.f43377j = updateUserMaskInteractor;
        this.f43378k = searchContactInteractor;
        this.f43380m = new MutableLiveData<>(Boolean.FALSE);
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        MutableLiveData<List<UserModel>> mutableLiveData = new MutableLiveData<>(emptyList);
        this.f43381n = mutableLiveData;
        MutableLiveData<String> mutableLiveData2 = new MutableLiveData<>("");
        this.f43382o = mutableLiveData2;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        MutableLiveData<List<UserModel>> mutableLiveData3 = new MutableLiveData<>(emptyList2);
        this.f43383p = mutableLiveData3;
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        MutableLiveData<List<UserModel>> mutableLiveData4 = new MutableLiveData<>(emptyList3);
        this.f43384q = mutableLiveData4;
        final MediatorLiveData<List<UserModel>> mediatorLiveData = new MediatorLiveData<>();
        mediatorLiveData.addSource(mutableLiveData3, new Observer() { // from class: com.im.freechat.ui.contacts.m
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ContactListViewModel.y(MediatorLiveData.this, this, (List) obj);
            }
        });
        mediatorLiveData.addSource(mutableLiveData, new Observer() { // from class: com.im.freechat.ui.contacts.n
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ContactListViewModel.z(MediatorLiveData.this, this, (List) obj);
            }
        });
        mediatorLiveData.addSource(mutableLiveData4, new Observer() { // from class: com.im.freechat.ui.contacts.o
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ContactListViewModel.A(MediatorLiveData.this, this, (List) obj);
            }
        });
        mediatorLiveData.addSource(mutableLiveData2, new Observer() { // from class: com.im.freechat.ui.contacts.l
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ContactListViewModel.B(MediatorLiveData.this, this, (String) obj);
            }
        });
        this.f43385r = mediatorLiveData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(MediatorLiveData this_apply, ContactListViewModel this$0, List list) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C(this_apply, this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(MediatorLiveData this_apply, ContactListViewModel this$0, String str) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C(this_apply, this$0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a7, code lost:
        if (r3.contains(r4) != false) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x006d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static final void C(androidx.lifecycle.MediatorLiveData<java.util.List<com.im.freechat.shared.entities.contact.UserModel>> r8, com.im.freechat.ui.contacts.ContactListViewModel r9) {
        /*
            androidx.lifecycle.MutableLiveData<java.util.List<com.im.freechat.shared.entities.contact.UserModel>> r0 = r9.f43383p
            java.lang.Object r0 = r0.getValue()
            java.util.List r0 = (java.util.List) r0
            if (r0 != 0) goto Le
            java.util.List r0 = kotlin.collections.CollectionsKt.emptyList()
        Le:
            java.lang.String r1 = "originalList.value ?: emptyList<UserModel>()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            androidx.lifecycle.MutableLiveData<java.util.List<com.im.freechat.shared.entities.contact.UserModel>> r1 = r9.f43381n
            java.lang.Object r1 = r1.getValue()
            java.util.List r1 = (java.util.List) r1
            if (r1 != 0) goto L21
            java.util.List r1 = kotlin.collections.CollectionsKt.emptyList()
        L21:
            java.util.List r0 = kotlin.collections.CollectionsKt.plus(r0, r1)
            androidx.lifecycle.MutableLiveData<java.util.List<com.im.freechat.shared.entities.contact.UserModel>> r1 = r9.f43384q
            java.lang.Object r1 = r1.getValue()
            java.util.List r1 = (java.util.List) r1
            if (r1 != 0) goto L33
            java.util.List r1 = kotlin.collections.CollectionsKt.emptyList()
        L33:
            java.util.List r0 = kotlin.collections.CollectionsKt.plus(r0, r1)
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Iterator r0 = r0.iterator()
        L45:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L64
            java.lang.Object r3 = r0.next()
            r4 = r3
            com.im.freechat.shared.entities.contact.UserModel r4 = (com.im.freechat.shared.entities.contact.UserModel) r4
            int r4 = r4.getUserId()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            boolean r4 = r1.add(r4)
            if (r4 == 0) goto L45
            r2.add(r3)
            goto L45
        L64:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r1 = r2.iterator()
        L6d:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto Lb0
            java.lang.Object r2 = r1.next()
            r3 = r2
            com.im.freechat.shared.entities.contact.UserModel r3 = (com.im.freechat.shared.entities.contact.UserModel) r3
            androidx.lifecycle.MutableLiveData<java.lang.String> r4 = r9.f43382o
            java.lang.Object r4 = r4.getValue()
            java.lang.CharSequence r4 = (java.lang.CharSequence) r4
            r5 = 0
            r6 = 1
            if (r4 == 0) goto L8f
            boolean r4 = kotlin.text.StringsKt.isBlank(r4)
            if (r4 == 0) goto L8d
            goto L8f
        L8d:
            r4 = 0
            goto L90
        L8f:
            r4 = 1
        L90:
            if (r4 != 0) goto La9
            androidx.lifecycle.MutableLiveData<java.lang.String> r4 = r9.f43382o
            java.lang.Object r4 = r4.getValue()
            java.lang.String r4 = (java.lang.String) r4
            if (r4 != 0) goto L9e
            java.lang.String r4 = ""
        L9e:
            java.lang.String r7 = "activeFilter.value ?: \"\""
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r7)
            boolean r3 = r3.contains(r4)
            if (r3 == 0) goto Laa
        La9:
            r5 = 1
        Laa:
            if (r5 == 0) goto L6d
            r0.add(r2)
            goto L6d
        Lb0:
            r8.setValue(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.contacts.ContactListViewModel.C(androidx.lifecycle.MediatorLiveData, com.im.freechat.ui.contacts.ContactListViewModel):void");
    }

    public static /* synthetic */ void F(ContactListViewModel contactListViewModel, String str, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        contactListViewModel.E(str, z9);
    }

    private final j2 K() {
        return c(new c(null));
    }

    private final j2 M(boolean z9) {
        return c(new d(z9, null));
    }

    private final j2 N(boolean z9) {
        return c(new e(z9, null));
    }

    private final j2 O(boolean z9) {
        return c(new f(z9, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(MediatorLiveData this_apply, ContactListViewModel this$0, List list) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C(this_apply, this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(MediatorLiveData this_apply, ContactListViewModel this$0, List list) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C(this_apply, this$0);
    }

    public final void D(int i4) {
        d(this.f43380m, new b(i4, this, null));
    }

    public final void E(@m8.g String filter, boolean z9) {
        Intrinsics.checkNotNullParameter(filter, "filter");
        this.f43382o.setValue(filter);
        if (z9) {
            return;
        }
        K();
    }

    @m8.g
    public final MediatorLiveData<List<UserModel>> G() {
        return this.f43385r;
    }

    @m8.g
    public final ContactType H() {
        ContactType contactType = this.f43379l;
        if (contactType != null) {
            return contactType;
        }
        Intrinsics.throwUninitializedPropertyAccessException("currentType");
        return null;
    }

    @m8.g
    public final MutableLiveData<List<UserModel>> I() {
        return this.f43381n;
    }

    @m8.g
    public final MutableLiveData<Boolean> J() {
        return this.f43380m;
    }

    public final void L(@m8.g ContactType type, boolean z9) {
        Intrinsics.checkNotNullParameter(type, "type");
        Q(type);
        int i4 = a.$EnumSwitchMapping$0[type.ordinal()];
        if (i4 == 1) {
            O(z9);
        } else if (i4 == 2) {
            N(z9);
        } else if (i4 != 3) {
        } else {
            M(z9);
        }
    }

    @m8.g
    public final j2 P(@m8.g UserModel contact) {
        Intrinsics.checkNotNullParameter(contact, "contact");
        return c(new g(contact, null));
    }

    public final void Q(@m8.g ContactType contactType) {
        Intrinsics.checkNotNullParameter(contactType, "<set-?>");
        this.f43379l = contactType;
    }

    @m8.g
    public final j2 R(int i4, @m8.g String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return c(new h(i4, name, null));
    }
}
