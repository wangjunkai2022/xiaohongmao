.class public Lcom/bumptech/glide/util/p;
.super Ljava/lang/Object;
.source "ViewPreloadSizeProvider.java"

# interfaces
.implements Lcom/bumptech/glide/g$b;
.implements Lcom/bumptech/glide/request/target/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g$b<",
        "TT;>;",
        "Lcom/bumptech/glide/request/target/o;"
    }
.end annotation


# instance fields
.field private a:[I

.field private b:Lcom/bumptech/glide/util/p$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/bumptech/glide/util/p$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/util/p$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/util/p;->b:Lcom/bumptech/glide/util/p$a;

    .line 4
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/target/f;->u(Lcom/bumptech/glide/request/target/o;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)[I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/bumptech/glide/util/p;->a:[I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/util/p;->a:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/util/p;->b:Lcom/bumptech/glide/util/p$a;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/bumptech/glide/util/p$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/util/p$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/util/p;->b:Lcom/bumptech/glide/util/p$a;

    .line 3
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/target/f;->u(Lcom/bumptech/glide/request/target/o;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 1
    iput-object v0, p0, Lcom/bumptech/glide/util/p;->a:[I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/util/p;->b:Lcom/bumptech/glide/util/p$a;

    return-void
.end method
