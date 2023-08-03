.class public Lcom/iab/omid/library/giphy/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lz3/c;
.implements Lcom/iab/omid/library/giphy/b/b$b;


# static fields
.field private static f:Lcom/iab/omid/library/giphy/b/e;


# instance fields
.field private a:F

.field private final b:Lz3/e;

.field private final c:Lz3/b;

.field private d:Lz3/d;

.field private e:Lcom/iab/omid/library/giphy/b/a;


# direct methods
.method public constructor <init>(Lz3/e;Lz3/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iab/omid/library/giphy/b/e;->a:F

    iput-object p1, p0, Lcom/iab/omid/library/giphy/b/e;->b:Lz3/e;

    iput-object p2, p0, Lcom/iab/omid/library/giphy/b/e;->c:Lz3/b;

    return-void
.end method

.method public static a()Lcom/iab/omid/library/giphy/b/e;
    .locals 3

    sget-object v0, Lcom/iab/omid/library/giphy/b/e;->f:Lcom/iab/omid/library/giphy/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lz3/b;

    invoke-direct {v0}, Lz3/b;-><init>()V

    new-instance v1, Lz3/e;

    invoke-direct {v1}, Lz3/e;-><init>()V

    new-instance v2, Lcom/iab/omid/library/giphy/b/e;

    invoke-direct {v2, v1, v0}, Lcom/iab/omid/library/giphy/b/e;-><init>(Lz3/e;Lz3/b;)V

    sput-object v2, Lcom/iab/omid/library/giphy/b/e;->f:Lcom/iab/omid/library/giphy/b/e;

    :cond_0
    sget-object v0, Lcom/iab/omid/library/giphy/b/e;->f:Lcom/iab/omid/library/giphy/b/e;

    return-object v0
.end method

.method private f()Lcom/iab/omid/library/giphy/b/a;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/b/e;->e:Lcom/iab/omid/library/giphy/b/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iab/omid/library/giphy/b/a;->a()Lcom/iab/omid/library/giphy/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/iab/omid/library/giphy/b/e;->e:Lcom/iab/omid/library/giphy/b/a;

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/giphy/b/e;->e:Lcom/iab/omid/library/giphy/b/a;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 2

    iput p1, p0, Lcom/iab/omid/library/giphy/b/e;->a:F

    invoke-direct {p0}, Lcom/iab/omid/library/giphy/b/e;->f()Lcom/iab/omid/library/giphy/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/b/a;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/giphy/adsession/g;

    invoke-virtual {v1}, Lcom/iab/omid/library/giphy/adsession/g;->f()Lcom/iab/omid/library/giphy/publisher/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iab/omid/library/giphy/publisher/a;->b(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/iab/omid/library/giphy/walking/a;->p()Lcom/iab/omid/library/giphy/walking/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/giphy/walking/a;->c()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/iab/omid/library/giphy/walking/a;->p()Lcom/iab/omid/library/giphy/walking/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/giphy/walking/a;->k()V

    :goto_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/iab/omid/library/giphy/b/e;->c:Lz3/b;

    invoke-virtual {v0}, Lz3/b;->a()Lz3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/iab/omid/library/giphy/b/e;->b:Lz3/e;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, p1, v0, p0}, Lz3/e;->a(Landroid/os/Handler;Landroid/content/Context;Lz3/a;Lz3/c;)Lz3/d;

    move-result-object p1

    iput-object p1, p0, Lcom/iab/omid/library/giphy/b/e;->d:Lz3/d;

    return-void
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lcom/iab/omid/library/giphy/b/b;->a()Lcom/iab/omid/library/giphy/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/giphy/b/b;->c(Lcom/iab/omid/library/giphy/b/b$b;)V

    invoke-static {}, Lcom/iab/omid/library/giphy/b/b;->a()Lcom/iab/omid/library/giphy/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/b/b;->f()V

    invoke-static {}, Lcom/iab/omid/library/giphy/b/b;->a()Lcom/iab/omid/library/giphy/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/b/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iab/omid/library/giphy/walking/a;->p()Lcom/iab/omid/library/giphy/walking/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/walking/a;->c()V

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/giphy/b/e;->d:Lz3/d;

    invoke-virtual {v0}, Lz3/d;->a()V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-static {}, Lcom/iab/omid/library/giphy/walking/a;->p()Lcom/iab/omid/library/giphy/walking/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/walking/a;->h()V

    invoke-static {}, Lcom/iab/omid/library/giphy/b/b;->a()Lcom/iab/omid/library/giphy/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/b/b;->g()V

    iget-object v0, p0, Lcom/iab/omid/library/giphy/b/e;->d:Lz3/d;

    invoke-virtual {v0}, Lz3/d;->c()V

    return-void
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/iab/omid/library/giphy/b/e;->a:F

    return v0
.end method
