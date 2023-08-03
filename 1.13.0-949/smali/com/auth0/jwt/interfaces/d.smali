.class public interface abstract Lcom/auth0/jwt/interfaces/d;
.super Ljava/lang/Object;
.source "ECDSAKeyProvider.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/auth0/jwt/interfaces/h<",
        "Ljava/security/interfaces/ECPublicKey;",
        "Ljava/security/interfaces/ECPrivateKey;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract synthetic a()Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract synthetic b(Ljava/lang/String;)Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract synthetic c()Ljava/lang/String;
.end method
