.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/y;
.super Ljava/lang/Object;
.source "RankFlavourControler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRankFlavourControler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RankFlavourControler.kt\ncom/qennnsad/aknkaksd/presentation/ui/main/RankFlavorController\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,80:1\n37#2:81\n36#2,3:82\n*S KotlinDebug\n*F\n+ 1 RankFlavourControler.kt\ncom/qennnsad/aknkaksd/presentation/ui/main/RankFlavorController\n*L\n22#1:81\n22#1:82,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0013\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\u0006J\u0016\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0006R\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;",
        "",
        "",
        "",
        "e",
        "()[Ljava/lang/String;",
        "",
        "rankRoot",
        "a",
        "c",
        "b",
        "rootPosition",
        "listPosition",
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/h;",
        "d",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "context",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Landroid/content/Context;Lg5/a;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lu7/f;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg5/a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDataManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;->b:Lg5/a;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;->c()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const v2, 0x7f08015f

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const v2, 0x7f080160

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    const v2, 0x7f080161

    goto :goto_0

    :cond_3
    const v2, 0x7f0602f5

    :goto_0
    return v2
.end method

.method public final b()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;->c()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;->b:Lg5/a;

    invoke-virtual {v1}, Lg5/a;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;->b:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public final d(II)Lcom/qennnsad/aknkaksd/presentation/module/rank/h;
    .locals 4
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;->b()I

    move-result v0

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    if-eq p2, v3, :cond_1

    if-eq p2, v1, :cond_0

    .line 3
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$a;

    invoke-direct {p2, p1, v3, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$a;-><init>(Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$b;

    invoke-direct {p2, p1, v3, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$b;-><init>(Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    .line 5
    :cond_1
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$d;

    invoke-direct {p2, p1, v3, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$d;-><init>(Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    .line 6
    :cond_2
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$c;

    invoke-direct {p2, p1, v3, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$c;-><init>(Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_3
    if-ne p1, v3, :cond_7

    if-eqz p2, :cond_6

    if-eq p2, v3, :cond_5

    if-eq p2, v1, :cond_4

    .line 7
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$a;

    invoke-direct {p2, v2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$a;-><init>(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 8
    :cond_4
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$b;

    invoke-direct {p2, v2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$b;-><init>(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 9
    :cond_5
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$d;

    invoke-direct {p2, v2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$d;-><init>(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 10
    :cond_6
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$c;

    invoke-direct {p2, v2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$c;-><init>(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_7
    if-ne p1, v1, :cond_b

    if-eqz p2, :cond_a

    if-eq p2, v3, :cond_9

    if-eq p2, v1, :cond_8

    .line 11
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$m;

    invoke-direct {p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$m;-><init>()V

    goto :goto_0

    .line 12
    :cond_8
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$n;

    invoke-direct {p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$n;-><init>()V

    goto :goto_0

    .line 13
    :cond_9
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$p;

    invoke-direct {p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$p;-><init>()V

    goto :goto_0

    .line 14
    :cond_a
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$o;

    invoke-direct {p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$o;-><init>()V

    goto :goto_0

    :cond_b
    if-ne p1, v0, :cond_f

    if-eqz p2, :cond_e

    if-eq p2, v3, :cond_d

    if-eq p2, v1, :cond_c

    .line 15
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$e;

    invoke-direct {p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$e;-><init>()V

    goto :goto_0

    .line 16
    :cond_c
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$f;

    invoke-direct {p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$f;-><init>()V

    goto :goto_0

    .line 17
    :cond_d
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$h;

    invoke-direct {p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$h;-><init>()V

    goto :goto_0

    .line 18
    :cond_e
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$g;

    invoke-direct {p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$g;-><init>()V

    goto :goto_0

    :cond_f
    if-eqz p2, :cond_12

    if-eq p2, v3, :cond_11

    if-eq p2, v1, :cond_10

    .line 19
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$i;

    invoke-direct {p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$i;-><init>()V

    goto :goto_0

    .line 20
    :cond_10
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$j;

    invoke-direct {p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$j;-><init>()V

    goto :goto_0

    .line 21
    :cond_11
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$l;

    invoke-direct {p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$l;-><init>()V

    goto :goto_0

    .line 22
    :cond_12
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$k;

    invoke-direct {p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$k;-><init>()V

    :goto_0
    return-object p2
.end method

.method public final e()[Ljava/lang/String;
    .locals 4
    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;->b:Lg5/a;

    invoke-virtual {v1}, Lg5/a;->H()Z

    move-result v1

    const-string v2, "it"

    if-eqz v1, :cond_0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/ranges/IntRange;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->slice([Ljava/lang/Object;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0
.end method
