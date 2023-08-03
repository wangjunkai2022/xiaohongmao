.class public Lcom/iab/omid/library/giphy/publisher/c;
.super Lcom/iab/omid/library/giphy/publisher/a;


# instance fields
.field private f:Landroid/webkit/WebView;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iab/omid/library/giphy/adsession/f;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/giphy/adsession/f;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/iab/omid/library/giphy/publisher/a;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/giphy/publisher/c;->g:Ljava/util/List;

    iput-object p2, p0, Lcom/iab/omid/library/giphy/publisher/c;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic v(Lcom/iab/omid/library/giphy/publisher/c;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/iab/omid/library/giphy/publisher/c;->f:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/iab/omid/library/giphy/publisher/a;->a()V

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/publisher/c;->w()V

    return-void
.end method

.method public m()V
    .locals 4

    invoke-super {p0}, Lcom/iab/omid/library/giphy/publisher/a;->m()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/iab/omid/library/giphy/publisher/c$a;

    invoke-direct {v1, p0}, Lcom/iab/omid/library/giphy/publisher/c$a;-><init>(Lcom/iab/omid/library/giphy/publisher/c;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iab/omid/library/giphy/publisher/c;->f:Landroid/webkit/WebView;

    return-void
.end method

.method w()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/iab/omid/library/giphy/b/c;->a()Lcom/iab/omid/library/giphy/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/giphy/b/c;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iab/omid/library/giphy/publisher/c;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/iab/omid/library/giphy/publisher/c;->f:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/iab/omid/library/giphy/publisher/a;->c(Landroid/webkit/WebView;)V

    invoke-static {}, Lcom/iab/omid/library/giphy/b/d;->a()Lcom/iab/omid/library/giphy/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/iab/omid/library/giphy/publisher/c;->f:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/iab/omid/library/giphy/publisher/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/giphy/b/d;->k(Landroid/webkit/WebView;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/iab/omid/library/giphy/publisher/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/giphy/adsession/f;

    invoke-virtual {v1}, Lcom/iab/omid/library/giphy/adsession/f;->d()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iab/omid/library/giphy/b/d;->a()Lcom/iab/omid/library/giphy/b/d;

    move-result-object v2

    iget-object v3, p0, Lcom/iab/omid/library/giphy/publisher/c;->f:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, v1}, Lcom/iab/omid/library/giphy/b/d;->m(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
