.class public Lcom/auth0/jwt/c;
.super Ljava/lang/Object;
.source "JWT.java"


# instance fields
.field private final a:Lcom/auth0/jwt/impl/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/auth0/jwt/impl/d;

    invoke-direct {v0}, Lcom/auth0/jwt/impl/d;-><init>()V

    iput-object v0, p0, Lcom/auth0/jwt/c;->a:Lcom/auth0/jwt/impl/d;

    return-void
.end method

.method public static a()Lcom/auth0/jwt/d$b;
    .locals 1

    invoke-static {}, Lcom/auth0/jwt/d;->b()Lcom/auth0/jwt/d$b;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    new-instance v0, Lcom/auth0/jwt/e;

    invoke-direct {v0, p0}, Lcom/auth0/jwt/e;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Lcom/auth0/jwt/algorithms/a;)Lcom/auth0/jwt/interfaces/k;
    .locals 0

    invoke-static {p0}, Lcom/auth0/jwt/f;->l(Lcom/auth0/jwt/algorithms/a;)Lcom/auth0/jwt/interfaces/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    new-instance v0, Lcom/auth0/jwt/e;

    iget-object v1, p0, Lcom/auth0/jwt/c;->a:Lcom/auth0/jwt/impl/d;

    invoke-direct {v0, v1, p1}, Lcom/auth0/jwt/e;-><init>(Lcom/auth0/jwt/impl/d;Ljava/lang/String;)V

    return-object v0
.end method
