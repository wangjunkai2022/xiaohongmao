.class Lcom/auth0/jwt/impl/c$a;
.super Lcom/fasterxml/jackson/core/type/b;
.source "HeaderDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/jwt/impl/c;->C0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/auth0/jwt/impl/a;
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
        "Lcom/fasterxml/jackson/databind/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/auth0/jwt/impl/c;


# direct methods
.method constructor <init>(Lcom/auth0/jwt/impl/c;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/jwt/impl/c$a;->b:Lcom/auth0/jwt/impl/c;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/b;-><init>()V

    return-void
.end method
