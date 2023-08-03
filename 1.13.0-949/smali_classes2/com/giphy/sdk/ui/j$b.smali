.class public final Lcom/giphy/sdk/ui/j$b;
.super Ljava/lang/Object;
.source "GPHSuggestions.kt"

# interfaces
.implements Lcom/giphy/sdk/core/network/api/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/j;->a(Lcom/giphy/sdk/ui/GPHSearchSuggestionType;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giphy/sdk/core/network/api/a<",
        "Lcom/giphy/sdk/core/network/response/TrendingSearchesResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGPHSuggestions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GPHSuggestions.kt\ncom/giphy/sdk/ui/GPHSuggestionsDefaultImpl$suggestions$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n1517#2:89\n1588#2,3:90\n*E\n*S KotlinDebug\n*F\n+ 1 GPHSuggestions.kt\ncom/giphy/sdk/ui/GPHSuggestionsDefaultImpl$suggestions$2\n*L\n57#1:89\n57#1,3:90\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/giphy/sdk/ui/j$b",
        "Lcom/giphy/sdk/core/network/api/a;",
        "Lcom/giphy/sdk/core/network/response/TrendingSearchesResponse;",
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
.field final synthetic a:Lcom/giphy/sdk/ui/j;

.field final synthetic b:Lkotlin/jvm/functions/Function2;

.field final synthetic c:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/j;Lkotlin/jvm/functions/Function2;Lcom/giphy/sdk/ui/GPHSearchSuggestionType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            "Lcom/giphy/sdk/ui/GPHSearchSuggestionType;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/giphy/sdk/ui/j$b;->a:Lcom/giphy/sdk/ui/j;

    iput-object p2, p0, Lcom/giphy/sdk/ui/j$b;->b:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/giphy/sdk/ui/j$b;->c:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/giphy/sdk/core/network/response/TrendingSearchesResponse;

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/j$b;->b(Lcom/giphy/sdk/core/network/response/TrendingSearchesResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/giphy/sdk/core/network/response/TrendingSearchesResponse;Ljava/lang/Throwable;)V
    .locals 5
    .param p1    # Lcom/giphy/sdk/core/network/response/TrendingSearchesResponse;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/giphy/sdk/core/network/response/TrendingSearchesResponse;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    if-nez p2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/j$b;->a:Lcom/giphy/sdk/ui/j;

    invoke-static {v0}, Lcom/giphy/sdk/ui/j;->c(Lcom/giphy/sdk/ui/j;)Lcom/giphy/sdk/ui/d;

    move-result-object v0

    const-string v1, "last"

    invoke-virtual {v0, v1, p1}, Lcom/giphy/sdk/ui/d;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/giphy/sdk/ui/j$b;->b:Lkotlin/jvm/functions/Function2;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/String;

    .line 7
    new-instance v3, Lcom/giphy/sdk/ui/h;

    iget-object v4, p0, Lcom/giphy/sdk/ui/j$b;->c:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    invoke-direct {v3, v4, v2}, Lcom/giphy/sdk/ui/h;-><init>(Lcom/giphy/sdk/ui/GPHSearchSuggestionType;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v0, v1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
