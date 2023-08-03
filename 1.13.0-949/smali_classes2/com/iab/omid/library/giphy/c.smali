.class public Lcom/iab/omid/library/giphy/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Application Context cannot be null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/giphy/d/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "1.2.13-Giphy"

    return-object v0
.end method

.method b(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iab/omid/library/giphy/c;->e(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iab/omid/library/giphy/c;->c(Z)V

    invoke-static {}, Lcom/iab/omid/library/giphy/b/e;->a()Lcom/iab/omid/library/giphy/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/giphy/b/e;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/giphy/b/b;->a()Lcom/iab/omid/library/giphy/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/giphy/b/b;->b(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/iab/omid/library/giphy/d/b;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/giphy/b/c;->a()Lcom/iab/omid/library/giphy/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/giphy/b/c;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iab/omid/library/giphy/c;->a:Z

    return-void
.end method

.method d(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/giphy/c;->a:Z

    return v0
.end method
