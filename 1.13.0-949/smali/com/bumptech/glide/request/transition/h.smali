.class public Lcom/bumptech/glide/request/transition/h;
.super Ljava/lang/Object;
.source "ViewAnimationFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/transition/h$b;,
        Lcom/bumptech/glide/request/transition/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/g<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/request/transition/k$a;

.field private b:Lcom/bumptech/glide/request/transition/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/f<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 2
    new-instance v0, Lcom/bumptech/glide/request/transition/h$b;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/transition/h$b;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/transition/h;-><init>(Lcom/bumptech/glide/request/transition/k$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/transition/h$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/transition/h$a;-><init>(Landroid/view/animation/Animation;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/transition/h;-><init>(Lcom/bumptech/glide/request/transition/k$a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/request/transition/k$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/request/transition/h;->a:Lcom/bumptech/glide/request/transition/k$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lcom/bumptech/glide/request/transition/f<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p1, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/request/transition/h;->b:Lcom/bumptech/glide/request/transition/f;

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Lcom/bumptech/glide/request/transition/k;

    iget-object p2, p0, Lcom/bumptech/glide/request/transition/h;->a:Lcom/bumptech/glide/request/transition/k$a;

    invoke-direct {p1, p2}, Lcom/bumptech/glide/request/transition/k;-><init>(Lcom/bumptech/glide/request/transition/k$a;)V

    iput-object p1, p0, Lcom/bumptech/glide/request/transition/h;->b:Lcom/bumptech/glide/request/transition/f;

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/request/transition/h;->b:Lcom/bumptech/glide/request/transition/f;

    return-object p1

    .line 5
    :cond_2
    :goto_0
    invoke-static {}, Lcom/bumptech/glide/request/transition/e;->b()Lcom/bumptech/glide/request/transition/f;

    move-result-object p1

    return-object p1
.end method
