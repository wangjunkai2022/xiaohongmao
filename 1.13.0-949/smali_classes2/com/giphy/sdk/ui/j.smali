.class public final Lcom/giphy/sdk/ui/j;
.super Ljava/lang/Object;
.source "GPHSuggestions.kt"

# interfaces
.implements Lcom/giphy/sdk/ui/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/ui/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGPHSuggestions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GPHSuggestions.kt\ncom/giphy/sdk/ui/GPHSuggestionsDefaultImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n1517#2:89\n1588#2,3:90\n1517#2:93\n1588#2,3:94\n1517#2:97\n1588#2,3:98\n*E\n*S KotlinDebug\n*F\n+ 1 GPHSuggestions.kt\ncom/giphy/sdk/ui/GPHSuggestionsDefaultImpl\n*L\n47#1:89\n47#1,3:90\n65#1:93\n65#1,3:94\n69#1:97\n69#1,3:98\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 \u000f2\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ`\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062>\u0010\u0011\u001a:\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0015\u0012\u0013\u0018\u00010\u000e\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00100\u0008H\u0016R&\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\t0\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0014R&\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\t0\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0014R\u0017\u0010\u001d\u001a\u00020\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/giphy/sdk/ui/j;",
        "Lcom/giphy/sdk/ui/i;",
        "Lcom/giphy/sdk/ui/GPHSearchSuggestionType;",
        "type",
        "",
        "term",
        "",
        "ignoreCache",
        "Lkotlin/Function2;",
        "",
        "Lcom/giphy/sdk/ui/h;",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "",
        "e",
        "",
        "completionHandler",
        "a",
        "Lcom/giphy/sdk/ui/d;",
        "Lcom/giphy/sdk/ui/d;",
        "trendingCache",
        "b",
        "channelsCache",
        "Lcom/giphy/sdk/ui/g;",
        "c",
        "Lcom/giphy/sdk/ui/g;",
        "d",
        "()Lcom/giphy/sdk/ui/g;",
        "recentSearches",
        "<init>",
        "(Lcom/giphy/sdk/ui/g;)V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "last"

.field public static final e:Lcom/giphy/sdk/ui/j$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/giphy/sdk/ui/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/giphy/sdk/ui/d<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/giphy/sdk/ui/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/giphy/sdk/ui/d<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/giphy/sdk/ui/g;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/giphy/sdk/ui/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/giphy/sdk/ui/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/giphy/sdk/ui/j;->e:Lcom/giphy/sdk/ui/j$a;

    return-void
.end method

.method public constructor <init>(Lcom/giphy/sdk/ui/g;)V
    .locals 3
    .param p1    # Lcom/giphy/sdk/ui/g;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "recentSearches"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/ui/j;->c:Lcom/giphy/sdk/ui/g;

    .line 2
    new-instance p1, Lcom/giphy/sdk/ui/d;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/giphy/sdk/ui/d;-><init>(J)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/j;->a:Lcom/giphy/sdk/ui/d;

    .line 3
    new-instance p1, Lcom/giphy/sdk/ui/d;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/giphy/sdk/ui/d;-><init>(J)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/j;->b:Lcom/giphy/sdk/ui/d;

    return-void
.end method

.method public static final synthetic b(Lcom/giphy/sdk/ui/j;)Lcom/giphy/sdk/ui/d;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/ui/j;->b:Lcom/giphy/sdk/ui/d;

    return-object p0
.end method

.method public static final synthetic c(Lcom/giphy/sdk/ui/j;)Lcom/giphy/sdk/ui/d;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/ui/j;->a:Lcom/giphy/sdk/ui/d;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/giphy/sdk/ui/GPHSearchSuggestionType;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p1    # Lcom/giphy/sdk/ui/GPHSearchSuggestionType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giphy/sdk/ui/GPHSearchSuggestionType;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/List<",
            "Lcom/giphy/sdk/ui/h;",
            ">;-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p3, "type"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "term"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "completionHandler"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p3, Lcom/giphy/sdk/ui/k;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/16 v0, 0xa

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_3

    .line 2
    :pswitch_0
    iget-object p3, p0, Lcom/giphy/sdk/ui/j;->b:Lcom/giphy/sdk/ui/d;

    invoke-virtual {p3, p2}, Lcom/giphy/sdk/ui/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_1

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p3, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/String;

    .line 6
    new-instance v2, Lcom/giphy/sdk/ui/h;

    invoke-direct {v2, p1, v0}, Lcom/giphy/sdk/ui/h;-><init>(Lcom/giphy/sdk/ui/GPHSearchSuggestionType;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p4, p2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7
    :cond_1
    sget-object p3, Lcom/giphy/sdk/core/c;->h:Lcom/giphy/sdk/core/c;

    invoke-virtual {p3}, Lcom/giphy/sdk/core/c;->f()Lcom/giphy/sdk/core/network/api/GPHApiClient;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8
    new-instance v4, Lcom/giphy/sdk/ui/j$c;

    invoke-direct {v4, p0, p2, p4, p1}, Lcom/giphy/sdk/ui/j$c;-><init>(Lcom/giphy/sdk/ui/j;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lcom/giphy/sdk/ui/GPHSearchSuggestionType;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p2

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/giphy/sdk/core/network/api/b$a;->a(Lcom/giphy/sdk/core/network/api/b;Ljava/lang/String;IILcom/giphy/sdk/core/network/api/a;ILjava/lang/Object;)Ljava/util/concurrent/Future;

    goto/16 :goto_3

    .line 10
    :pswitch_1
    iget-object p2, p0, Lcom/giphy/sdk/ui/j;->c:Lcom/giphy/sdk/ui/g;

    invoke-virtual {p2}, Lcom/giphy/sdk/ui/g;->d()Ljava/util/List;

    move-result-object p2

    .line 11
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    new-instance v2, Lcom/giphy/sdk/ui/h;

    invoke-direct {v2, p1, v0}, Lcom/giphy/sdk/ui/h;-><init>(Lcom/giphy/sdk/ui/GPHSearchSuggestionType;Ljava/lang/String;)V

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p4, p3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 15
    :pswitch_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 16
    :pswitch_3
    iget-object p2, p0, Lcom/giphy/sdk/ui/j;->a:Lcom/giphy/sdk/ui/d;

    const-string p3, "last"

    invoke-virtual {p2, p3}, Lcom/giphy/sdk/ui/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_4

    .line 17
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    new-instance v2, Lcom/giphy/sdk/ui/h;

    invoke-direct {v2, p1, v0}, Lcom/giphy/sdk/ui/h;-><init>(Lcom/giphy/sdk/ui/GPHSearchSuggestionType;Ljava/lang/String;)V

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {p4, p3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 21
    :cond_4
    sget-object p2, Lcom/giphy/sdk/core/c;->h:Lcom/giphy/sdk/core/c;

    invoke-virtual {p2}, Lcom/giphy/sdk/core/c;->f()Lcom/giphy/sdk/core/network/api/GPHApiClient;

    move-result-object p2

    new-instance p3, Lcom/giphy/sdk/ui/j$b;

    invoke-direct {p3, p0, p4, p1}, Lcom/giphy/sdk/ui/j$b;-><init>(Lcom/giphy/sdk/ui/j;Lkotlin/jvm/functions/Function2;Lcom/giphy/sdk/ui/GPHSearchSuggestionType;)V

    invoke-virtual {p2, p3}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->i(Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Lcom/giphy/sdk/ui/g;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/j;->c:Lcom/giphy/sdk/ui/g;

    return-object v0
.end method
