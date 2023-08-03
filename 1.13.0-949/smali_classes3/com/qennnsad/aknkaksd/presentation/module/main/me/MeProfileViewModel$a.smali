.class final Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$a;
.super Lkotlin/jvm/internal/Lambda;
.source "MeProfileViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;Lcom/qennnsad/aknkaksd/domain/usecase/user/a0;Lcom/qennnsad/aknkaksd/domain/usecase/user/s;Lcom/qennnsad/aknkaksd/domain/usecase/user/s1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;",
        "Ljava/util/List<",
        "+",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMeProfileViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeProfileViewModel.kt\ncom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$menuList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,98:1\n1549#2:99\n1620#2,3:100\n*S KotlinDebug\n*F\n+ 1 MeProfileViewModel.kt\ncom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$menuList$1\n*L\n47#1:99\n47#1:100,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
        "user",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;",
        "userMoney",
        "",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;",
        "a",
        "(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;)Ljava/util/List;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$a;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$a;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;)Ljava/util/List;
    .locals 10
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
            "Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;",
            ")",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_anchor_rank()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/main/me/b;->f:Lcom/qennnsad/aknkaksd/presentation/module/main/me/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getIswithdraw()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/me/g0;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->getBeanbalance()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-direct {v1, v3}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/g0;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_3
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/me/f0;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->getCoinbalance()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_4
    invoke-direct {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/f0;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isGuest()Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/module/main/me/d;->f:Lcom/qennnsad/aknkaksd/presentation/module/main/me/d;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_5
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_family()Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/module/main/me/c;->f:Lcom/qennnsad/aknkaksd/presentation/module/main/me/c;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_6
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getMenus()Ljava/util/List;

    move-result-object p2

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean$MenuBean;

    .line 11
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean$MenuBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean$MenuBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean$MenuBean;->getTarget()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    move-result-object v5

    .line 14
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean$MenuBean;->getHideNavBar()Z

    move-result v7

    .line 15
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean$MenuBean;->getSpa()Z

    move-result v9

    .line 16
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean$MenuBean;->getIcon()Ljava/lang/String;

    move-result-object v8

    .line 17
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/me/c0;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/c0;-><init>(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_7
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/module/main/me/a;->f:Lcom/qennnsad/aknkaksd/presentation/module/main/me/a;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/module/main/me/b0;->f:Lcom/qennnsad/aknkaksd/presentation/module/main/me/b0;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/module/main/me/d0;->f:Lcom/qennnsad/aknkaksd/presentation/module/main/me/d0;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/module/main/me/e;->f:Lcom/qennnsad/aknkaksd/presentation/module/main/me/e;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/module/main/me/e0;->f:Lcom/qennnsad/aknkaksd/presentation/module/main/me/e0;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_lounge_vip()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/module/main/me/h;->f:Lcom/qennnsad/aknkaksd/presentation/module/main/me/h;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_8
    :goto_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    check-cast p2, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel$a;->a(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
