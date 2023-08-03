.class public final Liamutkarshtiwari/github/io/ananas/editimage/utils/d;
.super Ljava/lang/Object;
.source "GestureNavigationBounds.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGestureNavigationBounds.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GestureNavigationBounds.kt\niamutkarshtiwari/github/io/ananas/editimage/utils/GestureNavigationBounds\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,31:1\n66#2,4:32\n38#2:36\n54#2:37\n73#2:38\n*S KotlinDebug\n*F\n+ 1 GestureNavigationBounds.kt\niamutkarshtiwari/github/io/ananas/editimage/utils/GestureNavigationBounds\n*L\n21#1:32,4\n21#1:36\n21#1:37\n21#1:38\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0007\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR!\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Liamutkarshtiwari/github/io/ananas/editimage/utils/d;",
        "",
        "Landroid/view/View;",
        "view",
        "",
        "Landroid/graphics/Rect;",
        "c",
        "exclusionRect",
        "e",
        "a",
        "Landroid/graphics/Rect;",
        "b",
        "Lkotlin/Lazy;",
        "d",
        "()Ljava/util/List;",
        "exclusionRects",
        "<init>",
        "(Landroid/view/View;)V",
        "lib-ananas_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/d;->a:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/utils/d$a;

    invoke-direct {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/d$a;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/utils/d;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/d;->b:Lkotlin/Lazy;

    .line 4
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/utils/d;->a(Liamutkarshtiwari/github/io/ananas/editimage/utils/d;Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setSystemGestureExclusionRects(Landroid/view/View;Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/utils/d$b;

    invoke-direct {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/d$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/utils/d;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Liamutkarshtiwari/github/io/ananas/editimage/utils/d;Landroid/view/View;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/utils/d;->c(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Liamutkarshtiwari/github/io/ananas/editimage/utils/d;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/d;->a:Landroid/graphics/Rect;

    return-object p0
.end method

.method private final c(Landroid/view/View;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/d;->a:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/utils/d;->e(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 2
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/d;->d()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/utils/d;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final e(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1
.end method
