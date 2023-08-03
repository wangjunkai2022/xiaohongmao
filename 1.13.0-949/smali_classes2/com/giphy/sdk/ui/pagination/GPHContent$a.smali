.class public final Lcom/giphy/sdk/ui/pagination/GPHContent$a;
.super Ljava/lang/Object;
.source "GPHContent.kt"

# interfaces
.implements Lcom/giphy/sdk/core/network/api/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/pagination/GPHContent;->g(Lcom/giphy/sdk/core/network/api/a;Lcom/giphy/sdk/analytics/models/enums/EventType;)Lcom/giphy/sdk/core/network/api/a;
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
    value = "SMAP\nGPHContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GPHContent.kt\ncom/giphy/sdk/ui/pagination/GPHContent$fixCoreTypeCompletionHandler$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,180:1\n1819#2,2:181\n*E\n*S KotlinDebug\n*F\n+ 1 GPHContent.kt\ncom/giphy/sdk/ui/pagination/GPHContent$fixCoreTypeCompletionHandler$1\n*L\n94#1,2:181\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/giphy/sdk/ui/pagination/GPHContent$a",
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
.field final synthetic a:Lcom/giphy/sdk/analytics/models/enums/EventType;

.field final synthetic b:Lcom/giphy/sdk/core/network/api/a;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/analytics/models/enums/EventType;Lcom/giphy/sdk/core/network/api/a;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/pagination/GPHContent$a;->a:Lcom/giphy/sdk/analytics/models/enums/EventType;

    iput-object p2, p0, Lcom/giphy/sdk/ui/pagination/GPHContent$a;->b:Lcom/giphy/sdk/core/network/api/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/giphy/sdk/core/network/response/ListMediaResponse;

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/pagination/GPHContent$a;->b(Lcom/giphy/sdk/core/network/response/ListMediaResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/giphy/sdk/core/network/response/ListMediaResponse;Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Lcom/giphy/sdk/core/network/response/ListMediaResponse;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/response/ListMediaResponse;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/giphy/sdk/core/models/Media;

    .line 3
    invoke-static {v1}, Lcom/giphy/sdk/tracking/f;->d(Lcom/giphy/sdk/core/models/Media;)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Lcom/giphy/sdk/core/models/enums/MediaType;->emoji:Lcom/giphy/sdk/core/models/enums/MediaType;

    invoke-virtual {v1, v2}, Lcom/giphy/sdk/core/models/Media;->setType(Lcom/giphy/sdk/core/models/enums/MediaType;)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v1}, Lcom/giphy/sdk/tracking/f;->e(Lcom/giphy/sdk/core/models/Media;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    sget-object v2, Lcom/giphy/sdk/core/models/enums/MediaType;->text:Lcom/giphy/sdk/core/models/enums/MediaType;

    invoke-virtual {v1, v2}, Lcom/giphy/sdk/core/models/Media;->setType(Lcom/giphy/sdk/core/models/enums/MediaType;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Media;->isSticker()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    sget-object v2, Lcom/giphy/sdk/core/models/enums/MediaType;->sticker:Lcom/giphy/sdk/core/models/enums/MediaType;

    invoke-virtual {v1, v2}, Lcom/giphy/sdk/core/models/Media;->setType(Lcom/giphy/sdk/core/models/enums/MediaType;)V

    .line 9
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/giphy/sdk/ui/pagination/GPHContent$a;->a:Lcom/giphy/sdk/analytics/models/enums/EventType;

    invoke-static {v1, v2}, Lcom/giphy/sdk/tracking/f;->h(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/analytics/models/enums/EventType;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/giphy/sdk/ui/pagination/GPHContent$a;->b:Lcom/giphy/sdk/core/network/api/a;

    invoke-interface {v0, p1, p2}, Lcom/giphy/sdk/core/network/api/a;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
