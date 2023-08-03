package com.im.freechat.ui.settings;

import android.net.Uri;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.MutableLiveData;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapperKt;
import com.im.freechat.shared.entities.FileInfo;
import com.im.freechat.shared.entities.auth.UserInfo;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;

/* compiled from: SettingsViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001SB_\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u0006\u0010#\u001a\u00020 \u0012\u0006\u0010'\u001a\u00020$\u0012\u0006\u0010+\u001a\u00020(\u0012\u0006\u0010/\u001a\u00020,\u0012\u0006\u00103\u001a\u000200\u0012\u0006\u00107\u001a\u000204\u0012\u0006\u0010;\u001a\u000208\u0012\u0006\u0010?\u001a\u00020<¢\u0006\u0004\bQ\u0010RJ\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0013\u001a\u00020\u0007R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0014\u00107\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u0014\u0010;\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R\u0014\u0010?\u001a\u00020<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R%\u0010F\u001a\u0010\u0012\f\u0012\n A*\u0004\u0018\u00010\u000e0\u000e0@8\u0006¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010ER%\u0010I\u001a\u0010\u0012\f\u0012\n A*\u0004\u0018\u00010\u000e0\u000e0@8\u0006¢\u0006\f\n\u0004\bG\u0010C\u001a\u0004\bH\u0010ER%\u0010L\u001a\u0010\u0012\f\u0012\n A*\u0004\u0018\u00010\u000e0\u000e0@8\u0006¢\u0006\f\n\u0004\bJ\u0010C\u001a\u0004\bK\u0010ER\u001d\u0010P\u001a\b\u0012\u0004\u0012\u00020M0@8\u0006¢\u0006\f\n\u0004\bN\u0010C\u001a\u0004\bO\u0010E¨\u0006T"}, d2 = {"Lcom/im/freechat/ui/settings/SettingsViewModel;", "Lcom/im/freechat/base/a;", "Lcom/im/freechat/ui/settings/SettingsViewModel$Directions;", "Lkotlinx/coroutines/j2;", y.b.f83920h, "Landroid/net/Uri;", "uri", "", ExifInterface.LONGITUDE_EAST, "", "nickname", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, ContactResponseMapperKt.BIO, "z", "", "enabled", "C", "B", "D", "t", "Lcom/im/freechat/domain/h;", "c", "Lcom/im/freechat/domain/h;", "fileUtility", "Lcom/im/freechat/domain/usecase/currentuser/a;", "d", "Lcom/im/freechat/domain/usecase/currentuser/a;", "getCurrentUserInteractor", "Lcom/im/freechat/domain/usecase/currentuser/i;", "e", "Lcom/im/freechat/domain/usecase/currentuser/i;", "setNicknameInteractor", "Lcom/im/freechat/domain/usecase/currentuser/n;", "f", "Lcom/im/freechat/domain/usecase/currentuser/n;", "updateAvatarInteractor", "Lcom/im/freechat/domain/usecase/currentuser/j;", "g", "Lcom/im/freechat/domain/usecase/currentuser/j;", "setNotificationsSettingInteractor", "Lcom/im/freechat/domain/usecase/currentuser/c;", "h", "Lcom/im/freechat/domain/usecase/currentuser/c;", "getNotificationsSettingInteractor", "Lcom/im/freechat/domain/usecase/currentuser/l;", ContextChain.TAG_INFRA, "Lcom/im/freechat/domain/usecase/currentuser/l;", "setSoundSettingInteractor", "Lcom/im/freechat/domain/usecase/currentuser/d;", "j", "Lcom/im/freechat/domain/usecase/currentuser/d;", "getSoundSettingInteractor", "Lcom/im/freechat/domain/usecase/currentuser/f;", "k", "Lcom/im/freechat/domain/usecase/currentuser/f;", "setBioInteractor", "Lcom/im/freechat/domain/usecase/currentuser/k;", "l", "Lcom/im/freechat/domain/usecase/currentuser/k;", "setShowLastOnlineInteractor", "Lcom/im/freechat/domain/usecase/chat/d;", "m", "Lcom/im/freechat/domain/usecase/chat/d;", "deleteAllChatsInteractor", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", "n", "Landroidx/lifecycle/MutableLiveData;", "u", "()Landroidx/lifecycle/MutableLiveData;", "avatarLoading", "o", "v", "notificationsOn", "p", "w", "soundOn", "Lcom/im/freechat/shared/entities/auth/UserInfo;", "q", y.b.f83919g, "userInfo", "<init>", "(Lcom/im/freechat/domain/h;Lcom/im/freechat/domain/usecase/currentuser/a;Lcom/im/freechat/domain/usecase/currentuser/i;Lcom/im/freechat/domain/usecase/currentuser/n;Lcom/im/freechat/domain/usecase/currentuser/j;Lcom/im/freechat/domain/usecase/currentuser/c;Lcom/im/freechat/domain/usecase/currentuser/l;Lcom/im/freechat/domain/usecase/currentuser/d;Lcom/im/freechat/domain/usecase/currentuser/f;Lcom/im/freechat/domain/usecase/currentuser/k;Lcom/im/freechat/domain/usecase/chat/d;)V", "Directions", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class SettingsViewModel extends com.im.freechat.base.a<Directions> {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.h f43583c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.currentuser.a f43584d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.currentuser.i f43585e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.currentuser.n f43586f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.currentuser.j f43587g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.currentuser.c f43588h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.currentuser.l f43589i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.currentuser.d f43590j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.currentuser.f f43591k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.currentuser.k f43592l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.d f43593m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final MutableLiveData<Boolean> f43594n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final MutableLiveData<Boolean> f43595o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private final MutableLiveData<Boolean> f43596p;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private final MutableLiveData<UserInfo> f43597q;

    /* compiled from: SettingsViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/im/freechat/ui/settings/SettingsViewModel$Directions;", "", "(Ljava/lang/String;I)V", "DATA_USAGE", "BLACKLISTED_CONTACTS", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Directions {
        DATA_USAGE,
        BLACKLISTED_CONTACTS
    }

    /* compiled from: SettingsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.settings.SettingsViewModel$clearAllChats$1", f = "SettingsViewModel.kt", i = {}, l = {76}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43599a;

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
            int i4 = this.f43599a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.chat.d dVar = SettingsViewModel.this.f43593m;
                Unit unit = Unit.INSTANCE;
                this.f43599a = 1;
                a10 = dVar.a(unit, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            SettingsViewModel settingsViewModel = SettingsViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                Unit unit2 = (Unit) a10;
                settingsViewModel.h(b.s.f2335n3, new Object[0]);
            }
            SettingsViewModel settingsViewModel2 = SettingsViewModel.this;
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                settingsViewModel2.h(b.s.f2325m3, new Object[0]);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SettingsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.settings.SettingsViewModel$init$1", f = "SettingsViewModel.kt", i = {}, l = {32, 33, 34}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43601a;

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

        /* JADX WARN: Removed duplicated region for block: B:23:0x0076  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0097 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00a0  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.f43601a
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L38
                if (r1 == r4) goto L2e
                if (r1 == r3) goto L24
                if (r1 != r2) goto L1c
                kotlin.ResultKt.throwOnFailure(r6)
                kotlin.Result r6 = (kotlin.Result) r6
                java.lang.Object r6 = r6.m79unboximpl()
                goto L98
            L1c:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L24:
                kotlin.ResultKt.throwOnFailure(r6)
                kotlin.Result r6 = (kotlin.Result) r6
                java.lang.Object r6 = r6.m79unboximpl()
                goto L6e
            L2e:
                kotlin.ResultKt.throwOnFailure(r6)
                kotlin.Result r6 = (kotlin.Result) r6
                java.lang.Object r6 = r6.m79unboximpl()
                goto L4c
            L38:
                kotlin.ResultKt.throwOnFailure(r6)
                com.im.freechat.ui.settings.SettingsViewModel r6 = com.im.freechat.ui.settings.SettingsViewModel.this
                com.im.freechat.domain.usecase.currentuser.a r6 = com.im.freechat.ui.settings.SettingsViewModel.k(r6)
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                r5.f43601a = r4
                java.lang.Object r6 = r6.a(r1, r5)
                if (r6 != r0) goto L4c
                return r0
            L4c:
                com.im.freechat.ui.settings.SettingsViewModel r1 = com.im.freechat.ui.settings.SettingsViewModel.this
                boolean r4 = kotlin.Result.m77isSuccessimpl(r6)
                if (r4 == 0) goto L5d
                com.im.freechat.shared.entities.auth.UserInfo r6 = (com.im.freechat.shared.entities.auth.UserInfo) r6
                androidx.lifecycle.MutableLiveData r1 = r1.x()
                r1.setValue(r6)
            L5d:
                com.im.freechat.ui.settings.SettingsViewModel r6 = com.im.freechat.ui.settings.SettingsViewModel.this
                com.im.freechat.domain.usecase.currentuser.c r6 = com.im.freechat.ui.settings.SettingsViewModel.l(r6)
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                r5.f43601a = r3
                java.lang.Object r6 = r6.a(r1, r5)
                if (r6 != r0) goto L6e
                return r0
            L6e:
                com.im.freechat.ui.settings.SettingsViewModel r1 = com.im.freechat.ui.settings.SettingsViewModel.this
                boolean r3 = kotlin.Result.m77isSuccessimpl(r6)
                if (r3 == 0) goto L87
                java.lang.Boolean r6 = (java.lang.Boolean) r6
                boolean r6 = r6.booleanValue()
                androidx.lifecycle.MutableLiveData r1 = r1.v()
                java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r6)
                r1.setValue(r6)
            L87:
                com.im.freechat.ui.settings.SettingsViewModel r6 = com.im.freechat.ui.settings.SettingsViewModel.this
                com.im.freechat.domain.usecase.currentuser.d r6 = com.im.freechat.ui.settings.SettingsViewModel.m(r6)
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                r5.f43601a = r2
                java.lang.Object r6 = r6.a(r1, r5)
                if (r6 != r0) goto L98
                return r0
            L98:
                com.im.freechat.ui.settings.SettingsViewModel r0 = com.im.freechat.ui.settings.SettingsViewModel.this
                boolean r1 = kotlin.Result.m77isSuccessimpl(r6)
                if (r1 == 0) goto Lb1
                java.lang.Boolean r6 = (java.lang.Boolean) r6
                boolean r6 = r6.booleanValue()
                androidx.lifecycle.MutableLiveData r0 = r0.w()
                java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r6)
                r0.setValue(r6)
            Lb1:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.settings.SettingsViewModel.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: SettingsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.settings.SettingsViewModel$setBio$1", f = "SettingsViewModel.kt", i = {}, l = {53}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43603a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f43604b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ SettingsViewModel f43605c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, SettingsViewModel settingsViewModel, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f43604b = str;
            this.f43605c = settingsViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(this.f43604b, this.f43605c, continuation);
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
            int i4 = this.f43603a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                String str = this.f43604b;
                UserInfo value = this.f43605c.x().getValue();
                if (Intrinsics.areEqual(str, value != null ? value.getBio() : null)) {
                    return Unit.INSTANCE;
                }
                com.im.freechat.domain.usecase.currentuser.f fVar = this.f43605c.f43591k;
                String str2 = this.f43604b;
                this.f43603a = 1;
                a10 = fVar.a(str2, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            SettingsViewModel settingsViewModel = this.f43605c;
            if (Result.m77isSuccessimpl(a10)) {
                settingsViewModel.x().setValue((UserInfo) a10);
            }
            SettingsViewModel settingsViewModel2 = this.f43605c;
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                settingsViewModel2.h(b.s.U8, new Object[0]);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SettingsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.settings.SettingsViewModel$setNickname$1", f = "SettingsViewModel.kt", i = {}, l = {46}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43606a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f43607b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ SettingsViewModel f43608c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, SettingsViewModel settingsViewModel, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f43607b = str;
            this.f43608c = settingsViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new d(this.f43607b, this.f43608c, continuation);
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
            boolean isBlank;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43606a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                String str = this.f43607b;
                UserInfo value = this.f43608c.x().getValue();
                if (Intrinsics.areEqual(str, value != null ? value.getNickname() : null)) {
                    return Unit.INSTANCE;
                }
                com.im.freechat.domain.usecase.currentuser.i iVar = this.f43608c.f43585e;
                String str2 = this.f43607b;
                SettingsViewModel settingsViewModel = this.f43608c;
                isBlank = StringsKt__StringsJVMKt.isBlank(str2);
                if (isBlank) {
                    UserInfo value2 = settingsViewModel.x().getValue();
                    str2 = String.valueOf(value2 != null ? Boxing.boxInt(value2.getUserId()) : null);
                }
                this.f43606a = 1;
                a10 = iVar.a(str2, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            SettingsViewModel settingsViewModel2 = this.f43608c;
            if (Result.m77isSuccessimpl(a10)) {
                settingsViewModel2.x().setValue((UserInfo) a10);
            }
            SettingsViewModel settingsViewModel3 = this.f43608c;
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                settingsViewModel3.h(b.s.X8, new Object[0]);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SettingsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.settings.SettingsViewModel$setNotificationsOn$1", f = "SettingsViewModel.kt", i = {}, l = {67}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43609a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f43611c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(boolean z9, Continuation<? super e> continuation) {
            super(2, continuation);
            this.f43611c = z9;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new e(this.f43611c, continuation);
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
            int i4 = this.f43609a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                SettingsViewModel.this.v().setValue(Boxing.boxBoolean(this.f43611c));
                com.im.freechat.domain.usecase.currentuser.j jVar = SettingsViewModel.this.f43587g;
                Boolean boxBoolean = Boxing.boxBoolean(this.f43611c);
                this.f43609a = 1;
                if (jVar.a(boxBoolean, this) == coroutine_suspended) {
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

    /* compiled from: SettingsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.settings.SettingsViewModel$setShowLastOnline$1", f = "SettingsViewModel.kt", i = {}, l = {59}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class f extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43612a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f43614c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(boolean z9, Continuation<? super f> continuation) {
            super(2, continuation);
            this.f43614c = z9;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new f(this.f43614c, continuation);
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
            Object obj2;
            UserInfo userInfo;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43612a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.currentuser.k kVar = SettingsViewModel.this.f43592l;
                Boolean boxBoolean = Boxing.boxBoolean(this.f43614c);
                this.f43612a = 1;
                Object a10 = kVar.a(boxBoolean, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                obj2 = a10;
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                obj2 = ((Result) obj).m79unboximpl();
            }
            SettingsViewModel settingsViewModel = SettingsViewModel.this;
            boolean z9 = this.f43614c;
            if (Result.m77isSuccessimpl(obj2)) {
                Unit unit = (Unit) obj2;
                MutableLiveData<UserInfo> x9 = settingsViewModel.x();
                UserInfo value = settingsViewModel.x().getValue();
                if (value != null) {
                    Intrinsics.checkNotNullExpressionValue(value, "value");
                    userInfo = value.copy((r24 & 1) != 0 ? value.userId : 0, (r24 & 2) != 0 ? value.nickname : null, (r24 & 4) != 0 ? value.token : null, (r24 & 8) != 0 ? value.imToken : null, (r24 & 16) != 0 ? value.avatar : null, (r24 & 32) != 0 ? value.phoneNumber : null, (r24 & 64) != 0 ? value.managementRole : null, (r24 & 128) != 0 ? value.isMystery : false, (r24 & 256) != 0 ? value.lastOnline : z9 ? Long.MAX_VALUE : 1L, (r24 & 512) != 0 ? value.bio : null);
                } else {
                    userInfo = null;
                }
                x9.setValue(userInfo);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SettingsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.settings.SettingsViewModel$setSoundOn$1", f = "SettingsViewModel.kt", i = {}, l = {72}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class g extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43615a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f43617c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(boolean z9, Continuation<? super g> continuation) {
            super(2, continuation);
            this.f43617c = z9;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new g(this.f43617c, continuation);
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
            int i4 = this.f43615a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                SettingsViewModel.this.w().setValue(Boxing.boxBoolean(this.f43617c));
                com.im.freechat.domain.usecase.currentuser.l lVar = SettingsViewModel.this.f43589i;
                Boolean boxBoolean = Boxing.boxBoolean(this.f43617c);
                this.f43615a = 1;
                if (lVar.a(boxBoolean, this) == coroutine_suspended) {
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

    /* compiled from: SettingsViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.settings.SettingsViewModel$updateAvatar$1", f = "SettingsViewModel.kt", i = {}, l = {39}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class h extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43618a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Uri f43620c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(Uri uri, Continuation<? super h> continuation) {
            super(2, continuation);
            this.f43620c = uri;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new h(this.f43620c, continuation);
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
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43618a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                FileInfo e4 = SettingsViewModel.this.f43583c.e(this.f43620c.toString());
                if (e4 == null) {
                    return Unit.INSTANCE;
                }
                com.im.freechat.domain.usecase.currentuser.n nVar = SettingsViewModel.this.f43586f;
                this.f43618a = 1;
                a10 = nVar.a(e4, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            SettingsViewModel settingsViewModel = SettingsViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                settingsViewModel.x().setValue((UserInfo) a10);
            }
            SettingsViewModel settingsViewModel2 = SettingsViewModel.this;
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                settingsViewModel2.h(b.s.W8, new Object[0]);
            }
            return Unit.INSTANCE;
        }
    }

    public SettingsViewModel(@m8.g com.im.freechat.domain.h fileUtility, @m8.g com.im.freechat.domain.usecase.currentuser.a getCurrentUserInteractor, @m8.g com.im.freechat.domain.usecase.currentuser.i setNicknameInteractor, @m8.g com.im.freechat.domain.usecase.currentuser.n updateAvatarInteractor, @m8.g com.im.freechat.domain.usecase.currentuser.j setNotificationsSettingInteractor, @m8.g com.im.freechat.domain.usecase.currentuser.c getNotificationsSettingInteractor, @m8.g com.im.freechat.domain.usecase.currentuser.l setSoundSettingInteractor, @m8.g com.im.freechat.domain.usecase.currentuser.d getSoundSettingInteractor, @m8.g com.im.freechat.domain.usecase.currentuser.f setBioInteractor, @m8.g com.im.freechat.domain.usecase.currentuser.k setShowLastOnlineInteractor, @m8.g com.im.freechat.domain.usecase.chat.d deleteAllChatsInteractor) {
        Intrinsics.checkNotNullParameter(fileUtility, "fileUtility");
        Intrinsics.checkNotNullParameter(getCurrentUserInteractor, "getCurrentUserInteractor");
        Intrinsics.checkNotNullParameter(setNicknameInteractor, "setNicknameInteractor");
        Intrinsics.checkNotNullParameter(updateAvatarInteractor, "updateAvatarInteractor");
        Intrinsics.checkNotNullParameter(setNotificationsSettingInteractor, "setNotificationsSettingInteractor");
        Intrinsics.checkNotNullParameter(getNotificationsSettingInteractor, "getNotificationsSettingInteractor");
        Intrinsics.checkNotNullParameter(setSoundSettingInteractor, "setSoundSettingInteractor");
        Intrinsics.checkNotNullParameter(getSoundSettingInteractor, "getSoundSettingInteractor");
        Intrinsics.checkNotNullParameter(setBioInteractor, "setBioInteractor");
        Intrinsics.checkNotNullParameter(setShowLastOnlineInteractor, "setShowLastOnlineInteractor");
        Intrinsics.checkNotNullParameter(deleteAllChatsInteractor, "deleteAllChatsInteractor");
        this.f43583c = fileUtility;
        this.f43584d = getCurrentUserInteractor;
        this.f43585e = setNicknameInteractor;
        this.f43586f = updateAvatarInteractor;
        this.f43587g = setNotificationsSettingInteractor;
        this.f43588h = getNotificationsSettingInteractor;
        this.f43589i = setSoundSettingInteractor;
        this.f43590j = getSoundSettingInteractor;
        this.f43591k = setBioInteractor;
        this.f43592l = setShowLastOnlineInteractor;
        this.f43593m = deleteAllChatsInteractor;
        this.f43594n = new MutableLiveData<>(Boolean.FALSE);
        Boolean bool = Boolean.TRUE;
        this.f43595o = new MutableLiveData<>(bool);
        this.f43596p = new MutableLiveData<>(bool);
        this.f43597q = new MutableLiveData<>(null);
    }

    public final void A(@m8.g String nickname) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        d(this.f43594n, new d(nickname, this, null));
    }

    @m8.g
    public final j2 B(boolean z9) {
        return c(new e(z9, null));
    }

    @m8.g
    public final j2 C(boolean z9) {
        return c(new f(z9, null));
    }

    @m8.g
    public final j2 D(boolean z9) {
        return c(new g(z9, null));
    }

    public final void E(@m8.g Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        d(this.f43594n, new h(uri, null));
    }

    public final void t() {
        d(this.f43594n, new a(null));
    }

    @m8.g
    public final MutableLiveData<Boolean> u() {
        return this.f43594n;
    }

    @m8.g
    public final MutableLiveData<Boolean> v() {
        return this.f43595o;
    }

    @m8.g
    public final MutableLiveData<Boolean> w() {
        return this.f43596p;
    }

    @m8.g
    public final MutableLiveData<UserInfo> x() {
        return this.f43597q;
    }

    @m8.g
    public final j2 y() {
        return c(new b(null));
    }

    public final void z(@m8.g String bio) {
        Intrinsics.checkNotNullParameter(bio, "bio");
        d(this.f43594n, new c(bio, this, null));
    }
}
