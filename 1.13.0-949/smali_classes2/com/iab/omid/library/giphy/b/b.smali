.class public Lcom/iab/omid/library/giphy/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/giphy/b/b$b;
    }
.end annotation


# static fields
.field private static f:Lcom/iab/omid/library/giphy/b/b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Z

.field private d:Z

.field private e:Lcom/iab/omid/library/giphy/b/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iab/omid/library/giphy/b/b;

    invoke-direct {v0}, Lcom/iab/omid/library/giphy/b/b;-><init>()V

    sput-object v0, Lcom/iab/omid/library/giphy/b/b;->f:Lcom/iab/omid/library/giphy/b/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/iab/omid/library/giphy/b/b;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/giphy/b/b;->f:Lcom/iab/omid/library/giphy/b/b;

    return-object v0
.end method

.method static synthetic d(Lcom/iab/omid/library/giphy/b/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iab/omid/library/giphy/b/b;->e(Z)V

    return-void
.end method

.method private e(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/giphy/b/b;->d:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/iab/omid/library/giphy/b/b;->d:Z

    iget-boolean p1, p0, Lcom/iab/omid/library/giphy/b/b;->c:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/iab/omid/library/giphy/b/b;->k()V

    iget-object p1, p0, Lcom/iab/omid/library/giphy/b/b;->e:Lcom/iab/omid/library/giphy/b/b$b;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/iab/omid/library/giphy/b/b;->h()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/iab/omid/library/giphy/b/b$b;->a(Z)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    new-instance v0, Lcom/iab/omid/library/giphy/b/b$a;

    invoke-direct {v0, p0}, Lcom/iab/omid/library/giphy/b/b$a;-><init>(Lcom/iab/omid/library/giphy/b/b;)V

    iput-object v0, p0, Lcom/iab/omid/library/giphy/b/b;->b:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iab/omid/library/giphy/b/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iab/omid/library/giphy/b/b;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/giphy/b/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iab/omid/library/giphy/b/b;->b:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iab/omid/library/giphy/b/b;->b:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    iget-boolean v0, p0, Lcom/iab/omid/library/giphy/b/b;->d:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/iab/omid/library/giphy/b/a;->a()Lcom/iab/omid/library/giphy/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/giphy/b/a;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iab/omid/library/giphy/adsession/g;

    invoke-virtual {v2}, Lcom/iab/omid/library/giphy/adsession/g;->f()Lcom/iab/omid/library/giphy/publisher/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/iab/omid/library/giphy/publisher/a;->l(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build La/f0;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/iab/omid/library/giphy/b/b;->a:Landroid/content/Context;

    return-void
.end method

.method public c(Lcom/iab/omid/library/giphy/b/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/giphy/b/b;->e:Lcom/iab/omid/library/giphy/b/b$b;

    return-void
.end method

.method public f()V
    .locals 1

    invoke-direct {p0}, Lcom/iab/omid/library/giphy/b/b;->i()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/giphy/b/b;->c:Z

    invoke-direct {p0}, Lcom/iab/omid/library/giphy/b/b;->k()V

    return-void
.end method

.method public g()V
    .locals 1

    invoke-direct {p0}, Lcom/iab/omid/library/giphy/b/b;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/giphy/b/b;->c:Z

    iput-boolean v0, p0, Lcom/iab/omid/library/giphy/b/b;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iab/omid/library/giphy/b/b;->e:Lcom/iab/omid/library/giphy/b/b$b;

    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/giphy/b/b;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
