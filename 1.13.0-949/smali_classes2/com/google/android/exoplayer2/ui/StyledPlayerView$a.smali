.class final Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;
.super Ljava/lang/Object;
.source "StyledPlayerView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/v1$h;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/s2$b;

.field private b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/google/android/exoplayer2/s2$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/s2$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->a:Lcom/google/android/exoplayer2/s2$b;

    return-void
.end method


# virtual methods
.method public synthetic A(Lcom/google/android/exoplayer2/audio/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->a(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/audio/e;)V

    return-void
.end method

.method public synthetic B(Lcom/google/android/exoplayer2/b1;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->j(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/b1;I)V

    return-void
.end method

.method public C(ZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->q(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    return-void
.end method

.method public synthetic D(Lcom/google/android/exoplayer2/device/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->e(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/device/b;)V

    return-void
.end method

.method public synthetic E(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->i(Lcom/google/android/exoplayer2/v1$h;Z)V

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

.method public synthetic a(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->v(Lcom/google/android/exoplayer2/v1$h;Z)V

    return-void
.end method

.method public synthetic a0(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->m(Lcom/google/android/exoplayer2/v1$f;ZI)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/video/b0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->A(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/video/b0;)V

    return-void
.end method

.method public synthetic c(Lcom/google/android/exoplayer2/t1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->n(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/t1;)V

    return-void
.end method

.method public c0(IIIF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    mul-float p1, p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    :goto_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Landroid/view/TextureView;

    if-eqz p2, :cond_6

    const/16 p2, 0x5a

    if-eq p3, p2, :cond_2

    const/16 p2, 0x10e

    if-ne p3, p2, :cond_3

    :cond_2
    div-float/2addr v0, p1

    move p1, v0

    .line 2
    :cond_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)I

    move-result p2

    if-eqz p2, :cond_4

    .line 3
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4
    :cond_4
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerView;I)I

    .line 5
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)I

    move-result p2

    if-eqz p2, :cond_5

    .line 6
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7
    :cond_5
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->k(Landroid/view/TextureView;I)V

    .line 8
    :cond_6
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 9
    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->m(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z

    move-result p4

    if-eqz p4, :cond_7

    const/4 p1, 0x0

    .line 10
    :cond_7
    invoke-virtual {p2, p3, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->C(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;F)V

    return-void
.end method

.method public d(I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->h(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->e(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->f(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->x()V

    :cond_0
    return-void
.end method

.method public synthetic e0(Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/w1;->u(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic f(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->p(Lcom/google/android/exoplayer2/v1$h;I)V

    return-void
.end method

.method public synthetic g(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->w(Lcom/google/android/exoplayer2/v1$h;Ljava/util/List;)V

    return-void
.end method

.method public synthetic h(Lcom/google/android/exoplayer2/v1$c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->c(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/v1$c;)V

    return-void
.end method

.method public synthetic i(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->t(Lcom/google/android/exoplayer2/v1$h;I)V

    return-void
.end method

.method public synthetic j(Lcom/google/android/exoplayer2/s2;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->y(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/s2;I)V

    return-void
.end method

.method public synthetic k(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->b(Lcom/google/android/exoplayer2/v1$h;I)V

    return-void
.end method

.method public l(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->q(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->c(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    return-void
.end method

.method public synthetic m(Lcom/google/android/exoplayer2/f1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->k(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/f1;)V

    return-void
.end method

.method public synthetic n(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->u(Lcom/google/android/exoplayer2/v1$h;Z)V

    return-void
.end method

.method public synthetic o(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->l(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->g(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    check-cast p1, Landroid/view/TextureView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->k(Landroid/view/TextureView;I)V

    return-void
.end method

.method public synthetic p(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->f(Lcom/google/android/exoplayer2/v1$h;IZ)V

    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->n(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->n(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public r(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->r(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public s(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->o(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/v1;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/v1;

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->z0()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->Y0()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->a:Lcom/google/android/exoplayer2/s2$b;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/exoplayer2/s2;->k(ILcom/google/android/exoplayer2/s2$b;Z)Lcom/google/android/exoplayer2/s2$b;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/s2$b;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/s2;->f(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->a:Lcom/google/android/exoplayer2/s2$b;

    .line 10
    invoke-virtual {p2, v0, v2}, Lcom/google/android/exoplayer2/s2;->j(ILcom/google/android/exoplayer2/s2$b;)Lcom/google/android/exoplayer2/s2$b;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/s2$b;->c:I

    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result p1

    if-ne p1, p2, :cond_2

    return-void

    .line 12
    :cond_2
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Ljava/lang/Object;

    .line 13
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->p(Lcom/google/android/exoplayer2/ui/StyledPlayerView;Z)V

    return-void
.end method

.method public synthetic t(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->x(Lcom/google/android/exoplayer2/v1$h;II)V

    return-void
.end method

.method public synthetic u(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->q(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public synthetic v(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->h(Lcom/google/android/exoplayer2/v1$h;Z)V

    return-void
.end method

.method public synthetic w(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->B(Lcom/google/android/exoplayer2/v1$h;F)V

    return-void
.end method

.method public synthetic z(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->g(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V

    return-void
.end method
