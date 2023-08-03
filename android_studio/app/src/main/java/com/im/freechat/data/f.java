package com.im.freechat.data;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import com.facebook.common.callercontext.ContextChain;
import com.google.android.exoplayer2.extractor.ts.a0;
import com.im.freechat.data.sources.api.ApiService;
import com.im.freechat.data.sources.api.entities.auth.UserResponse;
import com.im.freechat.data.sources.api.entities.auth.UserResponseMapper;
import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapperKt;
import com.im.freechat.domain.o;
import com.im.freechat.shared.entities.AwaitingLogin;
import com.im.freechat.shared.entities.LoggedOut;
import com.im.freechat.shared.entities.LoginState;
import com.im.freechat.shared.entities.auth.UserInfo;
import com.im.freechat.shared.entities.chat.ChatMember;
import java.util.NoSuchElementException;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.j0;
import kotlinx.coroutines.flow.t;

/* compiled from: LoginRepositoryImpl.kt */
@Metadata(bv = {}, d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010>\u001a\u00020<\u0012\u0006\u0010A\u001a\u00020?\u0012\u0006\u0010D\u001a\u00020B\u0012\u0006\u0010G\u001a\u00020E¢\u0006\u0004\bK\u0010LJ\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J7\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0096@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\n\u0010\u0010\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\tH\u0016J\u0013\u0010\u0013\u001a\u00020\tH\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\fH\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017JU\u0010 \u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\t2\b\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u001eH\u0096@ø\u0001\u0000¢\u0006\u0004\b \u0010!J\u0013\u0010\"\u001a\u00020\fH\u0096@ø\u0001\u0000¢\u0006\u0004\b\"\u0010\u0014J\b\u0010#\u001a\u00020\u0007H\u0016J\u0013\u0010$\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\b$\u0010\u0014J\u0013\u0010%\u001a\u00020\tH\u0096@ø\u0001\u0000¢\u0006\u0004\b%\u0010\u0014J\u001b\u0010'\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\tH\u0096@ø\u0001\u0000¢\u0006\u0004\b'\u0010(J\u000e\u0010+\u001a\b\u0012\u0004\u0012\u00020*0)H\u0016J\u0013\u0010,\u001a\u00020\rH\u0096@ø\u0001\u0000¢\u0006\u0004\b,\u0010\u0014J\u001b\u0010.\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\rH\u0096@ø\u0001\u0000¢\u0006\u0004\b.\u0010/J\b\u00100\u001a\u00020\rH\u0016J\u001b\u00101\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\rH\u0096@ø\u0001\u0000¢\u0006\u0004\b1\u0010/J\b\u00102\u001a\u00020\rH\u0016J\u001b\u00104\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u0007H\u0096@ø\u0001\u0000¢\u0006\u0004\b4\u00105J\b\u00106\u001a\u00020\u0007H\u0016J\n\u00107\u001a\u0004\u0018\u00010\tH\u0016J\u0013\u00108\u001a\u00020\u001eH\u0096@ø\u0001\u0000¢\u0006\u0004\b8\u0010\u0014J\u001b\u0010:\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u001eH\u0096@ø\u0001\u0000¢\u0006\u0004\b:\u0010;R\u0014\u0010>\u001a\u00020<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010=R\u0014\u0010A\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010@R\u0014\u0010D\u001a\u00020B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010CR\u0014\u0010G\u001a\u00020E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010FR\u001a\u0010J\u001a\b\u0012\u0004\u0012\u00020*0H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010I\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006M"}, d2 = {"Lcom/im/freechat/data/f;", "Lcom/im/freechat/domain/k;", "Lcom/im/freechat/shared/entities/auth/PhoneNumber;", "phoneNumber", "", "b", "(Lcom/im/freechat/shared/entities/auth/PhoneNumber;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "smsCode", "", "deviceId", "Lkotlin/Pair;", "Lcom/im/freechat/shared/entities/auth/UserInfo;", "", "f", "(Lcom/im/freechat/shared/entities/auth/PhoneNumber;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "m", "token", "g", "c", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "userInfo", "p", "(Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "nickName", "avatar", "userId", "role", "isMystery", "imToken", "", "lastSeen", "j", "(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "v", "n", "t", "q", "code", "a", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/i;", "Lcom/im/freechat/shared/entities/LoginState;", ContextChain.TAG_INFRA, "h", "enabled", "d", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "e", "r", "k", "height", "l", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "o", "u", "w", com.qennnsad.aknkaksd.domain.usecase.anchor.j.f47980a, "s", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/data/sources/api/ApiService;", "Lcom/im/freechat/data/sources/api/ApiService;", "apiService", "Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;", "Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;", "userResponseMapper", "Landroid/content/SharedPreferences;", "Landroid/content/SharedPreferences;", "authSharedPreferences", "Lcom/im/freechat/domain/o;", "Lcom/im/freechat/domain/o;", "phoneUtil", "Lkotlinx/coroutines/flow/t;", "Lkotlinx/coroutines/flow/t;", "loginStatusFlow", "<init>", "(Lcom/im/freechat/data/sources/api/ApiService;Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;Landroid/content/SharedPreferences;Lcom/im/freechat/domain/o;)V", "data_release"}, k = 1, mv = {1, 7, 1})
@SuppressLint({"ApplySharedPref"})
/* loaded from: classes2.dex */
public final class f implements com.im.freechat.domain.k {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final ApiService f39771a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final UserResponseMapper f39772b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final SharedPreferences f39773c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final o f39774d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final t<LoginState> f39775e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.LoginRepositoryImpl", f = "LoginRepositoryImpl.kt", i = {0}, l = {a0.f22979w}, m = "assertLoggedIn", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f39776a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f39777b;

        /* renamed from: d  reason: collision with root package name */
        int f39779d;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39777b = obj;
            this.f39779d |= Integer.MIN_VALUE;
            return f.this.h(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.LoginRepositoryImpl", f = "LoginRepositoryImpl.kt", i = {}, l = {49}, m = "requestSMSCode", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f39780a;

        /* renamed from: c  reason: collision with root package name */
        int f39782c;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39780a = obj;
            this.f39782c |= Integer.MIN_VALUE;
            return f.this.b(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoginRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.LoginRepositoryImpl", f = "LoginRepositoryImpl.kt", i = {0, 0}, l = {65}, m = "signInBySMS", n = {"this", "phoneNumber"}, s = {"L$0", "L$1"})
    /* loaded from: classes2.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f39783a;

        /* renamed from: b  reason: collision with root package name */
        Object f39784b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f39785c;

        /* renamed from: e  reason: collision with root package name */
        int f39787e;

        c(Continuation<? super c> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39785c = obj;
            this.f39787e |= Integer.MIN_VALUE;
            return f.this.f(null, 0, null, this);
        }
    }

    public f(@m8.g ApiService apiService, @m8.g UserResponseMapper userResponseMapper, @m8.g SharedPreferences authSharedPreferences, @m8.g o phoneUtil) {
        Intrinsics.checkNotNullParameter(apiService, "apiService");
        Intrinsics.checkNotNullParameter(userResponseMapper, "userResponseMapper");
        Intrinsics.checkNotNullParameter(authSharedPreferences, "authSharedPreferences");
        Intrinsics.checkNotNullParameter(phoneUtil, "phoneUtil");
        this.f39771a = apiService;
        this.f39772b = userResponseMapper;
        this.f39773c = authSharedPreferences;
        this.f39774d = phoneUtil;
        this.f39775e = j0.a(AwaitingLogin.INSTANCE);
    }

    @Override // com.im.freechat.domain.k
    @m8.h
    public Object a(@m8.g String str, @m8.g Continuation<? super Unit> continuation) {
        this.f39773c.edit().putString("countryCode", str).commit();
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0062  */
    @Override // com.im.freechat.domain.k
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g com.im.freechat.shared.entities.auth.PhoneNumber r11, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof com.im.freechat.data.f.b
            if (r0 == 0) goto L13
            r0 = r12
            com.im.freechat.data.f$b r0 = (com.im.freechat.data.f.b) r0
            int r1 = r0.f39782c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f39782c = r1
            goto L18
        L13:
            com.im.freechat.data.f$b r0 = new com.im.freechat.data.f$b
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.f39780a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f39782c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r12)
            goto L57
        L29:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L31:
            kotlin.ResultKt.throwOnFailure(r12)
            com.im.freechat.data.sources.api.ApiService r12 = r10.f39771a
            com.im.freechat.data.sources.api.entities.auth.RequestSmsBody r2 = new com.im.freechat.data.sources.api.entities.auth.RequestSmsBody
            java.lang.String r4 = r11.getCountryCode()
            r7 = 0
            r8 = 4
            r9 = 0
            java.lang.String r5 = "+"
            java.lang.String r6 = ""
            java.lang.String r4 = kotlin.text.StringsKt.replace$default(r4, r5, r6, r7, r8, r9)
            java.lang.String r11 = r11.getPhoneNumber()
            r2.<init>(r4, r11)
            r0.f39782c = r3
            java.lang.Object r12 = r12.requestSMS(r2, r0)
            if (r12 != r1) goto L57
            return r1
        L57:
            com.im.freechat.data.sources.api.entities.Response r12 = (com.im.freechat.data.sources.api.entities.Response) r12
            java.lang.Object r11 = r12.getData()
            if (r11 == 0) goto L62
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        L62:
            com.im.freechat.shared.entities.ApiException r11 = new com.im.freechat.shared.entities.ApiException
            int r0 = r12.getCode()
            java.lang.String r12 = r12.getMessage()
            r11.<init>(r0, r12)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.f.b(com.im.freechat.shared.entities.auth.PhoneNumber, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.k
    @m8.h
    public Object c(@m8.g Continuation<? super String> continuation) {
        String string = this.f39773c.getString("deviceUUID", null);
        if (string == null) {
            String it = UUID.randomUUID().toString();
            this.f39773c.edit().putString("deviceUUID", it).commit();
            Intrinsics.checkNotNullExpressionValue(it, "it");
            return it;
        }
        return string;
    }

    @Override // com.im.freechat.domain.k
    @m8.h
    public Object d(boolean z9, @m8.g Continuation<? super Unit> continuation) {
        this.f39773c.edit().putBoolean("notificationsOn", z9).commit();
        return Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.k
    public boolean e() {
        return this.f39773c.getBoolean("notificationsOn", true);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00bf  */
    @Override // com.im.freechat.domain.k
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object f(@m8.g com.im.freechat.shared.entities.auth.PhoneNumber r15, int r16, @m8.g java.lang.String r17, @m8.g kotlin.coroutines.Continuation<? super kotlin.Pair<com.im.freechat.shared.entities.auth.UserInfo, java.lang.Boolean>> r18) {
        /*
            r14 = this;
            r0 = r14
            r1 = r18
            boolean r2 = r1 instanceof com.im.freechat.data.f.c
            if (r2 == 0) goto L16
            r2 = r1
            com.im.freechat.data.f$c r2 = (com.im.freechat.data.f.c) r2
            int r3 = r2.f39787e
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L16
            int r3 = r3 - r4
            r2.f39787e = r3
            goto L1b
        L16:
            com.im.freechat.data.f$c r2 = new com.im.freechat.data.f$c
            r2.<init>(r1)
        L1b:
            java.lang.Object r1 = r2.f39785c
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.f39787e
            r5 = 1
            if (r4 == 0) goto L3c
            if (r4 != r5) goto L34
            java.lang.Object r3 = r2.f39784b
            com.im.freechat.shared.entities.auth.PhoneNumber r3 = (com.im.freechat.shared.entities.auth.PhoneNumber) r3
            java.lang.Object r2 = r2.f39783a
            com.im.freechat.data.f r2 = (com.im.freechat.data.f) r2
            kotlin.ResultKt.throwOnFailure(r1)
            goto L78
        L34:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L3c:
            kotlin.ResultKt.throwOnFailure(r1)
            kotlinx.coroutines.flow.t<com.im.freechat.shared.entities.LoginState> r1 = r0.f39775e
            com.im.freechat.shared.entities.AwaitingLogin r4 = com.im.freechat.shared.entities.AwaitingLogin.INSTANCE
            r1.setValue(r4)
            com.im.freechat.data.sources.api.ApiService r1 = r0.f39771a
            com.im.freechat.data.sources.api.entities.auth.SigninBySmsBody r4 = new com.im.freechat.data.sources.api.entities.auth.SigninBySmsBody
            java.lang.String r6 = r15.getCountryCode()
            r9 = 0
            r10 = 4
            r11 = 0
            java.lang.String r7 = "+"
            java.lang.String r8 = ""
            java.lang.String r7 = kotlin.text.StringsKt.replace$default(r6, r7, r8, r9, r10, r11)
            java.lang.String r8 = r15.getPhoneNumber()
            r12 = 16
            r13 = 0
            r6 = r4
            r9 = r16
            r10 = r17
            r6.<init>(r7, r8, r9, r10, r11, r12, r13)
            r2.f39783a = r0
            r6 = r15
            r2.f39784b = r6
            r2.f39787e = r5
            java.lang.Object r1 = r1.signInBySms(r4, r2)
            if (r1 != r3) goto L76
            return r3
        L76:
            r2 = r0
            r3 = r6
        L78:
            com.im.freechat.data.sources.api.entities.Response r1 = (com.im.freechat.data.sources.api.entities.Response) r1
            java.lang.Object r4 = r1.getData()
            com.im.freechat.data.sources.api.entities.auth.UserResponse r4 = (com.im.freechat.data.sources.api.entities.auth.UserResponse) r4
            if (r4 == 0) goto Lbf
            kotlinx.coroutines.flow.t<com.im.freechat.shared.entities.LoginState> r6 = r2.f39775e
            com.im.freechat.shared.entities.LoggedIn r7 = com.im.freechat.shared.entities.LoggedIn.INSTANCE
            r6.setValue(r7)
            kotlin.Pair r6 = new kotlin.Pair
            com.im.freechat.data.sources.api.entities.auth.UserResponseMapper r2 = r2.f39772b
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = r3.getCountryCode()
            r7.append(r8)
            java.lang.String r3 = r3.getPhoneNumber()
            r7.append(r3)
            java.lang.String r3 = r7.toString()
            r7 = 0
            com.im.freechat.shared.entities.auth.UserInfo r2 = r2.map(r4, r3, r7)
            java.lang.Object r1 = r1.getData()
            com.im.freechat.data.sources.api.entities.auth.UserResponse r1 = (com.im.freechat.data.sources.api.entities.auth.UserResponse) r1
            int r1 = r1.getFirstLogin()
            if (r1 != r5) goto Lb6
            goto Lb7
        Lb6:
            r5 = 0
        Lb7:
            java.lang.Boolean r1 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            r6.<init>(r2, r1)
            return r6
        Lbf:
            kotlinx.coroutines.flow.t<com.im.freechat.shared.entities.LoginState> r2 = r2.f39775e
            com.im.freechat.shared.entities.LoggedOut r3 = com.im.freechat.shared.entities.LoggedOut.INSTANCE
            r2.setValue(r3)
            com.im.freechat.shared.entities.ApiException r2 = new com.im.freechat.shared.entities.ApiException
            int r3 = r1.getCode()
            java.lang.String r1 = r1.getMessage()
            r2.<init>(r3, r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.f.f(com.im.freechat.shared.entities.auth.PhoneNumber, int, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.k
    public void g(@m8.g String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.f39775e.setValue(AwaitingLogin.INSTANCE);
        this.f39773c.edit().putString("imToken", token).commit();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004f A[Catch: NoSuchElementException -> 0x002e, TRY_LEAVE, TryCatch #0 {NoSuchElementException -> 0x002e, blocks: (B:12:0x002a, B:22:0x0047, B:24:0x004f), top: B:37:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0068  */
    @Override // com.im.freechat.domain.k
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object h(@m8.g kotlin.coroutines.Continuation<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.im.freechat.data.f.a
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.data.f$a r0 = (com.im.freechat.data.f.a) r0
            int r1 = r0.f39779d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f39779d = r1
            goto L18
        L13:
            com.im.freechat.data.f$a r0 = new com.im.freechat.data.f$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f39777b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f39779d
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 != r4) goto L30
            java.lang.Object r0 = r0.f39776a
            com.im.freechat.data.f r0 = (com.im.freechat.data.f) r0
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.util.NoSuchElementException -> L2e
            goto L47
        L2e:
            goto L61
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.f39776a = r5     // Catch: java.util.NoSuchElementException -> L60
            r0.f39779d = r4     // Catch: java.util.NoSuchElementException -> L60
            java.lang.Object r6 = r5.v(r0)     // Catch: java.util.NoSuchElementException -> L60
            if (r6 != r1) goto L46
            return r1
        L46:
            r0 = r5
        L47:
            com.im.freechat.shared.entities.auth.UserInfo r6 = (com.im.freechat.shared.entities.auth.UserInfo) r6     // Catch: java.util.NoSuchElementException -> L2e
            int r1 = r6.getUserId()     // Catch: java.util.NoSuchElementException -> L2e
            if (r1 == 0) goto L61
            java.lang.String r6 = r6.getImToken()     // Catch: java.util.NoSuchElementException -> L2e
            int r6 = r6.length()     // Catch: java.util.NoSuchElementException -> L2e
            if (r6 <= 0) goto L5b
            r6 = 1
            goto L5c
        L5b:
            r6 = 0
        L5c:
            if (r6 == 0) goto L61
            r3 = 1
            goto L61
        L60:
            r0 = r5
        L61:
            kotlinx.coroutines.flow.t<com.im.freechat.shared.entities.LoginState> r6 = r0.f39775e
            if (r3 == 0) goto L68
            com.im.freechat.shared.entities.LoggedIn r0 = com.im.freechat.shared.entities.LoggedIn.INSTANCE
            goto L6a
        L68:
            com.im.freechat.shared.entities.LoggedOut r0 = com.im.freechat.shared.entities.LoggedOut.INSTANCE
        L6a:
            r6.setValue(r0)
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.f.h(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.k
    @m8.g
    public kotlinx.coroutines.flow.i<LoginState> i() {
        return this.f39775e;
    }

    @Override // com.im.freechat.domain.k
    @m8.h
    public Object j(@m8.g String str, @m8.h String str2, int i4, int i10, boolean z9, @m8.g String str3, @m8.g String str4, long j4, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object p9 = p(this.f39772b.map(new UserResponse(i4, str, str3, str4, str2, i10, 0, j4), "", z9), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return p9 == coroutine_suspended ? p9 : Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.k
    public boolean k() {
        return this.f39773c.getBoolean("soundOn", true);
    }

    @Override // com.im.freechat.domain.k
    @m8.h
    public Object l(int i4, @m8.g Continuation<? super Unit> continuation) {
        this.f39773c.edit().putInt("keyboardHeight", i4).commit();
        return Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.k
    @m8.h
    public String m() {
        return this.f39773c.getString("imToken", null);
    }

    @Override // com.im.freechat.domain.k
    public int n() {
        return this.f39773c.getInt("userID", 0);
    }

    @Override // com.im.freechat.domain.k
    public int o() {
        return this.f39773c.getInt("keyboardHeight", 0);
    }

    @Override // com.im.freechat.domain.k
    @m8.h
    public Object p(@m8.g UserInfo userInfo, @m8.g Continuation<? super Unit> continuation) {
        SharedPreferences.Editor edit = this.f39773c.edit();
        edit.putInt("userID", userInfo.getUserId());
        edit.putString("nickname", userInfo.getNickname());
        edit.putString("avatar", userInfo.getAvatar());
        edit.putString("imToken", userInfo.getImToken());
        edit.putString("token", userInfo.getToken());
        edit.putString("phoneNumber", userInfo.getPhoneNumber());
        edit.putString("managementRole", userInfo.getManagementRole().name());
        edit.putString(ContactResponseMapperKt.BIO, userInfo.getBio());
        edit.putLong("last_online", userInfo.getLastOnline());
        edit.putBoolean("is_mystery", userInfo.isMystery());
        edit.commit();
        return Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.k
    @m8.h
    public Object q(@m8.g Continuation<? super String> continuation) {
        String string = this.f39773c.getString("countryCode", this.f39774d.b());
        Intrinsics.checkNotNull(string);
        return string;
    }

    @Override // com.im.freechat.domain.k
    @m8.h
    public Object r(boolean z9, @m8.g Continuation<? super Unit> continuation) {
        this.f39773c.edit().putBoolean("soundOn", z9).commit();
        return Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.k
    @m8.h
    public Object s(long j4, @m8.g Continuation<? super Unit> continuation) {
        this.f39773c.edit().putLong("lastSyncTime", j4).commit();
        return Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.k
    @m8.h
    public Object t(@m8.g Continuation<? super Unit> continuation) {
        this.f39775e.setValue(LoggedOut.INSTANCE);
        SharedPreferences.Editor edit = this.f39773c.edit();
        edit.putInt("userID", 0);
        edit.putString("nickname", null);
        edit.putString("avatar", null);
        edit.putString("imToken", null);
        edit.putString("token", null);
        edit.putString("phoneNumber", null);
        edit.putString(ContactResponseMapperKt.BIO, null);
        edit.commit();
        return Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.k
    @m8.h
    public String u() {
        return this.f39773c.getString(ContactResponseMapperKt.BIO, null);
    }

    @Override // com.im.freechat.domain.k
    @m8.h
    public Object v(@m8.g Continuation<? super UserInfo> continuation) {
        SharedPreferences sharedPreferences = this.f39773c;
        int i4 = sharedPreferences.getInt("userID", 0);
        String string = sharedPreferences.getString("nickname", null);
        if (string != null) {
            String string2 = sharedPreferences.getString("token", null);
            if (string2 != null) {
                String string3 = sharedPreferences.getString("imToken", null);
                if (string3 != null) {
                    String string4 = sharedPreferences.getString("avatar", null);
                    String string5 = sharedPreferences.getString("phoneNumber", null);
                    String string6 = sharedPreferences.getString(ContactResponseMapperKt.BIO, null);
                    ChatMember.ManagementRole managementRole = ChatMember.ManagementRole.NORMAL;
                    String string7 = sharedPreferences.getString("managementRole", managementRole.name());
                    if (string7 == null) {
                        string7 = managementRole.name();
                    }
                    Intrinsics.checkNotNullExpressionValue(string7, "getString(PREF_MANAGEMEN…anagementRole.NORMAL.name");
                    ChatMember.ManagementRole valueOf = ChatMember.ManagementRole.valueOf(string7);
                    long j4 = sharedPreferences.getLong("last_online", Long.MAX_VALUE);
                    boolean z9 = sharedPreferences.getBoolean("is_mystery", false);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(PREF_NICKNAME,… NoSuchElementException()");
                    Intrinsics.checkNotNullExpressionValue(string2, "getString(PREF_TOKEN, nu… NoSuchElementException()");
                    Intrinsics.checkNotNullExpressionValue(string3, "getString(PREF_IM_TOKEN,… NoSuchElementException()");
                    return new UserInfo(i4, string, string2, string3, string4, string5, valueOf, z9, j4, string6);
                }
                throw new NoSuchElementException();
            }
            throw new NoSuchElementException();
        }
        throw new NoSuchElementException();
    }

    @Override // com.im.freechat.domain.k
    @m8.h
    public Object w(@m8.g Continuation<? super Long> continuation) {
        return Boxing.boxLong(this.f39773c.getLong("lastSyncTime", 0L));
    }
}
