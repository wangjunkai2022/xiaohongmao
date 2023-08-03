.class Lcom/yalantis/ucrop/e$h;
.super Ljava/lang/Object;
.source "UCropFragment.java"

# interfaces
.implements La6/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/e;->g0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yalantis/ucrop/e;


# direct methods
.method constructor <init>(Lcom/yalantis/ucrop/e;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/e$h;->a:Lcom/yalantis/ucrop/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;IIII)V
    .locals 8
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/e$h;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v0}, Lcom/yalantis/ucrop/e;->Y(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/f;

    move-result-object v0

    iget-object v1, p0, Lcom/yalantis/ucrop/e$h;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v1}, Lcom/yalantis/ucrop/e;->Z(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yalantis/ucrop/view/CropImageView;->getTargetAspectRatio()F

    move-result v3

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/yalantis/ucrop/e;->i0(Landroid/net/Uri;FIIII)Lcom/yalantis/ucrop/e$j;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/yalantis/ucrop/f;->a(Lcom/yalantis/ucrop/e$j;)V

    .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/e$h;->a:Lcom/yalantis/ucrop/e;

    invoke-static {p1}, Lcom/yalantis/ucrop/e;->Y(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/f;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/yalantis/ucrop/f;->b(Z)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/e$h;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v0}, Lcom/yalantis/ucrop/e;->Y(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/f;

    move-result-object v0

    iget-object v1, p0, Lcom/yalantis/ucrop/e$h;->a:Lcom/yalantis/ucrop/e;

    invoke-virtual {v1, p1}, Lcom/yalantis/ucrop/e;->h0(Ljava/lang/Throwable;)Lcom/yalantis/ucrop/e$j;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/yalantis/ucrop/f;->a(Lcom/yalantis/ucrop/e$j;)V

    return-void
.end method
