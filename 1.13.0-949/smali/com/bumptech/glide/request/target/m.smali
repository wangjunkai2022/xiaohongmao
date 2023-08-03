.class public final Lcom/bumptech/glide/request/target/m;
.super Lcom/bumptech/glide/request/target/e;
.source "PreloadTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/e<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final e:I = 0x1

.field private static final f:Landroid/os/Handler;


# instance fields
.field private final d:Lcom/bumptech/glide/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/request/target/m$a;

    invoke-direct {v2}, Lcom/bumptech/glide/request/target/m$a;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/request/target/m;->f:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/k;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/request/target/e;-><init>(II)V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/request/target/m;->d:Lcom/bumptech/glide/k;

    return-void
.end method

.method public static c(Lcom/bumptech/glide/k;II)Lcom/bumptech/glide/request/target/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/k;",
            "II)",
            "Lcom/bumptech/glide/request/target/m<",
            "TZ;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/target/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/request/target/m;-><init>(Lcom/bumptech/glide/k;II)V

    return-object v0
.end method


# virtual methods
.method b()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/target/m;->d:Lcom/bumptech/glide/k;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/k;->A(Lcom/bumptech/glide/request/target/p;)V

    return-void
.end method

.method public k(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public q(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/request/transition/f<",
            "-TZ;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/e;->e()Lcom/bumptech/glide/request/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/bumptech/glide/request/e;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/bumptech/glide/request/target/m;->f:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
