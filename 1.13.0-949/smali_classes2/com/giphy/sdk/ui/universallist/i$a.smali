.class final Lcom/giphy/sdk/ui/universallist/i$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SmartVideoPreviewViewHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giphy/sdk/ui/universallist/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/view/ViewGroup;",
        "Lcom/giphy/sdk/ui/universallist/e$a;",
        "Lcom/giphy/sdk/ui/universallist/i;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Landroid/view/ViewGroup;",
        "parent",
        "Lcom/giphy/sdk/ui/universallist/e$a;",
        "Lcom/giphy/sdk/ui/universallist/e;",
        "adapterHelper",
        "Lcom/giphy/sdk/ui/universallist/i;",
        "a",
        "(Landroid/view/ViewGroup;Lcom/giphy/sdk/ui/universallist/e$a;)Lcom/giphy/sdk/ui/universallist/i;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/giphy/sdk/ui/universallist/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/giphy/sdk/ui/universallist/i$a;

    invoke-direct {v0}, Lcom/giphy/sdk/ui/universallist/i$a;-><init>()V

    sput-object v0, Lcom/giphy/sdk/ui/universallist/i$a;->a:Lcom/giphy/sdk/ui/universallist/i$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Lcom/giphy/sdk/ui/universallist/e$a;)Lcom/giphy/sdk/ui/universallist/i;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/ui/universallist/e$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1}, Lh2/l;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lh2/l;

    move-result-object p1

    const-string v0, "GphSmartVideoPreviewItem\u2026  false\n                )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/giphy/sdk/ui/universallist/i;

    .line 4
    invoke-virtual {p1}, Lh2/l;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string v1, "binding.root"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {v0, p1, p2}, Lcom/giphy/sdk/ui/universallist/i;-><init>(Landroid/view/View;Lcom/giphy/sdk/ui/universallist/e$a;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p2, Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/universallist/i$a;->a(Landroid/view/ViewGroup;Lcom/giphy/sdk/ui/universallist/e$a;)Lcom/giphy/sdk/ui/universallist/i;

    move-result-object p1

    return-object p1
.end method
