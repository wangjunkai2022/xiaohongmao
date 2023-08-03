.class Lcom/auth0/jwt/algorithms/c$a;
.super Ljava/lang/Object;
.source "ECDSAAlgorithm.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/jwt/algorithms/c;->K(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/interfaces/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/security/interfaces/ECPublicKey;

.field final synthetic b:Ljava/security/interfaces/ECPrivateKey;


# direct methods
.method constructor <init>(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/jwt/algorithms/c$a;->a:Ljava/security/interfaces/ECPublicKey;

    iput-object p2, p0, Lcom/auth0/jwt/algorithms/c$a;->b:Ljava/security/interfaces/ECPrivateKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/security/PrivateKey;
    .locals 1

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/c$a;->d()Ljava/security/interfaces/ECPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/auth0/jwt/algorithms/c$a;->e(Ljava/lang/String;)Ljava/security/interfaces/ECPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/security/interfaces/ECPrivateKey;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/algorithms/c$a;->b:Ljava/security/interfaces/ECPrivateKey;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/security/interfaces/ECPublicKey;
    .locals 0

    iget-object p1, p0, Lcom/auth0/jwt/algorithms/c$a;->a:Ljava/security/interfaces/ECPublicKey;

    return-object p1
.end method
