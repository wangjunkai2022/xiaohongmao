.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SidePanelButtonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSidePanelButtonAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SidePanelButtonAdapter.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/player/player/SidePanelButtonAdapter$SideButtonHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,72:1\n254#2,2:73\n*S KotlinDebug\n*F\n+ 1 SidePanelButtonAdapter.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/player/player/SidePanelButtonAdapter$SideButtonHolder\n*L\n23#1:73,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;",
        "item",
        "",
        "b",
        "Le5/w2;",
        "binding",
        "Le5/w2;",
        "c",
        "()Le5/w2;",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;Le5/w2;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Le5/w2;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;Le5/w2;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le5/w2;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;

    .line 2
    invoke-virtual {p2}, Le5/w2;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1$a;->a:Le5/w2;

    return-void
.end method


# virtual methods
.method public final b(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;)V
    .locals 3
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1$a;->a:Le5/w2;

    iget-object v0, v0, Le5/w2;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1$a;->a:Le5/w2;

    iget-object v0, v0, Le5/w2;->c:Landroid/widget/TextView;

    const-string v1, "binding.tvIndicator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;->b()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 3
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1$a;->a:Le5/w2;

    iget-object v0, v0, Le5/w2;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c()Le5/w2;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1$a;->a:Le5/w2;

    return-object v0
.end method
