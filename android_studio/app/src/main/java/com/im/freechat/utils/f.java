package com.im.freechat.utils;

import androidx.lifecycle.MutableLiveData;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.domain.usecase.downloads.a;
import com.im.freechat.domain.usecase.downloads.c;
import com.im.freechat.domain.usecase.downloads.d;
import com.im.freechat.shared.entities.DownloadInfo;
import com.im.freechat.shared.entities.Result;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.FileAttachment;
import com.im.freechat.shared.entities.message.VideoAttachment;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;

/* compiled from: DownloadUtility.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0006\u0010)\u001a\u00020&\u0012\u0006\u0010-\u001a\u00020*¢\u0006\u0004\b4\u00105J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J:\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0014\u0010\u0010\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020\u000f0\r2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0011J\u0016\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004J)\u0010\u0019\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0014\u0010\u001d\u001a\u00020\u00062\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00150\u001bR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R)\u00103\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u000e0/0.8\u0006¢\u0006\f\n\u0004\b\u0013\u00100\u001a\u0004\b1\u00102¨\u00066"}, d2 = {"Lcom/im/freechat/utils/f;", "", "Lcom/im/freechat/shared/entities/message/VideoAttachment;", "video", "", k4.b.f84734a, "Lkotlinx/coroutines/j2;", "g", "Lcom/im/freechat/shared/entities/message/FileAttachment;", "file", "f", "Lcom/im/freechat/shared/entities/message/Attachment;", "attachment", "Lkotlin/Function1;", "Lcom/im/freechat/shared/entities/DownloadInfo;", "", "onDownloaded", "Lkotlin/Function0;", "onIsDownloading", "e", "k", "", "mediaId", "", "url", "j", "(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)Lkotlinx/coroutines/j2;", "", "mediaIds", ContextChain.TAG_INFRA, "Lcom/im/freechat/domain/usecase/downloads/b;", "a", "Lcom/im/freechat/domain/usecase/downloads/b;", "listenDownloadsInteractor", "Lcom/im/freechat/domain/usecase/downloads/c;", "b", "Lcom/im/freechat/domain/usecase/downloads/c;", "removeDownloadInteractor", "Lcom/im/freechat/domain/usecase/downloads/a;", "c", "Lcom/im/freechat/domain/usecase/downloads/a;", "downloadMediaFileInteractor", "Lcom/im/freechat/domain/usecase/downloads/d;", "d", "Lcom/im/freechat/domain/usecase/downloads/d;", "startDownloadInteractor", "Landroidx/lifecycle/MutableLiveData;", "", "Landroidx/lifecycle/MutableLiveData;", "h", "()Landroidx/lifecycle/MutableLiveData;", "downloadMap", "<init>", "(Lcom/im/freechat/domain/usecase/downloads/b;Lcom/im/freechat/domain/usecase/downloads/c;Lcom/im/freechat/domain/usecase/downloads/a;Lcom/im/freechat/domain/usecase/downloads/d;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.downloads.b f43750a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.downloads.c f43751b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.downloads.a f43752c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.downloads.d f43753d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<Map<Long, DownloadInfo>> f43754e;

    /* compiled from: DownloadUtility.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.utils.DownloadUtility$1", f = "DownloadUtility.kt", i = {}, l = {27}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43755a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: DownloadUtility.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/DownloadInfo;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.utils.DownloadUtility$1$1", f = "DownloadUtility.kt", i = {}, l = {28}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.utils.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0373a extends SuspendLambda implements Function2<Result<? extends List<? extends DownloadInfo>>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f43757a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f43758b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ f f43759c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: DownloadUtility.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/DownloadInfo;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.utils.DownloadUtility$1$1$1", f = "DownloadUtility.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.utils.f$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0374a extends SuspendLambda implements Function2<List<? extends DownloadInfo>, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f43760a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f43761b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ f f43762c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0374a(f fVar, Continuation<? super C0374a> continuation) {
                    super(2, continuation);
                    this.f43762c = fVar;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    C0374a c0374a = new C0374a(this.f43762c, continuation);
                    c0374a.f43761b = obj;
                    return c0374a;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g List<DownloadInfo> list, @m8.h Continuation<? super Unit> continuation) {
                    return ((C0374a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    int collectionSizeOrDefault;
                    int mapCapacity;
                    int coerceAtLeast;
                    int collectionSizeOrDefault2;
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f43760a == 0) {
                        ResultKt.throwOnFailure(obj);
                        List list = (List) this.f43761b;
                        MutableLiveData<Map<Long, DownloadInfo>> h4 = this.f43762c.h();
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
                        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                        for (Object obj2 : list) {
                            linkedHashMap.put(Boxing.boxLong(((DownloadInfo) obj2).getMediaId()), obj2);
                        }
                        h4.setValue(linkedHashMap);
                        ArrayList<DownloadInfo> arrayList = new ArrayList();
                        Iterator it = list.iterator();
                        while (true) {
                            boolean z9 = true;
                            if (!it.hasNext()) {
                                break;
                            }
                            Object next = it.next();
                            DownloadInfo downloadInfo = (DownloadInfo) next;
                            if ((downloadInfo.getStatus() != 8 || new File(downloadInfo.getLocalPath()).exists()) ? false : false) {
                                arrayList.add(next);
                            }
                        }
                        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
                        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                        for (DownloadInfo downloadInfo2 : arrayList) {
                            arrayList2.add(Boxing.boxLong(downloadInfo2.getMediaId()));
                        }
                        if (!arrayList2.isEmpty()) {
                            this.f43762c.i(arrayList2);
                        }
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0373a(f fVar, Continuation<? super C0373a> continuation) {
                super(2, continuation);
                this.f43759c = fVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0373a c0373a = new C0373a(this.f43759c, continuation);
                c0373a.f43758b = obj;
                return c0373a;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g Result<? extends List<DownloadInfo>> result, @m8.h Continuation<? super Unit> continuation) {
                return ((C0373a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f43757a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    C0374a c0374a = new C0374a(this.f43759c, null);
                    this.f43757a = 1;
                    if (((Result) this.f43758b).onSuccess(c0374a, this) == coroutine_suspended) {
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
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43755a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.downloads.b bVar = f.this.f43750a;
                Unit unit = Unit.INSTANCE;
                C0373a c0373a = new C0373a(f.this, null);
                this.f43755a = 1;
                if (bVar.c(unit, c0373a, this) == coroutine_suspended) {
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
    /* compiled from: DownloadUtility.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.utils.DownloadUtility$downloadFile$1", f = "DownloadUtility.kt", i = {}, l = {93}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43763a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ FileAttachment f43764b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f43765c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ f f43766d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(FileAttachment fileAttachment, int i4, f fVar, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f43764b = fileAttachment;
            this.f43765c = i4;
            this.f43766d = fVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f43764b, this.f43765c, this.f43766d, continuation);
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
            String fileName;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43763a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                FileAttachment fileAttachment = this.f43764b;
                int i10 = this.f43765c;
                f fVar = this.f43766d;
                long mediaId = fileAttachment.getMediaId();
                String remoteUrl = fileAttachment.getRemoteUrl();
                if (remoteUrl != null && (fileName = fileAttachment.getFileName()) != null) {
                    d.a aVar = new d.a(mediaId, i10, remoteUrl, fileName, fileAttachment.getFileSize());
                    com.im.freechat.domain.usecase.downloads.d dVar = fVar.f43753d;
                    this.f43763a = 1;
                    if (dVar.a(aVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((kotlin.Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadUtility.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.utils.DownloadUtility$downloadVideo$1", f = "DownloadUtility.kt", i = {}, l = {80}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43767a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ VideoAttachment f43768b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f43769c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ f f43770d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(VideoAttachment videoAttachment, int i4, f fVar, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f43768b = videoAttachment;
            this.f43769c = i4;
            this.f43770d = fVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(this.f43768b, this.f43769c, this.f43770d, continuation);
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
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43767a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                VideoAttachment videoAttachment = this.f43768b;
                int i10 = this.f43769c;
                f fVar = this.f43770d;
                long mediaId = videoAttachment.getMediaId();
                String remoteUrl = videoAttachment.getRemoteUrl();
                if (remoteUrl == null) {
                    return Unit.INSTANCE;
                }
                d.a aVar = new d.a(mediaId, i10, remoteUrl, videoAttachment.getMediaId() + ".mp4", videoAttachment.getFileSize());
                com.im.freechat.domain.usecase.downloads.d dVar = fVar.f43753d;
                this.f43767a = 1;
                if (dVar.a(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((kotlin.Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadUtility.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.utils.DownloadUtility$removeDownloadInfo$1", f = "DownloadUtility.kt", i = {}, l = {98}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43771a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List<Long> f43773c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(List<Long> list, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f43773c = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new d(this.f43773c, continuation);
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
            int i4 = this.f43771a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.downloads.c cVar = f.this.f43751b;
                c.a aVar = new c.a(this.f43773c);
                this.f43771a = 1;
                if (cVar.a(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((kotlin.Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadUtility.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.utils.DownloadUtility$saveFile$2", f = "DownloadUtility.kt", i = {}, l = {62}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43774a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Long f43776c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Integer f43777d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f43778e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(Long l10, Integer num, String str, Continuation<? super e> continuation) {
            super(2, continuation);
            this.f43776c = l10;
            this.f43777d = num;
            this.f43778e = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new e(this.f43776c, this.f43777d, this.f43778e, continuation);
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
            int i4 = this.f43774a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.downloads.a aVar = f.this.f43752c;
                Long l10 = this.f43776c;
                if (l10 != null) {
                    long longValue = l10.longValue();
                    Integer num = this.f43777d;
                    if (num != null) {
                        a.C0323a c0323a = new a.C0323a(longValue, num.intValue(), this.f43778e);
                        this.f43774a = 1;
                        if (aVar.a(c0323a, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        return Unit.INSTANCE;
                    }
                } else {
                    return Unit.INSTANCE;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((kotlin.Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    public f(@m8.g com.im.freechat.domain.usecase.downloads.b listenDownloadsInteractor, @m8.g com.im.freechat.domain.usecase.downloads.c removeDownloadInteractor, @m8.g com.im.freechat.domain.usecase.downloads.a downloadMediaFileInteractor, @m8.g com.im.freechat.domain.usecase.downloads.d startDownloadInteractor) {
        Intrinsics.checkNotNullParameter(listenDownloadsInteractor, "listenDownloadsInteractor");
        Intrinsics.checkNotNullParameter(removeDownloadInteractor, "removeDownloadInteractor");
        Intrinsics.checkNotNullParameter(downloadMediaFileInteractor, "downloadMediaFileInteractor");
        Intrinsics.checkNotNullParameter(startDownloadInteractor, "startDownloadInteractor");
        this.f43750a = listenDownloadsInteractor;
        this.f43751b = removeDownloadInteractor;
        this.f43752c = downloadMediaFileInteractor;
        this.f43753d = startDownloadInteractor;
        this.f43754e = new MutableLiveData<>();
        kotlinx.coroutines.l.f(a2.f84781a, null, null, new a(null), 3, null);
    }

    private final j2 f(FileAttachment fileAttachment, int i4) {
        j2 f10;
        f10 = kotlinx.coroutines.l.f(a2.f84781a, null, null, new b(fileAttachment, i4, this, null), 3, null);
        return f10;
    }

    private final j2 g(VideoAttachment videoAttachment, int i4) {
        j2 f10;
        f10 = kotlinx.coroutines.l.f(a2.f84781a, null, null, new c(videoAttachment, i4, this, null), 3, null);
        return f10;
    }

    public final void e(@m8.g Attachment attachment, int i4, @m8.g Function1<? super DownloadInfo, Unit> onDownloaded, @m8.g Function0<Unit> onIsDownloading) {
        Intrinsics.checkNotNullParameter(attachment, "attachment");
        Intrinsics.checkNotNullParameter(onDownloaded, "onDownloaded");
        Intrinsics.checkNotNullParameter(onIsDownloading, "onIsDownloading");
        String localPath = attachment.getLocalPath();
        boolean z9 = true;
        if ((localPath == null || !new File(localPath).exists()) ? false : false) {
            onDownloaded.invoke(null);
            return;
        }
        Map<Long, DownloadInfo> value = this.f43754e.getValue();
        DownloadInfo downloadInfo = value != null ? value.get(Long.valueOf(attachment.getMediaId())) : null;
        if (downloadInfo != null && downloadInfo.getStatus() != 16) {
            if (downloadInfo.getStatus() == 8) {
                onDownloaded.invoke(downloadInfo);
                return;
            } else {
                onIsDownloading.invoke();
                return;
            }
        }
        if (attachment instanceof FileAttachment) {
            f((FileAttachment) attachment, i4);
        }
        if (attachment instanceof VideoAttachment) {
            g((VideoAttachment) attachment, i4);
        }
    }

    @m8.g
    public final MutableLiveData<Map<Long, DownloadInfo>> h() {
        return this.f43754e;
    }

    @m8.g
    public final j2 i(@m8.g List<Long> mediaIds) {
        j2 f10;
        Intrinsics.checkNotNullParameter(mediaIds, "mediaIds");
        f10 = kotlinx.coroutines.l.f(a2.f84781a, null, null, new d(mediaIds, null), 3, null);
        return f10;
    }

    @m8.g
    public final j2 j(@m8.h Long l10, @m8.h Integer num, @m8.g String url) {
        j2 f10;
        Intrinsics.checkNotNullParameter(url, "url");
        f10 = kotlinx.coroutines.l.f(a2.f84781a, null, null, new e(l10, num, url, null), 3, null);
        return f10;
    }

    public final void k(@m8.g Attachment attachment, int i4) {
        Intrinsics.checkNotNullParameter(attachment, "attachment");
        String remoteUrl = attachment.getRemoteUrl();
        if (remoteUrl != null) {
            j(Long.valueOf(attachment.getMediaId()), Integer.valueOf(i4), remoteUrl);
        }
    }
}
