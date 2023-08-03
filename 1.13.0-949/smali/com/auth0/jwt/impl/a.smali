.class Lcom/auth0/jwt/impl/a;
.super Ljava/lang/Object;
.source "BasicHeader.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/e;
.implements Ljava/io/Serializable;


# static fields
.field private static final g:J = -0x40a8950ae592fca7L


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/fasterxml/jackson/databind/ObjectReader;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/fasterxml/jackson/databind/ObjectReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    iput-object p1, p0, Lcom/auth0/jwt/impl/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/auth0/jwt/impl/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/auth0/jwt/impl/a;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/auth0/jwt/impl/a;->d:Ljava/lang/String;

    if-nez p5, :cond_0

    .line 6
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/jwt/impl/a;->e:Ljava/util/Map;

    .line 7
    iput-object p6, p0, Lcom/auth0/jwt/impl/a;->f:Lcom/fasterxml/jackson/databind/ObjectReader;

    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/auth0/jwt/impl/a;->e:Ljava/util/Map;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/impl/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/impl/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/impl/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/impl/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/a;
    .locals 2

    iget-object v0, p0, Lcom/auth0/jwt/impl/a;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/auth0/jwt/impl/a;->f:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-static {p1, v0, v1}, Lcom/auth0/jwt/impl/e;->l(Ljava/lang/String;Ljava/util/Map;Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/auth0/jwt/interfaces/a;

    move-result-object p1

    return-object p1
.end method
