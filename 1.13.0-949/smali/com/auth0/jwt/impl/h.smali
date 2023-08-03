.class Lcom/auth0/jwt/impl/h;
.super Ljava/lang/Object;
.source "PayloadImpl.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/i;
.implements Ljava/io/Serializable;


# static fields
.field private static final j:J = 0x17060743682c9687L


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Date;

.field private final e:Ljava/util/Date;

.field private final f:Ljava/util/Date;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/e;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/fasterxml/jackson/databind/ObjectReader;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;Lcom/fasterxml/jackson/databind/ObjectReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/e;",
            ">;",
            "Lcom/fasterxml/jackson/databind/ObjectReader;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/auth0/jwt/impl/h;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/auth0/jwt/impl/h;->b:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 4
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/auth0/jwt/impl/h;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/auth0/jwt/impl/h;->d:Ljava/util/Date;

    .line 6
    iput-object p5, p0, Lcom/auth0/jwt/impl/h;->e:Ljava/util/Date;

    .line 7
    iput-object p6, p0, Lcom/auth0/jwt/impl/h;->f:Ljava/util/Date;

    .line 8
    iput-object p7, p0, Lcom/auth0/jwt/impl/h;->g:Ljava/lang/String;

    if-eqz p8, :cond_1

    .line 9
    invoke-static {p8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/auth0/jwt/impl/h;->h:Ljava/util/Map;

    .line 10
    iput-object p9, p0, Lcom/auth0/jwt/impl/h;->i:Lcom/fasterxml/jackson/databind/ObjectReader;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/impl/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/impl/h;->d:Ljava/util/Date;

    return-object v0
.end method

.method public c()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/impl/h;->f:Ljava/util/Date;

    return-object v0
.end method

.method d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/jwt/impl/h;->h:Ljava/util/Map;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/impl/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/impl/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/impl/h;->e:Ljava/util/Date;

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/auth0/jwt/interfaces/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/auth0/jwt/impl/h;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/auth0/jwt/impl/h;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v3, p0, Lcom/auth0/jwt/impl/h;->h:Ljava/util/Map;

    iget-object v4, p0, Lcom/auth0/jwt/impl/h;->i:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-static {v2, v3, v4}, Lcom/auth0/jwt/impl/e;->l(Ljava/lang/String;Ljava/util/Map;Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/auth0/jwt/interfaces/a;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/jwt/impl/h;->c:Ljava/util/List;

    return-object v0
.end method

.method public l(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/a;
    .locals 2

    iget-object v0, p0, Lcom/auth0/jwt/impl/h;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/auth0/jwt/impl/h;->i:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-static {p1, v0, v1}, Lcom/auth0/jwt/impl/e;->l(Ljava/lang/String;Ljava/util/Map;Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/auth0/jwt/interfaces/a;

    move-result-object p1

    return-object p1
.end method
