.class public final Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;
.super Lcom/qennnsad/aknkaksd/domain/base/h;
.source "GetPageListForAnchorUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;,
        Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/domain/base/h<",
        "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;",
        "Lcom/qennnsad/aknkaksd/data/bean/AnchorPageBean<",
        "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u0001\tB\u0019\u0008\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0014R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR#\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;",
        "Lcom/qennnsad/aknkaksd/domain/base/h;",
        "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;",
        "Lcom/qennnsad/aknkaksd/data/bean/AnchorPageBean;",
        "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;",
        "params",
        "Lio/reactivex/z;",
        "d",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "a",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "c",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "f",
        "()Lcom/qennnsad/aknkaksd/domain/base/d;",
        "responseMapper",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;)V",
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

.field private final c:Lcom/qennnsad/aknkaksd/domain/base/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qennnsad/aknkaksd/domain/base/d<",
            "Lcom/qennnsad/aknkaksd/data/bean/AnchorPageBean<",
            "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;)V
    .locals 4
    .param p1    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "sourceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDataManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/domain/base/h;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;->b:Lg5/a;

    .line 4
    new-instance p1, Lcom/qennnsad/aknkaksd/domain/base/d;

    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/AnchorPageBean;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    .line 5
    const-class v3, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    aput-object v3, v1, v2

    .line 6
    invoke-static {v0, v1}, Lcom/squareup/moshi/z;->m(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    const-string v1, "newParameterizedType(\n  \u2026ary::class.java\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p1, v0, p2}, Lcom/qennnsad/aknkaksd/domain/base/d;-><init>(Ljava/lang/reflect/Type;Lg5/a;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;->c:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/AnchorPageBean;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;->e(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/AnchorPageBean;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic e(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/AnchorPageBean;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/qennnsad/aknkaksd/domain/base/d;->b(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/data/bean/AnchorPageBean;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;->d(Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;)Lio/reactivex/z;
    .locals 4
    .param p1    # Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;",
            ")",
            "Lio/reactivex/z<",
            "Lcom/qennnsad/aknkaksd/data/bean/AnchorPageBean<",
            "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->g()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    move-result-object v1

    sget-object v2, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$b;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const-string v2, "Invalid anchor type for api"

    const-string v3, "time"

    packed-switch v1, :pswitch_data_0

    .line 3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 4
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :pswitch_1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->h()I

    move-result v1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->i()I

    move-result v2

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->j()Z

    move-result p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/qennnsad/aknkaksd/data/repository/b;->T(IILjava/lang/String;Z)Lio/reactivex/z;

    move-result-object p1

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->h()I

    move-result v1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->i()I

    move-result v2

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->j()Z

    move-result p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/qennnsad/aknkaksd/data/repository/b;->a0(IILjava/lang/String;Z)Lio/reactivex/z;

    move-result-object p1

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->h()I

    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->i()I

    move-result v2

    .line 10
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->j()Z

    move-result p1

    .line 11
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/qennnsad/aknkaksd/data/repository/b;->C(IILjava/lang/String;Z)Lio/reactivex/z;

    move-result-object p1

    goto :goto_0

    .line 12
    :pswitch_4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->h()I

    move-result v1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->i()I

    move-result v2

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;->j()Z

    move-result p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/qennnsad/aknkaksd/data/repository/b;->O(IILjava/lang/String;Z)Lio/reactivex/z;

    move-result-object p1

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;->c:Lcom/qennnsad/aknkaksd/domain/base/d;

    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/h;

    invoke-direct {v1, v0}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/h;-><init>(Lcom/qennnsad/aknkaksd/domain/base/d;)V

    invoke-virtual {p1, v1}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    const-string v0, "with(sourceFactory.creat\u2026nseMapper::map)\n        }"

    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 15
    :pswitch_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Lcom/qennnsad/aknkaksd/domain/base/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/domain/base/d<",
            "Lcom/qennnsad/aknkaksd/data/bean/AnchorPageBean<",
            "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;->c:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-object v0
.end method
