.class public final Lcom/iab/omid/library/giphy/adsession/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/iab/omid/library/giphy/adsession/g;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/giphy/adsession/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/giphy/adsession/a;->a:Lcom/iab/omid/library/giphy/adsession/g;

    return-void
.end method

.method public static a(Lcom/iab/omid/library/giphy/adsession/b;)Lcom/iab/omid/library/giphy/adsession/a;
    .locals 2

    move-object v0, p0

    check-cast v0, Lcom/iab/omid/library/giphy/adsession/g;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Lcom/iab/omid/library/giphy/d/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iab/omid/library/giphy/d/e;->i(Lcom/iab/omid/library/giphy/adsession/g;)V

    invoke-static {v0}, Lcom/iab/omid/library/giphy/d/e;->g(Lcom/iab/omid/library/giphy/adsession/g;)V

    new-instance p0, Lcom/iab/omid/library/giphy/adsession/a;

    invoke-direct {p0, v0}, Lcom/iab/omid/library/giphy/adsession/a;-><init>(Lcom/iab/omid/library/giphy/adsession/g;)V

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/adsession/g;->f()Lcom/iab/omid/library/giphy/publisher/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/giphy/publisher/a;->d(Lcom/iab/omid/library/giphy/adsession/a;)V

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/a;->a:Lcom/iab/omid/library/giphy/adsession/g;

    invoke-static {v0}, Lcom/iab/omid/library/giphy/d/e;->g(Lcom/iab/omid/library/giphy/adsession/g;)V

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/a;->a:Lcom/iab/omid/library/giphy/adsession/g;

    invoke-static {v0}, Lcom/iab/omid/library/giphy/d/e;->k(Lcom/iab/omid/library/giphy/adsession/g;)V

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/a;->a:Lcom/iab/omid/library/giphy/adsession/g;

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/adsession/g;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/a;->a:Lcom/iab/omid/library/giphy/adsession/g;

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/adsession/g;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/a;->a:Lcom/iab/omid/library/giphy/adsession/g;

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/adsession/g;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/a;->a:Lcom/iab/omid/library/giphy/adsession/g;

    invoke-virtual {v0}, Lcom/iab/omid/library/giphy/adsession/g;->m()V

    :cond_1
    return-void
.end method
