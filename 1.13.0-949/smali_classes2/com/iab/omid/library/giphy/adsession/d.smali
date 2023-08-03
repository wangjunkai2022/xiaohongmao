.class public final Lcom/iab/omid/library/giphy/adsession/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/iab/omid/library/giphy/adsession/e;

.field private final b:Landroid/webkit/WebView;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iab/omid/library/giphy/adsession/f;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/iab/omid/library/giphy/adsession/AdSessionContextType;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/giphy/adsession/e;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iab/omid/library/giphy/adsession/e;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/giphy/adsession/f;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/giphy/adsession/d;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/iab/omid/library/giphy/adsession/d;->a:Lcom/iab/omid/library/giphy/adsession/e;

    iput-object p2, p0, Lcom/iab/omid/library/giphy/adsession/d;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/iab/omid/library/giphy/adsession/d;->d:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lcom/iab/omid/library/giphy/adsession/AdSessionContextType;->NATIVE:Lcom/iab/omid/library/giphy/adsession/AdSessionContextType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/iab/omid/library/giphy/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/giphy/adsession/AdSessionContextType;

    :goto_0
    iput-object p1, p0, Lcom/iab/omid/library/giphy/adsession/d;->f:Lcom/iab/omid/library/giphy/adsession/AdSessionContextType;

    iput-object p5, p0, Lcom/iab/omid/library/giphy/adsession/d;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/iab/omid/library/giphy/adsession/e;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/iab/omid/library/giphy/adsession/d;
    .locals 8

    const-string v0, "Partner is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/giphy/d/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WebView is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/giphy/d/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 v0, 0x100

    const-string v1, "CustomReferenceData is greater than 256 characters"

    invoke-static {p2, v0, v1}, Lcom/iab/omid/library/giphy/d/e;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/iab/omid/library/giphy/adsession/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/iab/omid/library/giphy/adsession/d;-><init>(Lcom/iab/omid/library/giphy/adsession/e;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Lcom/iab/omid/library/giphy/adsession/e;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/iab/omid/library/giphy/adsession/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iab/omid/library/giphy/adsession/e;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/giphy/adsession/f;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/iab/omid/library/giphy/adsession/d;"
        }
    .end annotation

    const-string v0, "Partner is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/giphy/d/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OM SDK JS script content is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/giphy/d/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VerificationScriptResources is null"

    invoke-static {p2, v0}, Lcom/iab/omid/library/giphy/d/e;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 v0, 0x100

    const-string v1, "CustomReferenceData is greater than 256 characters"

    invoke-static {p3, v0, v1}, Lcom/iab/omid/library/giphy/d/e;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/iab/omid/library/giphy/adsession/d;

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/iab/omid/library/giphy/adsession/d;-><init>(Lcom/iab/omid/library/giphy/adsession/e;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public c()Lcom/iab/omid/library/giphy/adsession/AdSessionContextType;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/d;->f:Lcom/iab/omid/library/giphy/adsession/AdSessionContextType;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/iab/omid/library/giphy/adsession/e;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/d;->a:Lcom/iab/omid/library/giphy/adsession/e;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/giphy/adsession/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/d;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/giphy/adsession/d;->b:Landroid/webkit/WebView;

    return-object v0
.end method
