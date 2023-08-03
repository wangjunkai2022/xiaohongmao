.class public final Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;
.super Lcom/qennnsad/aknkaksd/domain/base/h;
.source "UnfollowUserUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/domain/base/h<",
        "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0013B\u0019\u0008\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;",
        "Lcom/qennnsad/aknkaksd/domain/base/h;",
        "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;",
        "",
        "params",
        "Lio/reactivex/z;",
        "e",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "b",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "c",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "mapper",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V",
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


# instance fields
.field private final a:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/qennnsad/aknkaksd/domain/base/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qennnsad/aknkaksd/domain/base/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/domain/base/h;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;->a:Lg5/a;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 4
    new-instance p2, Lcom/qennnsad/aknkaksd/domain/base/d;

    const-class v0, Ljava/lang/String;

    invoke-direct {p2, v0, p1}, Lcom/qennnsad/aknkaksd/domain/base/d;-><init>(Ljava/lang/reflect/Type;Lg5/a;)V

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;->c:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;->g(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;->f(Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;Ljava/lang/String;)V

    return-void
.end method

.method private static final f(Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;Ljava/lang/String;)V
    .locals 68

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$params"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;->a:Lg5/a;

    invoke-virtual {v1}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    iget-object v0, v0, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;->a:Lg5/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 3
    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getFollow_users()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

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

    const/16 v65, -0x2001

    const v66, 0x1fffffff

    const/16 v67, 0x0

    invoke-static/range {v3 .. v67}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->copy$default(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;IZZZZIIIIZZZZZZZIIIIIILjava/lang/Integer;Ljava/lang/Integer;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lg5/a;->T(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)V

    :cond_0
    return-void
.end method

.method private static final synthetic g(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/qennnsad/aknkaksd/domain/base/d;->b(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;->e(Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;)Lio/reactivex/z;
    .locals 4
    .param p1    # Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/repository/b;->unfollowUser(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;->c:Lcom/qennnsad/aknkaksd/domain/base/d;

    new-instance v2, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/p;

    invoke-direct {v2, v1}, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/p;-><init>(Lcom/qennnsad/aknkaksd/domain/base/d;)V

    invoke-virtual {v0, v2}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/o;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/o;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnNext(Ln7/g;)Lio/reactivex/z;

    move-result-object p1

    const-string v0, "sourceFactory.create().u\u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
