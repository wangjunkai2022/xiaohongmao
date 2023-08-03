.class final Lcom/bumptech/glide/manager/e;
.super Ljava/lang/Object;
.source "DefaultConnectivityMonitor.java"

# interfaces
.implements Lcom/bumptech/glide/manager/c;


# instance fields
.field private final a:Landroid/content/Context;

.field final b:Lcom/bumptech/glide/manager/c$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/c$a;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/manager/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/e;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/manager/e;->b:Lcom/bumptech/glide/manager/c$a;

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/manager/r;->a(Landroid/content/Context;)Lcom/bumptech/glide/manager/r;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/manager/e;->b:Lcom/bumptech/glide/manager/c$a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/r;->d(Lcom/bumptech/glide/manager/c$a;)V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/manager/r;->a(Landroid/content/Context;)Lcom/bumptech/glide/manager/r;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/manager/e;->b:Lcom/bumptech/glide/manager/c$a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/r;->f(Lcom/bumptech/glide/manager/c$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/manager/e;->b()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/manager/e;->c()V

    return-void
.end method
