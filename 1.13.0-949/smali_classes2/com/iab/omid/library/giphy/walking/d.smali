.class public Lcom/iab/omid/library/giphy/walking/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iab/omid/library/giphy/walking/a/b$b;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private final b:Lcom/iab/omid/library/giphy/walking/a/c;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/giphy/walking/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/giphy/walking/d;->b:Lcom/iab/omid/library/giphy/walking/a/c;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation build La/u0;
    .end annotation

    iput-object p1, p0, Lcom/iab/omid/library/giphy/walking/d;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1
    .annotation build La/u0;
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/giphy/walking/d;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/giphy/walking/d;->b:Lcom/iab/omid/library/giphy/walking/a/c;

    new-instance v1, Lcom/iab/omid/library/giphy/walking/a/d;

    invoke-direct {v1, p0}, Lcom/iab/omid/library/giphy/walking/a/d;-><init>(Lcom/iab/omid/library/giphy/walking/a/b$b;)V

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/giphy/walking/a/c;->c(Lcom/iab/omid/library/giphy/walking/a/b;)V

    return-void
.end method

.method public d(Lorg/json/JSONObject;Ljava/util/HashSet;D)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;D)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/giphy/walking/d;->b:Lcom/iab/omid/library/giphy/walking/a/c;

    new-instance v7, Lcom/iab/omid/library/giphy/walking/a/f;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/iab/omid/library/giphy/walking/a/f;-><init>(Lcom/iab/omid/library/giphy/walking/a/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;D)V

    invoke-virtual {v0, v7}, Lcom/iab/omid/library/giphy/walking/a/c;->c(Lcom/iab/omid/library/giphy/walking/a/b;)V

    return-void
.end method

.method public e(Lorg/json/JSONObject;Ljava/util/HashSet;D)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;D)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/giphy/walking/d;->b:Lcom/iab/omid/library/giphy/walking/a/c;

    new-instance v7, Lcom/iab/omid/library/giphy/walking/a/e;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/iab/omid/library/giphy/walking/a/e;-><init>(Lcom/iab/omid/library/giphy/walking/a/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;D)V

    invoke-virtual {v0, v7}, Lcom/iab/omid/library/giphy/walking/a/c;->c(Lcom/iab/omid/library/giphy/walking/a/b;)V

    return-void
.end method
