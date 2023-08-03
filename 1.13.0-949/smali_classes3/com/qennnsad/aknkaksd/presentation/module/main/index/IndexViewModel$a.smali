.class final Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel$a;
.super Lkotlin/jvm/internal/Lambda;
.source "IndexViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;-><init>(Lg5/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/qennnsad/aknkaksd/data/bean/HallBean;",
        "Ljava/lang/Boolean;",
        "Ljava/util/List<",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/HallBean;",
        "hall",
        "",
        "gameCenter",
        "",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;",
        "a",
        "(Lcom/qennnsad/aknkaksd/data/bean/HallBean;Ljava/lang/Boolean;)Ljava/util/List;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel$a;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel$a;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/qennnsad/aknkaksd/data/bean/HallBean;Ljava/lang/Boolean;)Ljava/util/List;
    .locals 6
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/HallBean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/HallBean;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;

    .line 1
    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/main/index/e;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/index/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/main/index/t;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/index/t;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 3
    sget-object v4, Lcom/qennnsad/aknkaksd/presentation/module/main/index/g;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/index/g;

    const/4 v5, 0x2

    aput-object v4, v0, v5

    .line 4
    sget-object v4, Lcom/qennnsad/aknkaksd/presentation/module/main/index/u;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/index/u;

    const/4 v5, 0x3

    aput-object v4, v0, v5

    .line 5
    sget-object v4, Lcom/qennnsad/aknkaksd/presentation/module/main/index/s;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/index/s;

    const/4 v5, 0x4

    aput-object v4, v0, v5

    .line 6
    sget-object v4, Lcom/qennnsad/aknkaksd/presentation/module/main/index/d;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/index/d;

    const/4 v5, 0x5

    aput-object v4, v0, v5

    .line 7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/HallBean;->isShowVegan()Z

    move-result p1

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/HallBean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel$a;->a(Lcom/qennnsad/aknkaksd/data/bean/HallBean;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
