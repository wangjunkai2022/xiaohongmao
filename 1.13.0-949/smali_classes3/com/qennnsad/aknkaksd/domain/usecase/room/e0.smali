.class public final Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;
.super Lcom/qennnsad/aknkaksd/domain/base/h;
.source "SendGiftUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/domain/base/h<",
        "Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;",
        "Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0008B)\u0008\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0010\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;",
        "Lcom/qennnsad/aknkaksd/domain/base/h;",
        "Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;",
        "Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;",
        "params",
        "Lio/reactivex/z;",
        "e",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "a",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "c",
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "wsObjectPool",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "mapper",
        "Lg5/a;",
        "localDataManager",
        "Lx4/a;",
        "analytics",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lcom/qennnsad/aknkaksd/data/websocket/j;Lx4/a;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/qennnsad/aknkaksd/data/websocket/j;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lx4/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lcom/qennnsad/aknkaksd/domain/base/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qennnsad/aknkaksd/domain/base/d<",
            "Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lcom/qennnsad/aknkaksd/data/websocket/j;Lx4/a;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/data/websocket/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lx4/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "sourceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDataManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wsObjectPool"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/domain/base/h;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->b:Lg5/a;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->c:Lcom/qennnsad/aknkaksd/data/websocket/j;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->d:Lx4/a;

    .line 6
    new-instance p1, Lcom/qennnsad/aknkaksd/domain/base/d;

    const-class p3, Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;

    invoke-direct {p1, p3, p2}, Lcom/qennnsad/aknkaksd/domain/base/d;-><init>(Ljava/lang/reflect/Type;Lg5/a;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->e:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->f(Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;)V

    return-void
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->g(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;)V
    .locals 68

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$params"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v0, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->b:Lg5/a;

    invoke-virtual/range {p2 .. p2}, Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;->getCoinbalance()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;->getRemainfornextlev()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lg5/a;->x0(Lg5/a;ILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 2
    iget-object v1, v0, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->b:Lg5/a;

    invoke-virtual {v1}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v1

    move-object v3, v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;->getEmceeLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const v65, -0x10001

    const v66, 0x1fffffff

    const/16 v67, 0x0

    invoke-static/range {v3 .. v67}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->copy$default(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;IZZZZIIIIZZZZZZZIIIIIILjava/lang/Integer;Ljava/lang/Integer;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v1

    .line 3
    iget-object v3, v0, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->b:Lg5/a;

    invoke-virtual {v3, v1}, Lg5/a;->T(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)V

    .line 4
    iget-object v3, v0, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->d:Lx4/a;

    .line 5
    sget-object v4, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_GIFT_SENT:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;->i()Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getPrice()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;->i()Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;->j()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;->k()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;->l()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v5, v6

    .line 11
    invoke-virtual {v3, v4, v5}, Lx4/a;->d(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;[Ljava/lang/String;)V

    .line 12
    iget-object v2, v0, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->c:Lcom/qennnsad/aknkaksd/data/websocket/j;

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->b:Lg5/a;

    invoke-virtual {v3}, Lg5/a;->o()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->b:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->q()Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;

    move-result-object v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->c(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;)V

    return-void
.end method

.method private static final synthetic g(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/qennnsad/aknkaksd/domain/base/d;->b(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->e(Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;)Lio/reactivex/z;
    .locals 4
    .param p1    # Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;",
            ")",
            "Lio/reactivex/z<",
            "Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;->i()Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;->h()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/b;->sendGift(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/z;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;->e:Lcom/qennnsad/aknkaksd/domain/base/d;

    new-instance v2, Lcom/qennnsad/aknkaksd/domain/usecase/room/d0;

    invoke-direct {v2, v1}, Lcom/qennnsad/aknkaksd/domain/usecase/room/d0;-><init>(Lcom/qennnsad/aknkaksd/domain/base/d;)V

    invoke-virtual {v0, v2}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/room/c0;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/room/c0;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnNext(Ln7/g;)Lio/reactivex/z;

    move-result-object p1

    const-string v0, "sourceFactory.create().s\u2026LocalRoomMsg())\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
