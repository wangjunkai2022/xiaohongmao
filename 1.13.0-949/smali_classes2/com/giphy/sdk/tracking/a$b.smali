.class public final Lcom/giphy/sdk/tracking/a$b;
.super Ljava/lang/Object;
.source "CompletionHandlerExtension.kt"

# interfaces
.implements Lcom/giphy/sdk/core/network/api/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/tracking/a;->a(Lcom/giphy/sdk/core/network/api/a;ZZ)Lcom/giphy/sdk/core/network/api/a;
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
    value = "SMAP\nCompletionHandlerExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompletionHandlerExtension.kt\ncom/giphy/sdk/tracking/CompletionHandlerExtensionKt$completionHandlerWithUserDictionary$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,25:1\n1828#2,3:26\n*E\n*S KotlinDebug\n*F\n+ 1 CompletionHandlerExtension.kt\ncom/giphy/sdk/tracking/CompletionHandlerExtensionKt$completionHandlerWithUserDictionary$2\n*L\n13#1,3:26\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/giphy/sdk/tracking/a$b",
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
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/giphy/sdk/tracking/a$a;


# direct methods
.method constructor <init>(ZZLcom/giphy/sdk/tracking/a$a;)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/tracking/a$b;->a:Z

    iput-boolean p2, p0, Lcom/giphy/sdk/tracking/a$b;->b:Z

    iput-object p3, p0, Lcom/giphy/sdk/tracking/a$b;->c:Lcom/giphy/sdk/tracking/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/giphy/sdk/core/network/response/ListMediaResponse;

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/tracking/a$b;->b(Lcom/giphy/sdk/core/network/response/ListMediaResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/giphy/sdk/core/network/response/ListMediaResponse;Ljava/lang/Throwable;)V
    .locals 6
    .param p1    # Lcom/giphy/sdk/core/network/response/ListMediaResponse;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/response/ListMediaResponse;->getData()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/response/ListMediaResponse;->getMeta()Lcom/giphy/sdk/core/models/Meta;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/response/ListMediaResponse;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v3, Lcom/giphy/sdk/core/models/Media;

    .line 4
    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/response/ListMediaResponse;->getMeta()Lcom/giphy/sdk/core/models/Meta;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/giphy/sdk/core/models/Meta;->getResponseId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/giphy/sdk/tracking/f;->j(Lcom/giphy/sdk/core/models/Media;Ljava/lang/String;)V

    .line 5
    iget-boolean v5, p0, Lcom/giphy/sdk/tracking/a$b;->a:Z

    if-eqz v5, :cond_2

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lcom/giphy/sdk/tracking/f;->g(Lcom/giphy/sdk/core/models/Media;Ljava/lang/Boolean;)V

    .line 6
    :cond_2
    iget-boolean v5, p0, Lcom/giphy/sdk/tracking/a$b;->b:Z

    if-eqz v5, :cond_3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lcom/giphy/sdk/tracking/f;->k(Lcom/giphy/sdk/core/models/Media;Ljava/lang/Boolean;)V

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/response/ListMediaResponse;->getPagination()Lcom/giphy/sdk/core/models/Pagination;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/giphy/sdk/core/models/Pagination;->getOffset()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/giphy/sdk/tracking/f;->i(Lcom/giphy/sdk/core/models/Media;Ljava/lang/Integer;)V

    move v2, v4

    goto :goto_1

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/giphy/sdk/tracking/a$b;->c:Lcom/giphy/sdk/tracking/a$a;

    invoke-virtual {v0, p1, p2}, Lcom/giphy/sdk/tracking/a$a;->a(Lcom/giphy/sdk/core/network/response/ListMediaResponse;Ljava/lang/Throwable;)V

    return-void
.end method
