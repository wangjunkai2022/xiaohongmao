.class Lcom/auth0/jwt/impl/e$a;
.super Lcom/fasterxml/jackson/core/type/b;
.source "JsonNodeClaim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/jwt/impl/e;->asMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/type/b<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/auth0/jwt/impl/e;


# direct methods
.method constructor <init>(Lcom/auth0/jwt/impl/e;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/jwt/impl/e$a;->b:Lcom/auth0/jwt/impl/e;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/b;-><init>()V

    return-void
.end method
