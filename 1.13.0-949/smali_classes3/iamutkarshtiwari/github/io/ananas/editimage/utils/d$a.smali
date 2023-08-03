.class final Liamutkarshtiwari/github/io/ananas/editimage/utils/d$a;
.super Lkotlin/jvm/internal/Lambda;
.source "GestureNavigationBounds.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liamutkarshtiwari/github/io/ananas/editimage/utils/d;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Landroid/graphics/Rect;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroid/graphics/Rect;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/utils/d;


# direct methods
.method constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/utils/d;)V
    .locals 0

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/d$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/utils/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/d$a;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/d$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/utils/d;

    invoke-static {v0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/d;->b(Liamutkarshtiwari/github/io/ananas/editimage/utils/d;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
