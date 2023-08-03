.class final Lcom/qennnsad/aknkaksd/util/l0$b$a;
.super Lkotlin/jvm/internal/Lambda;
.source "GestureUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/l0$b;->a(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGestureUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GestureUtil.kt\ncom/qennnsad/aknkaksd/util/GestureUtil$setupPtrDecors$2$onSlideComplete$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,201:1\n275#2,2:202\n275#2,2:204\n*S KotlinDebug\n*F\n+ 1 GestureUtil.kt\ncom/qennnsad/aknkaksd/util/GestureUtil$setupPtrDecors$2$onSlideComplete$1\n*L\n172#1:202,2\n173#1:204,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/l0$b$a;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/l0$b$a;->b:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/l0$b$a;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/l0$b$a;->a:Landroid/view/View;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/l0$b$a;->b:Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
