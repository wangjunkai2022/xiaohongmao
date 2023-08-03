package com.im.freechat.domain.usecase.contact;

import com.im.freechat.domain.usecase.base.FlowUseCase;
import com.im.freechat.shared.entities.contact.UserModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ListenContactListInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Lcom/im/freechat/domain/usecase/contact/ListenContactListInteractor;", "Lcom/im/freechat/domain/usecase/base/FlowUseCase;", "", "", "Lcom/im/freechat/shared/entities/contact/UserModel;", "params", "Lkotlinx/coroutines/flow/i;", "e", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/c;", "a", "Lcom/im/freechat/domain/c;", "databaseRepository", "<init>", "(Lcom/im/freechat/domain/c;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ListenContactListInteractor extends FlowUseCase<Boolean, List<? extends UserModel>> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.c f41582a;

    public ListenContactListInteractor(@m8.g com.im.freechat.domain.c databaseRepository) {
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        this.f41582a = databaseRepository;
    }

    @Override // com.im.freechat.domain.usecase.base.FlowUseCase
    public /* bridge */ /* synthetic */ Object b(Boolean bool, Continuation<? super kotlinx.coroutines.flow.i<? extends List<? extends UserModel>>> continuation) {
        return e(bool.booleanValue(), continuation);
    }

    @m8.h
    protected Object e(final boolean z9, @m8.g Continuation<? super kotlinx.coroutines.flow.i<? extends List<UserModel>>> continuation) {
        final kotlinx.coroutines.flow.i<List<UserModel>> w9 = this.f41582a.w();
        return new kotlinx.coroutines.flow.i<List<? extends UserModel>>() { // from class: com.im.freechat.domain.usecase.contact.ListenContactListInteractor$buildFlow$$inlined$map$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.domain.usecase.contact.ListenContactListInteractor$buildFlow$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes3.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<List<? extends UserModel>> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f41585a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ boolean f41586b;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.domain.usecase.contact.ListenContactListInteractor$buildFlow$$inlined$map$1$2", f = "ListenContactListInteractor.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.domain.usecase.contact.ListenContactListInteractor$buildFlow$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes3.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f41587a;

                    /* renamed from: b  reason: collision with root package name */
                    int f41588b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f41589c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f41587a = obj;
                        this.f41588b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, boolean z9) {
                    this.f41585a = jVar;
                    this.f41586b = z9;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(java.util.List<? extends com.im.freechat.shared.entities.contact.UserModel> r7, @m8.g kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.im.freechat.domain.usecase.contact.ListenContactListInteractor$buildFlow$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r8
                        com.im.freechat.domain.usecase.contact.ListenContactListInteractor$buildFlow$$inlined$map$1$2$1 r0 = (com.im.freechat.domain.usecase.contact.ListenContactListInteractor$buildFlow$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f41588b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f41588b = r1
                        goto L18
                    L13:
                        com.im.freechat.domain.usecase.contact.ListenContactListInteractor$buildFlow$$inlined$map$1$2$1 r0 = new com.im.freechat.domain.usecase.contact.ListenContactListInteractor$buildFlow$$inlined$map$1$2$1
                        r0.<init>(r8)
                    L18:
                        java.lang.Object r8 = r0.f41587a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f41588b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L6b
                    L29:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L31:
                        kotlin.ResultKt.throwOnFailure(r8)
                        kotlinx.coroutines.flow.j r8 = r6.f41585a
                        java.util.List r7 = (java.util.List) r7
                        java.util.ArrayList r2 = new java.util.ArrayList
                        r2.<init>()
                        java.util.Iterator r7 = r7.iterator()
                    L41:
                        boolean r4 = r7.hasNext()
                        if (r4 == 0) goto L62
                        java.lang.Object r4 = r7.next()
                        r5 = r4
                        com.im.freechat.shared.entities.contact.UserModel r5 = (com.im.freechat.shared.entities.contact.UserModel) r5
                        boolean r5 = r5.isService()
                        if (r5 == 0) goto L5b
                        boolean r5 = r6.f41586b
                        if (r5 == 0) goto L59
                        goto L5b
                    L59:
                        r5 = 0
                        goto L5c
                    L5b:
                        r5 = 1
                    L5c:
                        if (r5 == 0) goto L41
                        r2.add(r4)
                        goto L41
                    L62:
                        r0.f41588b = r3
                        java.lang.Object r7 = r8.emit(r2, r0)
                        if (r7 != r1) goto L6b
                        return r1
                    L6b:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.contact.ListenContactListInteractor$buildFlow$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super List<? extends UserModel>> jVar, @m8.g Continuation continuation2) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, z9), continuation2);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }
}
