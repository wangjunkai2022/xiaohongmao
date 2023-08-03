.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;
.super Lkotlin/jvm/internal/Lambda;
.source "PkPlayerManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->t0(ZZZ)V
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
.field final synthetic a:Z

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

.field final synthetic c:Z

.field final synthetic d:Z


# direct methods
.method constructor <init>(ZLcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->a:Z

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    iput-boolean p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->c:Z

    iput-boolean p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->d:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 2
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->I()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->d:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-interface {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->setVisible(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->setVisible(Z)V

    .line 6
    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->c()V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->g(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-boolean v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->c:Z

    invoke-static {v0, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->j(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Landroid/view/ViewGroup;Z)Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;

    move-result-object v2

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    .line 8
    invoke-static {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;)Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->setOnDonatorClickListener(Lkotlin/jvm/functions/Function1;)V

    .line 9
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->b()V

    .line 10
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->a()V

    .line 11
    invoke-static {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->k(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;)V

    .line 12
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->d:Z

    const v2, 0x7f0a03f2

    const v3, 0x7f0a0409

    const v4, 0x7f0a079a

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->g(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;)Landroid/view/ViewGroup;

    move-result-object v0

    const v5, 0x7f0805e0

    .line 14
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 15
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :goto_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;)Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->g(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-boolean v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->a:Z

    iget-object v6, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    const v7, 0x7f060033

    .line 20
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    const/16 v7, 0x8

    if-nez v5, :cond_5

    .line 21
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const v2, 0x7f0a0763

    .line 24
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;)Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 26
    :goto_3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;)V

    .line 27
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->i(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;)V

    .line 28
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->l(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Z)V

    .line 29
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v1, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->p0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZZILjava/lang/Object;)V

    :goto_4
    return-void
.end method
