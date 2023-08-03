.class public Lcom/iab/omid/library/giphy/adsession/g;
.super Lcom/iab/omid/library/giphy/adsession/b;


# instance fields
.field private final a:Lcom/iab/omid/library/giphy/adsession/d;

.field private final b:Lcom/iab/omid/library/giphy/adsession/c;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La4/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:La4/a;

.field private e:Lcom/iab/omid/library/giphy/publisher/a;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method constructor <init>(Lcom/iab/omid/library/giphy/adsession/c;Lcom/iab/omid/library/giphy/adsession/d;)V
    .locals 2

    invoke-direct {p0}, Lcom/iab/omid/library/giphy/adsession/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->f:Z

    iput-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->g:Z

    iput-object p1, p0, Lcom/iab/omid/library/giphy/adsession/g;->b:Lcom/iab/omid/library/giphy/adsession/c;

    iput-object p2, p0, Lcom/iab/omid/library/giphy/adsession/g;->a:Lcom/iab/omid/library/giphy/adsession/d;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iab/omid/library/giphy/adsession/g;->p(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/giphy/adsession/d;->c()Lcom/iab/omid/library/giphy/adsession/AdSessionContextType;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/giphy/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/giphy/adsession/AdSessionContextType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/iab/omid/library/giphy/publisher/b;

    invoke-virtual {p2}, Lcom/iab/omid/library/giphy/adsession/d;->h()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/iab/omid/library/giphy/publisher/b;-><init>(Landroid/webkit/WebView;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/iab/omid/library/giphy/publisher/c;

    invoke-virtual {p2}, Lcom/iab/omid/library/giphy/adsession/d;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iab/omid/library/giphy/adsession/d;->e()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/iab/omid/library/giphy/publisher/c;-><init>(Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->e:Lcom/iab/omid/library/giphy/publisher/a;

    iget-object p2, p0, Lcom/iab/omid/library/giphy/adsession/g;->e:Lcom/iab/omid/library/giphy/publisher/a;

    invoke-virtual {p2}, Lcom/iab/omid/library/giphy/publisher/a;->a()V

    invoke-static {}, Lcom/iab/omid/library/giphy/b/a;->a()Lcom/iab/omid/library/giphy/b/a;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/iab/omid/library/giphy/b/a;->b(Lcom/iab/omid/library/giphy/adsession/g;)V

    iget-object p2, p0, Lcom/iab/omid/library/giphy/adsession/g;->e:Lcom/iab/omid/library/giphy/publisher/a;

    invoke-virtual {p2, p1}, Lcom/iab/omid/library/giphy/publisher/a;->e(Lcom/iab/omid/library/giphy/adsession/c;)V

    return-void
.end method

.method private k(Landroid/view/View;)La4/a;
    .locals 3

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La4/a;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private n(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FriendlyObstruction is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private p(Landroid/view/View;)V
    .locals 1

    new-instance v0, La4/a;

    invoke-direct {v0, p1}, La4/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->d:La4/a;

    return-void
.end method

.method private q(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/iab/omid/library/giphy/b/a;->a()Lcom/iab/omid/library/giphy/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/b/a;->c()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/giphy/adsession/g;

    if-eq v1, p0, :cond_0

    invoke-virtual {v1}, Lcom/iab/omid/library/giphy/adsession/g;->o()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v1, v1, Lcom/iab/omid/library/giphy/adsession/g;->d:La4/a;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private w()V
    .locals 2

    iget-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impression event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/iab/omid/library/giphy/adsession/g;->n(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/iab/omid/library/giphy/adsession/g;->k(Landroid/view/View;)La4/a;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->c:Ljava/util/List;

    new-instance v1, La4/a;

    invoke-direct {v1, p1}, La4/a;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public c(Lcom/iab/omid/library/giphy/adsession/ErrorType;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->g:Z

    if-nez v0, :cond_0

    const-string v0, "Error type is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/giphy/d/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Message is null"

    invoke-static {p2, v0}, Lcom/iab/omid/library/giphy/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/adsession/g;->f()Lcom/iab/omid/library/giphy/publisher/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iab/omid/library/giphy/publisher/a;->f(Lcom/iab/omid/library/giphy/adsession/ErrorType;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AdSession is finished"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->d:La4/a;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/adsession/g;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->g:Z

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/adsession/g;->f()Lcom/iab/omid/library/giphy/publisher/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/publisher/a;->r()V

    invoke-static {}, Lcom/iab/omid/library/giphy/b/a;->a()Lcom/iab/omid/library/giphy/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/giphy/b/a;->f(Lcom/iab/omid/library/giphy/adsession/g;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/adsession/g;->f()Lcom/iab/omid/library/giphy/publisher/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/publisher/a;->m()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->e:Lcom/iab/omid/library/giphy/publisher/a;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/iab/omid/library/giphy/publisher/a;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->e:Lcom/iab/omid/library/giphy/publisher/a;

    return-object v0
.end method

.method public g(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AdView is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/giphy/d/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/adsession/g;->o()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/iab/omid/library/giphy/adsession/g;->p(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/adsession/g;->f()Lcom/iab/omid/library/giphy/publisher/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/publisher/a;->u()V

    invoke-direct {p0, p1}, Lcom/iab/omid/library/giphy/adsession/g;->q(Landroid/view/View;)V

    return-void
.end method

.method public h()V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public i(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/iab/omid/library/giphy/adsession/g;->n(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/iab/omid/library/giphy/adsession/g;->k(Landroid/view/View;)La4/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public j()V
    .locals 2

    iget-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->f:Z

    invoke-static {}, Lcom/iab/omid/library/giphy/b/a;->a()Lcom/iab/omid/library/giphy/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/giphy/b/a;->d(Lcom/iab/omid/library/giphy/adsession/g;)V

    invoke-static {}, Lcom/iab/omid/library/giphy/b/e;->a()Lcom/iab/omid/library/giphy/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/b/e;->e()F

    move-result v0

    iget-object v1, p0, Lcom/iab/omid/library/giphy/adsession/g;->e:Lcom/iab/omid/library/giphy/publisher/a;

    invoke-virtual {v1, v0}, Lcom/iab/omid/library/giphy/publisher/a;->b(F)V

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->e:Lcom/iab/omid/library/giphy/publisher/a;

    iget-object v1, p0, Lcom/iab/omid/library/giphy/adsession/g;->a:Lcom/iab/omid/library/giphy/adsession/d;

    invoke-virtual {v0, p0, v1}, Lcom/iab/omid/library/giphy/publisher/a;->g(Lcom/iab/omid/library/giphy/adsession/g;Lcom/iab/omid/library/giphy/adsession/d;)V

    return-void
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "La4/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->c:Ljava/util/List;

    return-object v0
.end method

.method m()V
    .locals 1

    invoke-direct {p0}, Lcom/iab/omid/library/giphy/adsession/g;->w()V

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/adsession/g;->f()Lcom/iab/omid/library/giphy/publisher/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/publisher/a;->s()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->i:Z

    return-void
.end method

.method public o()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->d:La4/a;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->f:Z

    return v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->g:Z

    return v0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->b:Lcom/iab/omid/library/giphy/adsession/c;

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/adsession/c;->c()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/g;->b:Lcom/iab/omid/library/giphy/adsession/c;

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/adsession/c;->d()Z

    move-result v0

    return v0
.end method
