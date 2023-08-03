.class public abstract Lcom/iab/omid/library/giphy/publisher/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/giphy/publisher/a$a;
    }
.end annotation


# instance fields
.field private a:La4/b;

.field private b:Lcom/iab/omid/library/giphy/adsession/a;

.field private c:Lcom/iab/omid/library/giphy/adsession/video/b;

.field private d:Lcom/iab/omid/library/giphy/publisher/a$a;

.field private e:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/publisher/a;->u()V

    new-instance v0, La4/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La4/b;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/iab/omid/library/giphy/publisher/a;->a:La4/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(F)V
    .locals 2

    invoke-static {}, Lcom/iab/omid/library/giphy/b/d;->a()Lcom/iab/omid/library/giphy/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/publisher/a;->t()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/iab/omid/library/giphy/b/d;->c(Landroid/webkit/WebView;F)V

    return-void
.end method

.method c(Landroid/webkit/WebView;)V
    .locals 1

    new-instance v0, La4/b;

    invoke-direct {v0, p1}, La4/b;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/iab/omid/library/giphy/publisher/a;->a:La4/b;

    return-void
.end method

.method public d(Lcom/iab/omid/library/giphy/adsession/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/giphy/publisher/a;->b:Lcom/iab/omid/library/giphy/adsession/a;

    return-void
.end method

.method public e(Lcom/iab/omid/library/giphy/adsession/c;)V
    .locals 2

    invoke-static {}, Lcom/iab/omid/library/giphy/b/d;->a()Lcom/iab/omid/library/giphy/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/publisher/a;->t()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iab/omid/library/giphy/adsession/c;->e()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/iab/omid/library/giphy/b/d;->i(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method public f(Lcom/iab/omid/library/giphy/adsession/ErrorType;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/iab/omid/library/giphy/b/d;->a()Lcom/iab/omid/library/giphy/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/publisher/a;->t()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/iab/omid/library/giphy/b/d;->d(Landroid/webkit/WebView;Lcom/iab/omid/library/giphy/adsession/ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public g(Lcom/iab/omid/library/giphy/adsession/g;Lcom/iab/omid/library/giphy/adsession/d;)V
    .locals 5

    invoke-virtual {p1}, Lcom/iab/omid/library/giphy/adsession/g;->e()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "environment"

    const-string v2, "app"

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/giphy/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/giphy/adsession/d;->c()Lcom/iab/omid/library/giphy/adsession/AdSessionContextType;

    move-result-object v1

    const-string v3, "adSessionType"

    invoke-static {v0, v3, v1}, Lcom/iab/omid/library/giphy/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/giphy/d/a;->d()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "deviceInfo"

    invoke-static {v0, v3, v1}, Lcom/iab/omid/library/giphy/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "clid"

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "vlid"

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "supports"

    invoke-static {v0, v3, v1}, Lcom/iab/omid/library/giphy/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/iab/omid/library/giphy/adsession/d;->f()Lcom/iab/omid/library/giphy/adsession/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iab/omid/library/giphy/adsession/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "partnerName"

    invoke-static {v1, v4, v3}, Lcom/iab/omid/library/giphy/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/giphy/adsession/d;->f()Lcom/iab/omid/library/giphy/adsession/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iab/omid/library/giphy/adsession/e;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "partnerVersion"

    invoke-static {v1, v4, v3}, Lcom/iab/omid/library/giphy/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "omidNativeInfo"

    invoke-static {v0, v3, v1}, Lcom/iab/omid/library/giphy/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "libraryVersion"

    const-string v4, "1.2.13-Giphy"

    invoke-static {v1, v3, v4}, Lcom/iab/omid/library/giphy/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/giphy/b/c;->a()Lcom/iab/omid/library/giphy/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iab/omid/library/giphy/b/c;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appId"

    invoke-static {v1, v4, v3}, Lcom/iab/omid/library/giphy/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/giphy/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/giphy/adsession/d;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/iab/omid/library/giphy/adsession/d;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "customReferenceData"

    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/giphy/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/iab/omid/library/giphy/adsession/d;->g()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iab/omid/library/giphy/adsession/f;

    invoke-virtual {v2}, Lcom/iab/omid/library/giphy/adsession/f;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/iab/omid/library/giphy/adsession/f;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/iab/omid/library/giphy/d/b;->f(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/iab/omid/library/giphy/b/d;->a()Lcom/iab/omid/library/giphy/b/d;

    move-result-object p2

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/publisher/a;->t()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {p2, v2, p1, v0, v1}, Lcom/iab/omid/library/giphy/b/d;->f(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public h(Lcom/iab/omid/library/giphy/adsession/video/b;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/giphy/publisher/a;->c:Lcom/iab/omid/library/giphy/adsession/video/b;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/iab/omid/library/giphy/b/d;->a()Lcom/iab/omid/library/giphy/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/publisher/a;->t()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/iab/omid/library/giphy/b/d;->e(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public j(Ljava/lang/String;D)V
    .locals 3

    iget-wide v0, p0, Lcom/iab/omid/library/giphy/publisher/a;->e:D

    cmpl-double v2, p2, v0

    if-lez v2, :cond_0

    sget-object p2, Lcom/iab/omid/library/giphy/publisher/a$a;->b:Lcom/iab/omid/library/giphy/publisher/a$a;

    iput-object p2, p0, Lcom/iab/omid/library/giphy/publisher/a;->d:Lcom/iab/omid/library/giphy/publisher/a$a;

    invoke-static {}, Lcom/iab/omid/library/giphy/b/d;->a()Lcom/iab/omid/library/giphy/b/d;

    move-result-object p2

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/publisher/a;->t()Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/iab/omid/library/giphy/b/d;->n(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/iab/omid/library/giphy/b/d;->a()Lcom/iab/omid/library/giphy/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/publisher/a;->t()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/iab/omid/library/giphy/b/d;->e(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public l(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/publisher/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "foregrounded"

    goto :goto_0

    :cond_0
    const-string p1, "backgrounded"

    :goto_0
    invoke-static {}, Lcom/iab/omid/library/giphy/b/d;->a()Lcom/iab/omid/library/giphy/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/publisher/a;->t()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/iab/omid/library/giphy/b/d;->o(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/publisher/a;->a:La4/b;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public n(Ljava/lang/String;D)V
    .locals 3

    iget-wide v0, p0, Lcom/iab/omid/library/giphy/publisher/a;->e:D

    cmpl-double v2, p2, v0

    if-lez v2, :cond_0

    iget-object p2, p0, Lcom/iab/omid/library/giphy/publisher/a;->d:Lcom/iab/omid/library/giphy/publisher/a$a;

    sget-object p3, Lcom/iab/omid/library/giphy/publisher/a$a;->c:Lcom/iab/omid/library/giphy/publisher/a$a;

    if-eq p2, p3, :cond_0

    iput-object p3, p0, Lcom/iab/omid/library/giphy/publisher/a;->d:Lcom/iab/omid/library/giphy/publisher/a$a;

    invoke-static {}, Lcom/iab/omid/library/giphy/b/d;->a()Lcom/iab/omid/library/giphy/b/d;

    move-result-object p2

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/publisher/a;->t()Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/iab/omid/library/giphy/b/d;->n(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public o()Lcom/iab/omid/library/giphy/adsession/a;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/publisher/a;->b:Lcom/iab/omid/library/giphy/adsession/a;

    return-object v0
.end method

.method public p()Lcom/iab/omid/library/giphy/adsession/video/b;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/publisher/a;->c:Lcom/iab/omid/library/giphy/adsession/video/b;

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/publisher/a;->a:La4/b;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()V
    .locals 2

    invoke-static {}, Lcom/iab/omid/library/giphy/b/d;->a()Lcom/iab/omid/library/giphy/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/publisher/a;->t()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/giphy/b/d;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method public s()V
    .locals 2

    invoke-static {}, Lcom/iab/omid/library/giphy/b/d;->a()Lcom/iab/omid/library/giphy/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/publisher/a;->t()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/giphy/b/d;->l(Landroid/webkit/WebView;)V

    return-void
.end method

.method public t()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/publisher/a;->a:La4/b;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public u()V
    .locals 2

    invoke-static {}, Lcom/iab/omid/library/giphy/d/d;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/iab/omid/library/giphy/publisher/a;->e:D

    sget-object v0, Lcom/iab/omid/library/giphy/publisher/a$a;->a:Lcom/iab/omid/library/giphy/publisher/a$a;

    iput-object v0, p0, Lcom/iab/omid/library/giphy/publisher/a;->d:Lcom/iab/omid/library/giphy/publisher/a$a;

    return-void
.end method
