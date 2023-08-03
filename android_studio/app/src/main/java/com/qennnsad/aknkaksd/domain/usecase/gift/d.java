package com.qennnsad.aknkaksd.domain.usecase.gift;

import android.content.Context;
import com.qennnsad.aknkaksd.data.bean.gift.Gift;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.domain.base.h;
import com.qennnsad.aknkaksd.domain.usecase.gift.d;
import io.reactivex.z;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.f;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.l;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t0;
import kotlinx.coroutines.y0;
import m8.g;
import n7.o;
import okhttp3.ResponseBody;
import retrofit2.Response;
import timber.log.Timber;

/* compiled from: SyncGiftsUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B#\b\u0007\u0012\b\b\u0001\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0019\u0010\u001aJ\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR \u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "params", "Lio/reactivex/z;", "g", "(Lkotlin/Unit;)Lio/reactivex/z;", "Landroid/content/Context;", "a", "Landroid/content/Context;", "j", "()Landroid/content/Context;", "context", "Lcom/qennnsad/aknkaksd/data/repository/m;", "c", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "", "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;", "d", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Landroid/content/Context;Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d extends h<Unit, Unit> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Context f48201a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f48202b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final m f48203c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<List<Gift>> f48204d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncGiftsUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.domain.usecase.gift.SyncGiftsUseCase$buildRxStream$2$1", f = "SyncGiftsUseCase.kt", i = {}, l = {33}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f48205a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f48206b;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ List<Gift> f48208d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SyncGiftsUseCase.kt */
        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.domain.usecase.gift.SyncGiftsUseCase$buildRxStream$2$1$1$1", f = "SyncGiftsUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.qennnsad.aknkaksd.domain.usecase.gift.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0406a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f48209a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Gift f48210b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String[] f48211c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ d f48212d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0406a(Gift gift, String[] strArr, d dVar, Continuation<? super C0406a> continuation) {
                super(2, continuation);
                this.f48210b = gift;
                this.f48211c = strArr;
                this.f48212d = dVar;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final Unit n(d dVar, Gift gift, String str, ResponseBody responseBody) {
                FileOutputStream openFileOutput = dVar.j().openFileOutput(gift.getCache_name(), 0);
                try {
                    try {
                        openFileOutput.write(responseBody.bytes());
                    } catch (IOException e4) {
                        Timber.b bVar = Timber.f93860a;
                        bVar.d("Error loading svga from " + str, e4);
                    }
                    return Unit.INSTANCE;
                } finally {
                    openFileOutput.close();
                }
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @g
            public final Continuation<Unit> create(@m8.h Object obj, @g Continuation<?> continuation) {
                return new C0406a(this.f48210b, this.f48211c, this.f48212d, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            public final Object invoke(@g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((C0406a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@g Object obj) {
                boolean contains;
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f48209a == 0) {
                    ResultKt.throwOnFailure(obj);
                    String giftswf = this.f48210b.getGiftswf();
                    if (!(giftswf == null || giftswf.length() == 0)) {
                        String[] currentFiles = this.f48211c;
                        Intrinsics.checkNotNullExpressionValue(currentFiles, "currentFiles");
                        contains = ArraysKt___ArraysKt.contains(currentFiles, this.f48210b.getCache_name());
                        if (!contains) {
                            final String i4 = this.f48212d.f48203c.i(this.f48210b.getGiftswf());
                            z<ResponseBody> downloadFile = m.g(this.f48212d.f48203c, false, 1, null).downloadFile(i4);
                            final d dVar = this.f48212d;
                            final Gift gift = this.f48210b;
                            downloadFile.map(new o() { // from class: com.qennnsad.aknkaksd.domain.usecase.gift.c
                                @Override // n7.o
                                public final Object apply(Object obj2) {
                                    Unit n9;
                                    n9 = d.a.C0406a.n(d.this, gift, i4, (ResponseBody) obj2);
                                    return n9;
                                }
                            });
                            return Unit.INSTANCE;
                        }
                    }
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(List<? extends Gift> list, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f48208d = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@m8.h Object obj, @g Continuation<?> continuation) {
            a aVar = new a(this.f48208d, continuation);
            aVar.f48206b = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            int collectionSizeOrDefault;
            y0 b10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f48205a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                s0 s0Var = (s0) this.f48206b;
                String[] fileList = d.this.j().fileList();
                List<Gift> list = this.f48208d;
                Intrinsics.checkNotNullExpressionValue(list, "list");
                d dVar = d.this;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (Gift gift : list) {
                    b10 = l.b(t0.a(s0Var.getCoroutineContext()), null, null, new C0406a(gift, fileList, dVar, null), 3, null);
                    arrayList.add(b10);
                }
                Object[] array = arrayList.toArray(new y0[0]);
                Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                y0[] y0VarArr = (y0[]) array;
                this.f48205a = 1;
                if (f.b((y0[]) Arrays.copyOf(y0VarArr, y0VarArr.length), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            g5.a aVar = d.this.f48202b;
            List<Gift> list2 = this.f48208d;
            Intrinsics.checkNotNullExpressionValue(list2, "list");
            aVar.f0(list2);
            return Unit.INSTANCE;
        }
    }

    @u7.a
    public d(@m6.b @g Context context, @g g5.a localDataManager, @g m sourceFactory) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f48201a = context;
        this.f48202b = localDataManager;
        this.f48203c = sourceFactory;
        ParameterizedType m9 = com.squareup.moshi.z.m(List.class, Gift.class);
        Intrinsics.checkNotNullExpressionValue(m9, "newParameterizedType(Lis…s.java, Gift::class.java)");
        this.f48204d = new com.qennnsad.aknkaksd.domain.base.d<>(m9, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(d this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "list");
        l.f(t0.a(i1.c()), null, null, new a(list, null), 3, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ List i(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (List) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @g
    /* renamed from: g */
    public z<Unit> a(@g Unit params) {
        Intrinsics.checkNotNullParameter(params, "params");
        if (!this.f48202b.m().isEmpty()) {
            z<Unit> empty = z.empty();
            Intrinsics.checkNotNullExpressionValue(empty, "empty()");
            return empty;
        }
        z<Response<String>> Y = m.g(this.f48203c, false, 1, null).Y();
        final com.qennnsad.aknkaksd.domain.base.d<List<Gift>> dVar = this.f48204d;
        z<Unit> map = Y.map(new o() { // from class: com.qennnsad.aknkaksd.domain.usecase.gift.a
            @Override // n7.o
            public final Object apply(Object obj) {
                List i4;
                i4 = d.i(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return i4;
            }
        }).map(new o() { // from class: com.qennnsad.aknkaksd.domain.usecase.gift.b
            @Override // n7.o
            public final Object apply(Object obj) {
                Unit h4;
                h4 = d.h(d.this, (List) obj);
                return h4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().a…)\n            }\n        }");
        return map;
    }

    @g
    public final Context j() {
        return this.f48201a;
    }
}
