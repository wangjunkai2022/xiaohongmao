.class final Lcom/google/android/exoplayer2/ui/PlayerControlView$b;
.super Ljava/lang/Object;
.source "PlayerControlView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/v1$f;
.implements Lcom/google/android/exoplayer2/ui/u0$a;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/PlayerControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ui/PlayerControlView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method


# virtual methods
.method public synthetic B(Lcom/google/android/exoplayer2/b1;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->f(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/b1;I)V

    return-void
.end method

.method public synthetic C(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->h(Lcom/google/android/exoplayer2/v1$f;ZI)V

    return-void
.end method

.method public synthetic E(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->d(Lcom/google/android/exoplayer2/v1$f;Z)V

    return-void
.end method

.method public synthetic G(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->e(Lcom/google/android/exoplayer2/v1$f;Z)V

    return-void
.end method

.method public synthetic U(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->n(Lcom/google/android/exoplayer2/v1$f;I)V

    return-void
.end method

.method public synthetic X()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/w1;->q(Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public synthetic a0(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->m(Lcom/google/android/exoplayer2/v1$f;ZI)V

    return-void
.end method

.method public synthetic c(Lcom/google/android/exoplayer2/t1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->i(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/t1;)V

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/ui/u0;J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/util/z0;->n0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic e(Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/w1;->o(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;I)V

    return-void
.end method

.method public synthetic e0(Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/w1;->u(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic f(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->k(Lcom/google/android/exoplayer2/v1$f;I)V

    return-void
.end method

.method public synthetic g(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->s(Lcom/google/android/exoplayer2/v1$f;Ljava/util/List;)V

    return-void
.end method

.method public synthetic h(Lcom/google/android/exoplayer2/v1$c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->a(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/v1$c;)V

    return-void
.end method

.method public synthetic i(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->p(Lcom/google/android/exoplayer2/v1$f;I)V

    return-void
.end method

.method public synthetic j(Lcom/google/android/exoplayer2/s2;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->t(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/s2;I)V

    return-void
.end method

.method public synthetic l(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->j(Lcom/google/android/exoplayer2/v1$f;I)V

    return-void
.end method

.method public synthetic m(Lcom/google/android/exoplayer2/f1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->g(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/f1;)V

    return-void
.end method

.method public synthetic n(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->r(Lcom/google/android/exoplayer2/v1$f;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v1;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/j;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/j;->k(Lcom/google/android/exoplayer2/v1;)Z

    goto/16 :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/j;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/j;->j(Lcom/google/android/exoplayer2/v1;)Z

    goto/16 :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->c()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_8

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/j;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/j;->g(Lcom/google/android/exoplayer2/v1;)Z

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/j;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/j;->b(Lcom/google/android/exoplayer2/v1;)Z

    goto :goto_0

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/v1;)V

    goto :goto_0

    .line 13
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_6

    .line 14
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/v1;)V

    goto :goto_0

    .line 15
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/j;

    move-result-object p1

    .line 17
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->k()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q(Lcom/google/android/exoplayer2/ui/PlayerControlView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/j0;->a(II)I

    move-result v1

    .line 18
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/j;->e(Lcom/google/android/exoplayer2/v1;I)Z

    goto :goto_0

    .line 19
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_8

    .line 20
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/j;

    move-result-object p1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->H1()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/j;->d(Lcom/google/android/exoplayer2/v1;Z)Z

    :cond_8
    :goto_0
    return-void
.end method

.method public synthetic s(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->v(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V

    return-void
.end method

.method public synthetic u(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->l(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public synthetic v(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->c(Lcom/google/android/exoplayer2/v1$f;Z)V

    return-void
.end method

.method public x(Lcom/google/android/exoplayer2/ui/u0;JZ)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z

    if-nez p4, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v1;

    move-result-object p4

    invoke-static {p1, p4, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/v1;J)V

    :cond_0
    return-void
.end method

.method public y(Lcom/google/android/exoplayer2/ui/u0;J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/util/z0;->n0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public z(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V
    .locals 1

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/v1$g;->b([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/v1$g;->b([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_1
    const/16 v0, 0x9

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/v1$g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_2
    const/16 v0, 0xa

    .line 7
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/v1$g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_3
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_2

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/v1$g;->b([I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_4
    new-array p1, p1, [I

    .line 11
    fill-array-data p1, :array_3

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/v1$g;->b([I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x5
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x6
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x9
        0xa
        0xc
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xc
        0x0
    .end array-data
.end method
