package com.im.freechat.domain.usecase.members;

import com.im.freechat.domain.k;
import com.im.freechat.domain.p;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AddMembersInteractor.kt */
@Deprecated(message = "Not yet implemented on backend")
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u001f\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/domain/usecase/members/a;", "Lcom/im/freechat/domain/usecase/base/a;", "Lcom/im/freechat/domain/usecase/members/a$a;", "", "params", "c", "(Lcom/im/freechat/domain/usecase/members/a$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/p;", "b", "Lcom/im/freechat/domain/p;", "remoteRepository", "Lcom/im/freechat/domain/c;", "Lcom/im/freechat/domain/c;", "databaseRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/p;Lcom/im/freechat/domain/c;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends com.im.freechat.domain.usecase.base.a<C0324a, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final k f41802a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final p f41803b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.c f41804c;

    /* compiled from: AddMembersInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\b¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\t\u001a\u0004\b\u0003\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/domain/usecase/members/a$a;", "", "", "a", "I", "b", "()I", k4.b.f84734a, "", "Ljava/util/List;", "()Ljava/util/List;", "candidates", "<init>", "(ILjava/util/List;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
    /* renamed from: com.im.freechat.domain.usecase.members.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0324a {

        /* renamed from: a  reason: collision with root package name */
        private final int f41805a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final List<Integer> f41806b;

        public C0324a(int i4, @m8.g List<Integer> candidates) {
            Intrinsics.checkNotNullParameter(candidates, "candidates");
            this.f41805a = i4;
            this.f41806b = candidates;
        }

        @m8.g
        public final List<Integer> a() {
            return this.f41806b;
        }

        public final int b() {
            return this.f41805a;
        }
    }

    public a(@m8.g k loginRepository, @m8.g p remoteRepository, @m8.g com.im.freechat.domain.c databaseRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(remoteRepository, "remoteRepository");
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        this.f41802a = loginRepository;
        this.f41803b = remoteRepository;
        this.f41804c = databaseRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    public Object b(@m8.g C0324a c0324a, @m8.g Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }
}
