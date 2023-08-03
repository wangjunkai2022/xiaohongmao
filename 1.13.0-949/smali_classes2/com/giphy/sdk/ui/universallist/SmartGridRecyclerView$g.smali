.class public final Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;
.super Ljava/lang/Object;
.source "SmartGridRecyclerView.kt"

# interfaces
.implements Lcom/giphy/sdk/core/network/api/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->x(Lcom/giphy/sdk/ui/pagination/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giphy/sdk/core/network/api/a<",
        "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmartGridRecyclerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmartGridRecyclerView.kt\ncom/giphy/sdk/ui/universallist/SmartGridRecyclerView$loadGifs$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,512:1\n734#2:513\n825#2,2:514\n1517#2:516\n1588#2,3:517\n734#2:520\n825#2,2:521\n*E\n*S KotlinDebug\n*F\n+ 1 SmartGridRecyclerView.kt\ncom/giphy/sdk/ui/universallist/SmartGridRecyclerView$loadGifs$1\n*L\n284#1:513\n284#1,2:514\n289#1:516\n289#1,3:517\n308#1:520\n308#1,2:521\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/giphy/sdk/ui/universallist/SmartGridRecyclerView$g",
        "Lcom/giphy/sdk/core/network/api/a;",
        "Lcom/giphy/sdk/core/network/response/ListMediaResponse;",
        "result",
        "",
        "e",
        "",
        "b",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

.field final synthetic b:Lcom/giphy/sdk/ui/pagination/c;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;Lcom/giphy/sdk/ui/pagination/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giphy/sdk/ui/pagination/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    iput-object p2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->b:Lcom/giphy/sdk/ui/pagination/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/giphy/sdk/core/network/response/ListMediaResponse;

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->b(Lcom/giphy/sdk/core/network/response/ListMediaResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/giphy/sdk/core/network/response/ListMediaResponse;Ljava/lang/Throwable;)V
    .locals 13
    .param p1    # Lcom/giphy/sdk/core/network/response/ListMediaResponse;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    instance-of v0, p2, Lcom/giphy/sdk/core/network/engine/ApiException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/giphy/sdk/core/network/engine/ApiException;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/network/engine/ApiException;->getErrorResponse()Lcom/giphy/sdk/core/network/response/ErrorResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/giphy/sdk/core/network/response/ErrorResponse;->getMeta()Lcom/giphy/sdk/core/models/Meta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/Meta;->getStatus()I

    move-result v0

    const/16 v2, 0x1a6

    if-eq v0, v2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/response/ListMediaResponse;->getData()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_23

    .line 2
    :cond_2
    iget-object p2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {p2}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getNetworkState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getNetworkState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/giphy/sdk/ui/pagination/c;

    sget-object v2, Lcom/giphy/sdk/ui/pagination/c;->h:Lcom/giphy/sdk/ui/pagination/c$a;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/pagination/c$a;->f()Lcom/giphy/sdk/ui/pagination/c;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/pagination/c$a;->d()Lcom/giphy/sdk/ui/pagination/c;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/giphy/sdk/ui/pagination/c$a;->c()Lcom/giphy/sdk/ui/pagination/c;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadGifs "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->b:Lcom/giphy/sdk/ui/pagination/c;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " newGifCount="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/response/ListMediaResponse;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p2, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {p2}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getFooterItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 p2, 0x1

    if-eqz p1, :cond_1b

    .line 5
    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/response/ListMediaResponse;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 6
    iget-object v3, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v3}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getGifsAdapter()Lcom/giphy/sdk/ui/universallist/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/giphy/sdk/ui/universallist/e;->g()Lcom/giphy/sdk/ui/universallist/e$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/giphy/sdk/ui/universallist/e$a;->e()Lcom/giphy/sdk/ui/GPHSettings;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/giphy/sdk/ui/GPHSettings;->getEnableDynamicText()Z

    move-result v3

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_8

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/giphy/sdk/core/models/Media;

    .line 9
    invoke-virtual {v5}, Lcom/giphy/sdk/core/models/Media;->isDynamic()Z

    move-result v5

    xor-int/2addr v5, p2

    if-eqz v5, :cond_6

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object v2, v3

    .line 10
    :cond_8
    iget-object v3, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-static {v3, v2}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->h(Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;Ljava/util/List;)Z

    move-result v3

    .line 11
    iget-object v4, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v4}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getContentItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 14
    move-object v9, v6

    check-cast v9, Lcom/giphy/sdk/core/models/Media;

    if-eqz v3, :cond_9

    .line 15
    sget-object v6, Lcom/giphy/sdk/ui/universallist/SmartItemType;->DynamicText:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    :goto_6
    move-object v8, v6

    goto :goto_7

    .line 16
    :cond_9
    invoke-virtual {v9}, Lcom/giphy/sdk/core/models/Media;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 17
    sget-object v6, Lcom/giphy/sdk/ui/universallist/SmartItemType;->DynamicTextWithMoreByYou:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    goto :goto_6

    .line 18
    :cond_a
    invoke-static {v9}, Lcom/giphy/sdk/tracking/f;->f(Lcom/giphy/sdk/core/models/Media;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 19
    sget-object v6, Lcom/giphy/sdk/ui/universallist/SmartItemType;->Video:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    goto :goto_6

    .line 20
    :cond_b
    sget-object v6, Lcom/giphy/sdk/ui/universallist/SmartItemType;->Gif:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    goto :goto_6

    .line 21
    :goto_7
    new-instance v6, Lcom/giphy/sdk/ui/universallist/g;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/giphy/sdk/ui/universallist/g;-><init>(Lcom/giphy/sdk/ui/universallist/SmartItemType;Ljava/lang/Object;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 22
    :cond_c
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object v2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-static {v2}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->d(Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;)Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/pagination/GPHContent;->o()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    goto :goto_8

    :cond_d
    const-string v2, ""

    .line 24
    :goto_8
    iget-object v3, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v3}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getContentItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/giphy/sdk/ui/universallist/g;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/giphy/sdk/ui/universallist/g;->a()Ljava/lang/Object;

    move-result-object v3

    goto :goto_9

    :cond_e
    move-object v3, v1

    :goto_9
    instance-of v4, v3, Lcom/giphy/sdk/core/models/Media;

    if-nez v4, :cond_f

    move-object v3, v1

    :cond_f
    check-cast v3, Lcom/giphy/sdk/core/models/Media;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/giphy/sdk/core/models/Media;->getUser()Lcom/giphy/sdk/core/models/User;

    move-result-object v3

    goto :goto_a

    :cond_10
    move-object v3, v1

    .line 25
    :goto_a
    iget-object v4, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v4}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getContentItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 26
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/giphy/sdk/ui/universallist/g;

    .line 28
    invoke-virtual {v7}, Lcom/giphy/sdk/ui/universallist/g;->a()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lcom/giphy/sdk/core/models/Media;

    if-nez v8, :cond_12

    move-object v7, v1

    :cond_12
    check-cast v7, Lcom/giphy/sdk/core/models/Media;

    if-eqz v7, :cond_13

    invoke-virtual {v7}, Lcom/giphy/sdk/core/models/Media;->getUser()Lcom/giphy/sdk/core/models/User;

    move-result-object v7

    if-eqz v7, :cond_13

    invoke-virtual {v7}, Lcom/giphy/sdk/core/models/User;->getUsername()Ljava/lang/String;

    move-result-object v7

    goto :goto_c

    :cond_13
    move-object v7, v1

    :goto_c
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/giphy/sdk/core/models/User;->getUsername()Ljava/lang/String;

    move-result-object v8

    goto :goto_d

    :cond_14
    move-object v8, v1

    :goto_d
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 29
    :cond_15
    iget-object v4, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v4}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getGifsAdapter()Lcom/giphy/sdk/ui/universallist/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/giphy/sdk/ui/universallist/e;->g()Lcom/giphy/sdk/ui/universallist/e$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/giphy/sdk/ui/universallist/e$a;->e()Lcom/giphy/sdk/ui/GPHSettings;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lcom/giphy/sdk/ui/GPHSettings;->getEnablePartnerProfiles()Z

    move-result v4

    if-ne v4, p2, :cond_1b

    .line 30
    invoke-static {v2}, Lkotlin/text/StringsKt;->firstOrNull(Ljava/lang/CharSequence;)Ljava/lang/Character;

    move-result-object v4

    if-nez v4, :cond_16

    goto/16 :goto_10

    :cond_16
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    const/16 v6, 0x40

    if-ne v4, v6, :cond_1b

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v4, p2, :cond_1b

    iget-object v4, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v4}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getContentItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v6, 0x19

    if-gt v4, v6, :cond_1b

    .line 31
    iget-object v4, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v4}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getContentItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, p2

    if-eqz v4, :cond_1b

    if-eqz v3, :cond_1b

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/giphy/sdk/core/models/User;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 33
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v4, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v4}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getContentItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v2, v4, :cond_1b

    .line 34
    invoke-virtual {v3}, Lcom/giphy/sdk/core/models/User;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_e

    :cond_17
    const/4 v2, 0x0

    goto :goto_f

    :cond_18
    :goto_e
    const/4 v2, 0x1

    :goto_f
    if-nez v2, :cond_1b

    .line 35
    invoke-virtual {v3}, Lcom/giphy/sdk/core/models/User;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    const/4 v0, 0x1

    :cond_1a
    if-nez v0, :cond_1b

    .line 36
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getHeaderItems()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v2, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g$a;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g$a;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 37
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getHeaderItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 38
    new-instance v2, Lcom/giphy/sdk/ui/universallist/g;

    .line 39
    sget-object v4, Lcom/giphy/sdk/ui/universallist/SmartItemType;->UserProfile:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    .line 40
    iget-object v5, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v5}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getSpanCount()I

    move-result v5

    .line 41
    invoke-direct {v2, v4, v3, v5}, Lcom/giphy/sdk/ui/universallist/g;-><init>(Lcom/giphy/sdk/ui/universallist/SmartItemType;Ljava/lang/Object;I)V

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_1b
    :goto_10
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getNetworkState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/giphy/sdk/ui/pagination/c;

    sget-object v2, Lcom/giphy/sdk/ui/pagination/c;->h:Lcom/giphy/sdk/ui/pagination/c$a;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/pagination/c$a;->d()Lcom/giphy/sdk/ui/pagination/c;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getContentItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 44
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-static {v0}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->d(Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;)Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/pagination/GPHContent;->k()Lcom/giphy/sdk/core/models/enums/MediaType;

    move-result-object v1

    :cond_1c
    if-nez v1, :cond_1d

    goto :goto_11

    :cond_1d
    sget-object v0, Lcom/giphy/sdk/ui/universallist/f;->$EnumSwitchMapping$3:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, p2, :cond_20

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1f

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1e

    .line 45
    :goto_11
    iget-object p2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/giphy/sdk/ui/p$o;->Y0:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(R.stri\u2026.gph_error_no_gifs_found)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_12

    .line 46
    :cond_1e
    iget-object p2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/giphy/sdk/ui/p$o;->X0:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(R.stri\u2026gph_error_no_clips_found)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_12

    .line 47
    :cond_1f
    iget-object p2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/giphy/sdk/ui/p$o;->b1:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(R.stri\u2026gph_error_no_texts_found)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_12

    .line 48
    :cond_20
    iget-object p2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/giphy/sdk/ui/p$o;->a1:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(R.stri\u2026_error_no_stickers_found)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    :goto_12
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getFooterItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/giphy/sdk/ui/universallist/g;

    .line 51
    sget-object v2, Lcom/giphy/sdk/ui/universallist/SmartItemType;->NoResults:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    .line 52
    iget-object v3, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v3}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getSpanCount()I

    move-result v3

    .line 53
    invoke-direct {v1, v2, p2, v3}, Lcom/giphy/sdk/ui/universallist/g;-><init>(Lcom/giphy/sdk/ui/universallist/SmartItemType;Ljava/lang/Object;I)V

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    if-eqz p1, :cond_22

    .line 55
    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/response/ListMediaResponse;->getMeta()Lcom/giphy/sdk/core/models/Meta;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 56
    iget-object p2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {p2}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getResponseId()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Meta;->getResponseId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 57
    :cond_22
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->A()V

    return-void

    .line 58
    :cond_23
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->f(Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;)Lcom/giphy/sdk/ui/GPHContentType;

    move-result-object p1

    sget-object v0, Lcom/giphy/sdk/ui/GPHContentType;->recents:Lcom/giphy/sdk/ui/GPHContentType;

    if-ne p1, v0, :cond_24

    .line 59
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getFooterItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 60
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getFooterItems()Ljava/util/ArrayList;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/giphy/sdk/ui/universallist/g;

    .line 62
    sget-object v0, Lcom/giphy/sdk/ui/universallist/SmartItemType;->NoResults:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    .line 63
    iget-object v1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/giphy/sdk/ui/p$o;->Z0:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getSpanCount()I

    move-result v2

    .line 65
    invoke-direct {p2, v0, v1, v2}, Lcom/giphy/sdk/ui/universallist/g;-><init>(Lcom/giphy/sdk/ui/universallist/SmartItemType;Ljava/lang/Object;I)V

    .line 66
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->A()V

    return-void

    :cond_24
    if-eqz p2, :cond_26

    .line 68
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getNetworkState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getNetworkState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/giphy/sdk/ui/pagination/c;

    sget-object v1, Lcom/giphy/sdk/ui/pagination/c;->h:Lcom/giphy/sdk/ui/pagination/c$a;

    invoke-virtual {v1}, Lcom/giphy/sdk/ui/pagination/c$a;->f()Lcom/giphy/sdk/ui/pagination/c;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 69
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 70
    invoke-virtual {v1, p2}, Lcom/giphy/sdk/ui/pagination/c$a;->b(Ljava/lang/String;)Lcom/giphy/sdk/ui/pagination/c;

    move-result-object p2

    .line 71
    new-instance v0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g$b;

    iget-object v1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-direct {v0, v1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g$b;-><init>(Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;)V

    invoke-virtual {p2, v0}, Lcom/giphy/sdk/ui/pagination/c;->l(Lkotlin/jvm/functions/Function0;)V

    .line 72
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_13

    :cond_25
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/giphy/sdk/ui/pagination/c$a;->a(Ljava/lang/String;)Lcom/giphy/sdk/ui/pagination/c;

    move-result-object p2

    .line 73
    new-instance v0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g$c;

    iget-object v1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-direct {v0, v1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g$c;-><init>(Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;)V

    invoke-virtual {p2, v0}, Lcom/giphy/sdk/ui/pagination/c;->l(Lkotlin/jvm/functions/Function0;)V

    .line 74
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 75
    :goto_13
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 76
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->p(Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;)V

    .line 77
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$g;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->A()V

    :cond_26
    return-void
.end method
