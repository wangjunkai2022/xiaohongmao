.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "StreamChatViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamChatViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamChatViewModel.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel\n+ 2 Transformations.kt\nandroidx/lifecycle/TransformationsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,123:1\n39#2:124\n1549#3:125\n1620#3,3:126\n*S KotlinDebug\n*F\n+ 1 StreamChatViewModel.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel\n*L\n26#1:124\n64#1:125\n64#1:126,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001/B!\u0008\u0007\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010,\u001a\u00020+\u00a2\u0006\u0004\u0008-\u0010.J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\n\u001a\u00020\u0007H\u0002J\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u0007R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R#\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00150\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u001f\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR%\u0010$\u001a\u0010\u0012\u000c\u0012\n !*\u0004\u0018\u00010\u00050\u00050\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0017\u001a\u0004\u0008#\u0010\u0019R\u001f\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u0017\u001a\u0004\u0008\'\u0010\u0019\u00a8\u00060"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a;",
        "Lkotlinx/coroutines/j2;",
        "F",
        "",
        "chatId",
        "",
        "streamerId",
        "D",
        "x",
        "Lcom/qennnsad/aknkaksd/data/bean/DepositOption;",
        "depositOption",
        "",
        "C",
        "E",
        "Lcom/qennnsad/aknkaksd/domain/usecase/room/k;",
        "f",
        "Lcom/qennnsad/aknkaksd/domain/usecase/room/k;",
        "getDepositAgentUseCase",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "h",
        "Landroidx/lifecycle/MutableLiveData;",
        "A",
        "()Landroidx/lifecycle/MutableLiveData;",
        "depositOptions",
        "Landroidx/lifecycle/LiveData;",
        "i",
        "Landroidx/lifecycle/LiveData;",
        "B",
        "()Landroidx/lifecycle/LiveData;",
        "selectedOption",
        "kotlin.jvm.PlatformType",
        "j",
        "y",
        "agentId",
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "k",
        "z",
        "chat",
        "Lg5/a;",
        "localDataManager",
        "Lx4/a;",
        "analytics",
        "<init>",
        "(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/room/k;Lx4/a;)V",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation build Ll6/a;
.end annotation


# instance fields
.field private final e:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/qennnsad/aknkaksd/domain/usecase/room/k;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lx4/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/DepositOption;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/qennnsad/aknkaksd/data/bean/DepositOption;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final j:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/room/k;Lx4/a;)V
    .locals 9
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/domain/usecase/room/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lx4/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getDepositAgentUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->e:Lg5/a;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->f:Lcom/qennnsad/aknkaksd/domain/usecase/room/k;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->g:Lx4/a;

    .line 5
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 6
    new-instance p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$c;

    invoke-direct {p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$c;-><init>()V

    invoke-static {p2, p3}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object p3

    const-string v0, "crossinline transform: (\u2026p(this) { transform(it) }"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->i:Landroidx/lifecycle/LiveData;

    .line 8
    new-instance p3, Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 9
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 10
    invoke-virtual {p1}, Lg5/a;->f()Ljava/util/List;

    move-result-object v0

    .line 11
    new-instance v8, Lcom/qennnsad/aknkaksd/data/bean/DepositOption;

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/qennnsad/aknkaksd/data/bean/DepositOption;-><init>(IIZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p1}, Lg5/a;->x()I

    move-result p2

    if-eqz p2, :cond_0

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 16
    new-instance p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a$d;

    invoke-virtual {p1}, Lg5/a;->z()J

    move-result-wide v0

    invoke-direct {p3, p2, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a$d;-><init>(IJ)V

    invoke-virtual {p0, p3}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->F()Lkotlinx/coroutines/j2;

    return-void
.end method

.method private final D(ILjava/lang/String;)Lkotlinx/coroutines/j2;
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$b;-><init>(ILcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method private final F()Lkotlinx/coroutines/j2;
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic s(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->x()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic t(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;)Lx4/a;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->g:Lx4/a;

    return-object p0
.end method

.method public static final synthetic u(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/room/k;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->f:Lcom/qennnsad/aknkaksd/domain/usecase/room/k;

    return-object p0
.end method

.method public static final synthetic v(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;)Lg5/a;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->e:Lg5/a;

    return-object p0
.end method

.method public static final synthetic w(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;ILjava/lang/String;)Lkotlinx/coroutines/j2;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->D(ILjava/lang/String;)Lkotlinx/coroutines/j2;

    move-result-object p0

    return-object p0
.end method

.method private final x()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->i:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/DepositOption;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/DepositOption;->getCoins()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7fffffff

    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_3

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f60\u597d\uff0c\u6211\u8981\u5145\u503c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u91d1\u5e01"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    :goto_2
    const-string v0, "\u4f60\u597d\uff0c\u53ef\u4ee5\u5145\u503c\u5217\u8868\u4e2d\u6ca1\u6709\u7684\u4f59\u989d\u5417\uff1f"

    :goto_3
    return-object v0
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/DepositOption;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final B()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/qennnsad/aknkaksd/data/bean/DepositOption;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->i:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final C(Lcom/qennnsad/aknkaksd/data/bean/DepositOption;)V
    .locals 11
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/DepositOption;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "depositOption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    move-object v4, v3

    check-cast v4, Lcom/qennnsad/aknkaksd/data/bean/DepositOption;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 5
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/qennnsad/aknkaksd/data/bean/DepositOption;->copy$default(Lcom/qennnsad/aknkaksd/data/bean/DepositOption;IIZZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/DepositOption;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final E(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "streamerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final y()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final z()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
