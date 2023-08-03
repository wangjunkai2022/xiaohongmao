.class Lcom/auth0/jwt/algorithms/f$a;
.super Ljava/lang/Object;
.source "RSAAlgorithm.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/jwt/algorithms/f;->H(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/interfaces/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/security/interfaces/RSAPublicKey;

.field final synthetic b:Ljava/security/interfaces/RSAPrivateKey;


# direct methods
.method constructor <init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/jwt/algorithms/f$a;->a:Ljava/security/interfaces/RSAPublicKey;

    iput-object p2, p0, Lcom/auth0/jwt/algorithms/f$a;->b:Ljava/security/interfaces/RSAPrivateKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/security/PrivateKey;
    .locals 1

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/f$a;->d()Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/auth0/jwt/algorithms/f$a;->e(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/security/interfaces/RSAPrivateKey;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/algorithms/f$a;->b:Ljava/security/interfaces/RSAPrivateKey;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 0

    iget-object p1, p0, Lcom/auth0/jwt/algorithms/f$a;->a:Ljava/security/interfaces/RSAPublicKey;

    return-object p1
.end method
