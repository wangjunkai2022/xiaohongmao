.class public interface abstract Lcom/auth0/jwt/interfaces/i;
.super Ljava/lang/Object;
.source "Payload.java"


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/util/Date;
.end method

.method public abstract c()Ljava/util/Date;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIssuer()Ljava/lang/String;
.end method

.method public abstract getNotBefore()Ljava/util/Date;
.end method

.method public abstract h()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/auth0/jwt/interfaces/a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract k()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract l(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/a;
.end method
