.class public abstract Lcom/iab/omid/library/giphy/adsession/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lcom/iab/omid/library/giphy/adsession/c;Lcom/iab/omid/library/giphy/adsession/d;)Lcom/iab/omid/library/giphy/adsession/b;
    .locals 1

    invoke-static {}, Lcom/iab/omid/library/giphy/d/e;->a()V

    const-string v0, "AdSessionConfiguration is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/giphy/d/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdSessionContext is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/giphy/d/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/giphy/adsession/g;

    invoke-direct {v0, p0, p1}, Lcom/iab/omid/library/giphy/adsession/g;-><init>(Lcom/iab/omid/library/giphy/adsession/c;Lcom/iab/omid/library/giphy/adsession/d;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract c(Lcom/iab/omid/library/giphy/adsession/ErrorType;Ljava/lang/String;)V
.end method

.method public abstract d()V
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Lcom/iab/omid/library/giphy/publisher/a;
.end method

.method public abstract g(Landroid/view/View;)V
.end method

.method public abstract h()V
.end method

.method public abstract i(Landroid/view/View;)V
.end method

.method public abstract j()V
.end method
